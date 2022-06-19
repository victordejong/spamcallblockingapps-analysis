package com.android.volley.toolbox;

import android.os.SystemClock;
import android.text.TextUtils;
import com.android.volley.Cache;
import com.android.volley.Header;
import com.android.volley.VolleyLog;
import com.pubmatic.sdk.common.POBCommonConstants;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/DiskBasedCache.class */
public class DiskBasedCache implements Cache {
    private static final int CACHE_MAGIC = 538247942;
    private static final int DEFAULT_DISK_USAGE_BYTES = 5242880;
    static final float HYSTERESIS_FACTOR = 0.9f;
    private final Map<String, CacheHeader> mEntries;
    private final int mMaxCacheSizeInBytes;
    private final FileSupplier mRootDirectorySupplier;
    private long mTotalSize;

    /* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/DiskBasedCache$CacheHeader.class */
    public static class CacheHeader {
        final List<Header> allResponseHeaders;
        final String etag;
        final String key;
        final long lastModified;
        final long serverDate;
        long size;
        final long softTtl;
        final long ttl;

        CacheHeader(String str, Cache.Entry entry) {
            this(str, entry.etag, entry.serverDate, entry.lastModified, entry.ttl, entry.softTtl, getAllResponseHeaders(entry));
        }

        private CacheHeader(String str, String str2, long j, long j2, long j3, long j4, List<Header> list) {
            this.key = str;
            this.etag = "".equals(str2) ? null : str2;
            this.serverDate = j;
            this.lastModified = j2;
            this.ttl = j3;
            this.softTtl = j4;
            this.allResponseHeaders = list;
        }

        private static List<Header> getAllResponseHeaders(Cache.Entry entry) {
            return entry.allResponseHeaders != null ? entry.allResponseHeaders : HttpHeaderParser.toAllHeaderList(entry.responseHeaders);
        }

        static CacheHeader readHeader(CountingInputStream countingInputStream) throws IOException {
            if (DiskBasedCache.readInt(countingInputStream) == DiskBasedCache.CACHE_MAGIC) {
                return new CacheHeader(DiskBasedCache.readString(countingInputStream), DiskBasedCache.readString(countingInputStream), DiskBasedCache.readLong(countingInputStream), DiskBasedCache.readLong(countingInputStream), DiskBasedCache.readLong(countingInputStream), DiskBasedCache.readLong(countingInputStream), DiskBasedCache.readHeaderList(countingInputStream));
            }
            throw new IOException();
        }

        Cache.Entry toCacheEntry(byte[] bArr) {
            Cache.Entry entry = new Cache.Entry();
            entry.data = bArr;
            entry.etag = this.etag;
            entry.serverDate = this.serverDate;
            entry.lastModified = this.lastModified;
            entry.ttl = this.ttl;
            entry.softTtl = this.softTtl;
            entry.responseHeaders = HttpHeaderParser.toHeaderMap(this.allResponseHeaders);
            entry.allResponseHeaders = Collections.unmodifiableList(this.allResponseHeaders);
            return entry;
        }

