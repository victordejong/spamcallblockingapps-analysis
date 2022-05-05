package com.aotter.net.volley.toolbox;

import android.os.SystemClock;
import com.aotter.net.volley.Cache;
import com.aotter.net.volley.VolleyLog;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/aotter/net/volley/toolbox/DiskBasedCache.class */
public class DiskBasedCache implements Cache {
    public static final int CACHE_MAGIC = 538247942;
    public static final int DEFAULT_DISK_USAGE_BYTES = 5242880;
    public static final float HYSTERESIS_FACTOR = 0.9f;
    public final Map<String, CacheHeader> mEntries;
    public final int mMaxCacheSizeInBytes;
    public final File mRootDirectory;
    public long mTotalSize;

    /* loaded from: classes-dex2jar.jar:com/aotter/net/volley/toolbox/DiskBasedCache$CacheHeader.class */
    public class CacheHeader {
        public String etag;
        public String key;
        public long lastModified;
        public Map<String, String> responseHeaders;
        public long serverDate;
        public long size;
        public long softTtl;
        public long ttl;

        public CacheHeader() {
        }

        public CacheHeader(String str, Cache.Entry entry) {
            this.key = str;
            this.size = entry.data.length;
            this.etag = entry.etag;
            this.serverDate = entry.serverDate;
            this.lastModified = entry.lastModified;
            this.ttl = entry.ttl;
            this.softTtl = entry.softTtl;
            this.responseHeaders = entry.responseHeaders;
        }

        public static CacheHeader readHeader(InputStream inputStream) {
            CacheHeader cacheHeader = new CacheHeader();
            if (DiskBasedCache.readInt(inputStream) == 538247942) {
                cacheHeader.key = DiskBasedCache.readString(inputStream);
                cacheHeader.etag = DiskBasedCache.readString(inputStream);
                if (cacheHeader.etag.equals("")) {
                    cacheHeader.etag = null;
                }
                cacheHeader.serverDate = DiskBasedCache.readLong(inputStream);
                cacheHeader.lastModified = DiskBasedCache.readLong(inputStream);
                cacheHeader.ttl = DiskBasedCache.readLong(inputStream);
                cacheHeader.softTtl = DiskBasedCache.readLong(inputStream);
                cacheHeader.responseHeaders = DiskBasedCache.readStringStringMap(inputStream);
                return cacheHeader;
            }
            throw new IOException();
        }

        public Cache.Entry toCacheEntry(byte[] bArr) {
            Cache.Entry entry = new Cache.Entry();
            entry.data = bArr;
            entry.etag = this.etag;
            entry.serverDate = this.serverDate;
            entry.lastModified = this.lastModified;
            entry.ttl = this.ttl;
            entry.softTtl = this.softTtl;
            entry.responseHeaders = this.responseHeaders;
            return entry;
        }