        boolean writeHeader(OutputStream outputStream) {
            try {
                DiskBasedCache.writeInt(outputStream, DiskBasedCache.CACHE_MAGIC);
                DiskBasedCache.writeString(outputStream, this.key);
                String str = this.etag;
                String str2 = str;
                if (str == null) {
                    str2 = "";
                }
                DiskBasedCache.writeString(outputStream, str2);
                DiskBasedCache.writeLong(outputStream, this.serverDate);
                DiskBasedCache.writeLong(outputStream, this.lastModified);
                DiskBasedCache.writeLong(outputStream, this.ttl);
                DiskBasedCache.writeLong(outputStream, this.softTtl);
                DiskBasedCache.writeHeaderList(this.allResponseHeaders, outputStream);
                outputStream.flush();
                return true;
            } catch (IOException e) {
                VolleyLog.m1391d("%s", e.toString());
                return false;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/DiskBasedCache$CountingInputStream.class */
    public static class CountingInputStream extends FilterInputStream {
        private long bytesRead;
        private final long length;

        CountingInputStream(InputStream inputStream, long j) {
            super(inputStream);
            this.length = j;
        }

        long bytesRead() {
            return this.bytesRead;
        }

        long bytesRemaining() {
            return this.length - this.bytesRead;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int read = super.read();
            if (read != -1) {
                this.bytesRead++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int read = super.read(bArr, i, i2);
            if (read != -1) {
                this.bytesRead += read;
            }
            return read;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/DiskBasedCache$FileSupplier.class */
    public interface FileSupplier {
        File get();
    }

    public DiskBasedCache(FileSupplier fileSupplier) {
        this(fileSupplier, (int) DEFAULT_DISK_USAGE_BYTES);
    }

    public DiskBasedCache(FileSupplier fileSupplier, int i) {
        this.mEntries = new LinkedHashMap(16, 0.75f, true);
        this.mTotalSize = 0L;
        this.mRootDirectorySupplier = fileSupplier;
        this.mMaxCacheSizeInBytes = i;
    }

    public DiskBasedCache(File file) {
        this(file, (int) DEFAULT_DISK_USAGE_BYTES);
    }

    public DiskBasedCache(final File file, int i) {
        this.mEntries = new LinkedHashMap(16, 0.75f, true);
        this.mTotalSize = 0L;
        this.mRootDirectorySupplier = new FileSupplier() { // from class: com.android.volley.toolbox.DiskBasedCache.1
            @Override // com.android.volley.toolbox.DiskBasedCache.FileSupplier
            public File get() {
                return file;
            }
        };
        this.mMaxCacheSizeInBytes = i;
    }

    private String getFilenameForKey(String str) {
        int length = str.length() / 2;
        int hashCode = str.substring(0, length).hashCode();
        return String.valueOf(hashCode) + String.valueOf(str.substring(length).hashCode());
    }

    private void initializeIfRootDirectoryDeleted() {
        if (!this.mRootDirectorySupplier.get().exists()) {
            VolleyLog.m1391d("Re-initializing cache after external clearing.", new Object[0]);
            this.mEntries.clear();
            this.mTotalSize = 0L;
            initialize();
        }
    }

    private void pruneIfNeeded() {
        int i;
        if (this.mTotalSize < this.mMaxCacheSizeInBytes) {
            return;
        }
        if (VolleyLog.DEBUG) {
            VolleyLog.m1388v("Pruning old cache entries.", new Object[0]);
        }
        long j = this.mTotalSize;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Iterator<Map.Entry<String, CacheHeader>> it = this.mEntries.entrySet().iterator();
        int i2 = 0;
        do {
            i = i2;
            if (!it.hasNext()) {
                break;
            }
            CacheHeader value = it.next().getValue();
            if (getFileForKey(value.key).delete()) {
                this.mTotalSize -= value.size;
            } else {
                VolleyLog.m1391d("Could not delete cache entry for key=%s, filename=%s", value.key, getFilenameForKey(value.key));
            }
            it.remove();
            i = i2 + 1;
            i2 = i;
        } while (((float) this.mTotalSize) >= this.mMaxCacheSizeInBytes * HYSTERESIS_FACTOR);
        if (!VolleyLog.DEBUG) {
            return;
        }
        VolleyLog.m1388v("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.mTotalSize - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
    }

    private void putEntry(String str, CacheHeader cacheHeader) {
        if (!this.mEntries.containsKey(str)) {
            this.mTotalSize += cacheHeader.size;
        } else {
            this.mTotalSize += cacheHeader.size - this.mEntries.get(str).size;
        }
        this.mEntries.put(str, cacheHeader);
    }

    private static int read(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    static List<Header> readHeaderList(CountingInputStream countingInputStream) throws IOException {
        int readInt = readInt(countingInputStream);
        if (readInt < 0) {
            throw new IOException("readHeaderList size=" + readInt);
        }
        ArrayList emptyList = readInt == 0 ? Collections.emptyList() : new ArrayList();
        for (int i = 0; i < readInt; i++) {
            emptyList.add(new Header(readString(countingInputStream).intern(), readString(countingInputStream).intern()));
        }
        return emptyList;
    }

    static int readInt(InputStream inputStream) throws IOException {
        return (read(inputStream) << 24) | (read(inputStream) << 0) | 0 | (read(inputStream) << 8) | (read(inputStream) << 16);
    }

    static long readLong(InputStream inputStream) throws IOException {
        return ((read(inputStream) & 255) << 0) | 0 | ((read(inputStream) & 255) << 8) | ((read(inputStream) & 255) << 16) | ((read(inputStream) & 255) << 24) | ((read(inputStream) & 255) << 32) | ((read(inputStream) & 255) << 40) | ((read(inputStream) & 255) << 48) | ((255 & read(inputStream)) << 56);
    }

    static String readString(CountingInputStream countingInputStream) throws IOException {
        return new String(streamToBytes(countingInputStream, readLong(countingInputStream)), POBCommonConstants.URL_ENCODING);
    }

    private void removeEntry(String str) {
        CacheHeader remove = this.mEntries.remove(str);
        if (remove != null) {
            this.mTotalSize -= remove.size;
        }
    }

    static byte[] streamToBytes(CountingInputStream countingInputStream, long j) throws IOException {
        long bytesRemaining = countingInputStream.bytesRemaining();
        if (j >= 0 && j <= bytesRemaining) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(countingInputStream).readFully(bArr);
                return bArr;
            }
        }
        throw new IOException("streamToBytes length=" + j + ", maxLength=" + bytesRemaining);
    }

    static void writeHeaderList(List<Header> list, OutputStream outputStream) throws IOException {
        if (list == null) {
            writeInt(outputStream, 0);
            return;
        }
        writeInt(outputStream, list.size());
        for (Header header : list) {
            writeString(outputStream, header.getName());
            writeString(outputStream, header.getValue());
        }
    }

    static void writeInt(OutputStream outputStream, int i) throws IOException {
        outputStream.write((i >> 0) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    static void writeLong(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) (j >>> 0));
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    static void writeString(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes(POBCommonConstants.URL_ENCODING);
        writeLong(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    @Override // com.android.volley.Cache
    public void clear() {
        synchronized (this) {
            File[] listFiles = this.mRootDirectorySupplier.get().listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
            this.mEntries.clear();
            this.mTotalSize = 0L;
            VolleyLog.m1391d("Cache cleared.", new Object[0]);
        }
    }

    InputStream createInputStream(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }

    OutputStream createOutputStream(File file) throws FileNotFoundException {
        return new FileOutputStream(file);
    }

    @Override // com.android.volley.Cache
    public Cache.Entry get(String str) {
        synchronized (this) {
            CacheHeader cacheHeader = this.mEntries.get(str);
            if (cacheHeader == null) {
                return null;
            }
            File fileForKey = getFileForKey(str);
            try {
                CountingInputStream countingInputStream = new CountingInputStream(new BufferedInputStream(createInputStream(fileForKey)), fileForKey.length());
                try {
                    CacheHeader readHeader = CacheHeader.readHeader(countingInputStream);
                    if (TextUtils.equals(str, readHeader.key)) {
                        return cacheHeader.toCacheEntry(streamToBytes(countingInputStream, countingInputStream.bytesRemaining()));
                    }
                    VolleyLog.m1391d("%s: key=%s, found=%s", fileForKey.getAbsolutePath(), str, readHeader.key);
                    removeEntry(str);
                    return null;
                } finally {
                    countingInputStream.close();
                }
            } catch (IOException e) {
                VolleyLog.m1391d("%s: %s", fileForKey.getAbsolutePath(), e.toString());
                remove(str);
                return null;
            }
        }
    }

    public File getFileForKey(String str) {
        return new File(this.mRootDirectorySupplier.get(), getFilenameForKey(str));
    }

    @Override // com.android.volley.Cache
    public void initialize() {
        synchronized (this) {
            File file = this.mRootDirectorySupplier.get();
            if (!file.exists()) {
                if (!file.mkdirs()) {
                    VolleyLog.m1390e("Unable to create cache dir %s", file.getAbsolutePath());
                }
                return;
            }
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return;
            }
            for (File file2 : listFiles) {
                try {
                    long length = file2.length();
                    CountingInputStream countingInputStream = new CountingInputStream(new BufferedInputStream(createInputStream(file2)), length);
                    try {
                        CacheHeader readHeader = CacheHeader.readHeader(countingInputStream);
                        readHeader.size = length;
                        putEntry(readHeader.key, readHeader);
                        countingInputStream.close();
                    } catch (Throwable th) {
                        countingInputStream.close();
                        throw th;
                        break;
                    }
                } catch (IOException e) {
                    file2.delete();
                }
            }
        }
    }

    @Override // com.android.volley.Cache
    public void invalidate(String str, boolean z) {
        synchronized (this) {
            Cache.Entry entry = get(str);
            if (entry != null) {
                entry.softTtl = 0L;
                if (z) {
                    entry.ttl = 0L;
                }
                put(str, entry);
            }
        }
    }

    @Override // com.android.volley.Cache
    public void put(String str, Cache.Entry entry) {
        BufferedOutputStream bufferedOutputStream;
        CacheHeader cacheHeader;
        synchronized (this) {
            if (this.mTotalSize + entry.data.length <= this.mMaxCacheSizeInBytes || entry.data.length <= this.mMaxCacheSizeInBytes * HYSTERESIS_FACTOR) {
                File fileForKey = getFileForKey(str);
                try {
                    bufferedOutputStream = new BufferedOutputStream(createOutputStream(fileForKey));
                    cacheHeader = new CacheHeader(str, entry);
                } catch (IOException e) {
                    if (!fileForKey.delete()) {
                        VolleyLog.m1391d("Could not clean up file %s", fileForKey.getAbsolutePath());
                    }
                    initializeIfRootDirectoryDeleted();
                }
                if (!cacheHeader.writeHeader(bufferedOutputStream)) {
                    bufferedOutputStream.close();
                    VolleyLog.m1391d("Failed to write header for %s", fileForKey.getAbsolutePath());
                    throw new IOException();
                }
                bufferedOutputStream.write(entry.data);
                bufferedOutputStream.close();
                cacheHeader.size = fileForKey.length();
                putEntry(str, cacheHeader);
                pruneIfNeeded();
            }
        }
    }

    @Override // com.android.volley.Cache
    public void remove(String str) {
        synchronized (this) {
            boolean delete = getFileForKey(str).delete();
            removeEntry(str);
            if (!delete) {
                VolleyLog.m1391d("Could not delete cache entry for key=%s, filename=%s", str, getFilenameForKey(str));
            }
        }
    }
}