        public boolean writeHeader(OutputStream outputStream) {
            try {
                DiskBasedCache.writeInt(outputStream, DiskBasedCache.CACHE_MAGIC);
                DiskBasedCache.writeString(outputStream, this.key);
                DiskBasedCache.writeString(outputStream, this.etag == null ? "" : this.etag);
                DiskBasedCache.writeLong(outputStream, this.serverDate);
                DiskBasedCache.writeLong(outputStream, this.lastModified);
                DiskBasedCache.writeLong(outputStream, this.ttl);
                DiskBasedCache.writeLong(outputStream, this.softTtl);
                DiskBasedCache.writeStringStringMap(this.responseHeaders, outputStream);
                outputStream.flush();
                return true;
            } catch (IOException e) {
                VolleyLog.m36309d("%s", e.toString());
                return false;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/aotter/net/volley/toolbox/DiskBasedCache$CountingInputStream.class */
    public class CountingInputStream extends FilterInputStream {
        public int bytesRead;

        public CountingInputStream(InputStream inputStream) {
            super(inputStream);
            this.bytesRead = 0;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() {
            int read = super.read();
            if (read != -1) {
                this.bytesRead++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            int read = super.read(bArr, i, i2);
            if (read != -1) {
                this.bytesRead += read;
            }
            return read;
        }
    }

    public DiskBasedCache(File file) {
        this(file, DEFAULT_DISK_USAGE_BYTES);
    }

    public DiskBasedCache(File file, int i) {
        this.mEntries = new LinkedHashMap(16, 0.75f, true);
        this.mTotalSize = 0L;
        this.mRootDirectory = file;
        this.mMaxCacheSizeInBytes = i;
    }

    private String getFilenameForKey(String str) {
        int length = str.length() / 2;
        int hashCode = str.substring(0, length).hashCode();
        return String.valueOf(hashCode) + String.valueOf(str.substring(length).hashCode());
    }

    private void pruneIfNeeded(int i) {
        int i2;
        long j = i;
        if (this.mTotalSize + j >= this.mMaxCacheSizeInBytes) {
            if (VolleyLog.DEBUG) {
                VolleyLog.m36306v("Pruning old cache entries.", new Object[0]);
            }
            long j2 = this.mTotalSize;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            Iterator<Map.Entry<String, CacheHeader>> it = this.mEntries.entrySet().iterator();
            int i3 = 0;
            while (true) {
                i2 = i3;
                if (!it.hasNext()) {
                    break;
                }
                CacheHeader value = it.next().getValue();
                if (getFileForKey(value.key).delete()) {
                    this.mTotalSize -= value.size;
                } else {
                    String str = value.key;
                    VolleyLog.m36309d("Could not delete cache entry for key=%s, filename=%s", str, getFilenameForKey(str));
                }
                it.remove();
                i3++;
                if (((float) (this.mTotalSize + j)) < this.mMaxCacheSizeInBytes * 0.9f) {
                    i2 = i3;
                    break;
                }
            }
            if (VolleyLog.DEBUG) {
                VolleyLog.m36306v("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.mTotalSize - j2), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
            }
        }
    }

    private void putEntry(String str, CacheHeader cacheHeader) {
        if (!this.mEntries.containsKey(str)) {
            this.mTotalSize += cacheHeader.size;
        } else {
            this.mTotalSize += cacheHeader.size - this.mEntries.get(str).size;
        }
        this.mEntries.put(str, cacheHeader);
    }

    public static int read(InputStream inputStream) {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    public static int readInt(InputStream inputStream) {
        return (read(inputStream) << 24) | (read(inputStream) << 0) | 0 | (read(inputStream) << 8) | (read(inputStream) << 16);
    }

    public static long readLong(InputStream inputStream) {
        return ((read(inputStream) & 255) << 0) | 0 | ((read(inputStream) & 255) << 8) | ((read(inputStream) & 255) << 16) | ((read(inputStream) & 255) << 24) | ((read(inputStream) & 255) << 32) | ((read(inputStream) & 255) << 40) | ((read(inputStream) & 255) << 48) | ((255 & read(inputStream)) << 56);
    }

    public static String readString(InputStream inputStream) {
        return new String(streamToBytes(inputStream, (int) readLong(inputStream)), "UTF-8");
    }

    public static Map<String, String> readStringStringMap(InputStream inputStream) {
        int readInt = readInt(inputStream);
        Map<String, String> emptyMap = readInt == 0 ? Collections.emptyMap() : new HashMap<>(readInt);
        for (int i = 0; i < readInt; i++) {
            emptyMap.put(readString(inputStream).intern(), readString(inputStream).intern());
        }
        return emptyMap;
    }

    private void removeEntry(String str) {
        CacheHeader cacheHeader = this.mEntries.get(str);
        if (cacheHeader != null) {
            this.mTotalSize -= cacheHeader.size;
            this.mEntries.remove(str);
        }
    }

    public static byte[] streamToBytes(InputStream inputStream, int i) {
        int read;
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i && (read = inputStream.read(bArr, i2, i - i2)) != -1) {
            i2 += read;
        }
        if (i2 == i) {
            return bArr;
        }
        throw new IOException("Expected " + i + " bytes, read " + i2 + " bytes");
    }

    public static void writeInt(OutputStream outputStream, int i) {
        outputStream.write((i >> 0) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    public static void writeLong(OutputStream outputStream, long j) {
        outputStream.write((byte) (j >>> 0));
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    public static void writeString(OutputStream outputStream, String str) {
        byte[] bytes = str.getBytes("UTF-8");
        writeLong(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    public static void writeStringStringMap(Map<String, String> map, OutputStream outputStream) {
        if (map != null) {
            writeInt(outputStream, map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                writeString(outputStream, entry.getKey());
                writeString(outputStream, entry.getValue());
            }
            return;
        }
        writeInt(outputStream, 0);
    }

    @Override // com.aotter.net.volley.Cache
    public void clear() {
        synchronized (this) {
            File[] listFiles = this.mRootDirectory.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
            this.mEntries.clear();
            this.mTotalSize = 0L;
            VolleyLog.m36309d("Cache cleared.", new Object[0]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x00c4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.aotter.net.volley.Cache
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.aotter.net.volley.Cache.Entry get(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.aotter.net.volley.toolbox.DiskBasedCache.get(java.lang.String):com.aotter.net.volley.Cache$Entry");
    }

    public File getFileForKey(String str) {
        return new File(this.mRootDirectory, getFilenameForKey(str));
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x00fb -> B:52:0x00eb). Please submit an issue!!! */
    @Override // com.aotter.net.volley.Cache
    public void initialize() {
        Throwable th;
        synchronized (this) {
            if (!this.mRootDirectory.exists()) {
                if (!this.mRootDirectory.mkdirs()) {
                    VolleyLog.m36308e("Unable to create cache dir %s", this.mRootDirectory.getAbsolutePath());
                }
                return;
            }
            File[] listFiles = this.mRootDirectory.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    BufferedInputStream bufferedInputStream = null;
                    BufferedInputStream bufferedInputStream2 = null;
                    try {
                        try {
                            bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (IOException e) {
                    }
                    try {
                        CacheHeader readHeader = CacheHeader.readHeader(bufferedInputStream);
                        readHeader.size = file.length();
                        putEntry(readHeader.key, readHeader);
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e2) {
                        }
                    } catch (IOException e3) {
                        if (file != null) {
                            file.delete();
                        }
                        if (bufferedInputStream != null) {
                            bufferedInputStream.close();
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedInputStream2 = bufferedInputStream;
                        if (bufferedInputStream2 != null) {
                            try {
                                bufferedInputStream2.close();
                            } catch (IOException e4) {
                            }
                        }
                        throw th;
                    }
                }
            }
        }
    }

    @Override // com.aotter.net.volley.Cache
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

    @Override // com.aotter.net.volley.Cache
    public void put(String str, Cache.Entry entry) {
        synchronized (this) {
            pruneIfNeeded(entry.data.length);
            File fileForKey = getFileForKey(str);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(fileForKey));
                CacheHeader cacheHeader = new CacheHeader(str, entry);
                if (cacheHeader.writeHeader(bufferedOutputStream)) {
                    bufferedOutputStream.write(entry.data);
                    bufferedOutputStream.close();
                    putEntry(str, cacheHeader);
                } else {
                    bufferedOutputStream.close();
                    VolleyLog.m36309d("Failed to write header for %s", fileForKey.getAbsolutePath());
                    throw new IOException();
                }
            } catch (IOException e) {
                if (!fileForKey.delete()) {
                    VolleyLog.m36309d("Could not clean up file %s", fileForKey.getAbsolutePath());
                }
            }
        }
    }

    @Override // com.aotter.net.volley.Cache
    public void remove(String str) {
        synchronized (this) {
            boolean delete = getFileForKey(str).delete();
            removeEntry(str);
            if (!delete) {
                VolleyLog.m36309d("Could not delete cache entry for key=%s, filename=%s", str, getFilenameForKey(str));
            }
        }
    }
}
