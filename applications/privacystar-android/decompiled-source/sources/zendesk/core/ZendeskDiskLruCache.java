package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.jakewharton.disklrucache.DiskLruCache;
import com.zendesk.logger.Logger;
import com.zendesk.util.CollectionUtils;
import com.zendesk.util.DigestUtils;
import com.zendesk.util.StringUtils;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.BufferedSink;
import okio.Okio;
import okio.Sink;
import okio.Source;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskDiskLruCache.class */
public class ZendeskDiskLruCache implements BaseStorage {
    private static final int CACHE_INDEX = 0;
    private static final int ITEMS_PER_KEY = 1;
    private static final String LOG_TAG = "DiskLruStorage";
    private static final int VERSION_ONE = 1;
    private final File directory;
    private final long maxSize;
    private final Serializer serializer;
    private DiskLruCache storage;

    @VisibleForTesting
    ZendeskDiskLruCache(File file, long j, DiskLruCache diskLruCache, Serializer serializer) {
        this.directory = file;
        this.maxSize = j;
        this.storage = diskLruCache;
        this.serializer = serializer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskDiskLruCache(File file, Serializer serializer, int i) {
        this.directory = file;
        this.maxSize = i;
        this.storage = openCache(this.directory, this.maxSize);
        this.serializer = serializer;
    }

    private void close(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r5v0, types: [zendesk.core.ZendeskDiskLruCache] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String getString(java.lang.String r6, int r7) {
        /*
            Method dump skipped, instructions count: 183
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: zendesk.core.ZendeskDiskLruCache.getString(java.lang.String, int):java.lang.String");
    }

    private String key(String str) {
        return DigestUtils.sha1(str);
    }

    private String keyMediaType(String str) {
        return key(String.format(Locale.US, "%s_content_type", str));
    }

    private DiskLruCache openCache(File file, long j) {
        DiskLruCache diskLruCache;
        try {
            diskLruCache = DiskLruCache.open(file, 1, 1, j);
        } catch (IOException e) {
            diskLruCache = null;
            Logger.m289w(LOG_TAG, "Unable to open cache", new Object[0]);
        }
        return diskLruCache;
    }

    private void putString(String str, int i, String str2) {
        try {
            write(str, i, Okio.source(new ByteArrayInputStream(str2.getBytes("UTF-8"))));
        } catch (UnsupportedEncodingException e) {
            Logger.m290w(LOG_TAG, "Unable to encode string", e, new Object[0]);
        }
    }

    private void write(String str, int i, Source source) {
        Throwable th;
        IOException e;
        DiskLruCache.Editor edit;
        BufferedSink bufferedSink = null;
        Sink sink = null;
        Closeable closeable = null;
        try {
            try {
                synchronized (this.directory) {
                    edit = this.storage.edit(key(str));
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e2) {
            e = e2;
            sink = null;
            bufferedSink = null;
        } catch (Throwable th3) {
            th = th3;
            sink = null;
        }
        if (edit != null) {
            sink = Okio.sink(edit.newOutputStream(i));
            closeable = null;
            sink = sink;
            try {
                bufferedSink = Okio.buffer(sink);
            } catch (IOException e3) {
                e = e3;
                bufferedSink = null;
            }
            try {
                bufferedSink.writeAll(source);
                bufferedSink.flush();
                edit.commit();
            } catch (IOException e4) {
                e = e4;
                closeable = bufferedSink;
                sink = sink;
                Logger.m290w(LOG_TAG, "Unable to cache data", e, new Object[0]);
                close(bufferedSink);
                close(sink);
                close(source);
            } catch (Throwable th4) {
                th = th4;
                closeable = bufferedSink;
                close(closeable);
                close(sink);
                close(source);
                throw th;
            }
            close(bufferedSink);
            close(sink);
            close(source);
        }
        sink = null;
        close(bufferedSink);
        close(sink);
        close(source);
    }

    @Override // zendesk.core.BaseStorage
    public void clear() {
        if (this.storage != null) {
            try {
                try {
                    if (this.storage.getDirectory() == null || !this.storage.getDirectory().exists() || !CollectionUtils.isNotEmpty(this.storage.getDirectory().listFiles())) {
                        this.storage.close();
                    } else {
                        this.storage.delete();
                    }
                } catch (IOException e) {
                    Logger.m298d(LOG_TAG, "Error clearing cache. Error: %s", e.getMessage());
                }
            } finally {
                this.storage = openCache(this.directory, this.maxSize);
            }
        }
    }

    @Override // zendesk.core.BaseStorage
    @Nullable
    public <E> E get(@NonNull String str, @NonNull Class<E> cls) {
        E e;
        if (this.storage == null) {
            return null;
        }
        if (cls.equals(ResponseBody.class)) {
            try {
                DiskLruCache.Snapshot snapshot = this.storage.get(key(str));
                e = null;
                if (snapshot != null) {
                    Source source = Okio.source(snapshot.getInputStream(0));
                    long length = snapshot.getLength(0);
                    String string = getString(keyMediaType(str), 0);
                    e = (E) ResponseBody.create(StringUtils.hasLength(string) ? MediaType.parse(string) : null, length, Okio.buffer(source));
                }
            } catch (IOException e2) {
                Logger.m290w(LOG_TAG, "Unable to read from cache", e2, new Object[0]);
                e = null;
            }
        } else {
            e = (E) this.serializer.deserialize(getString(str, 0), cls);
        }
        return e;
    }

    @Override // zendesk.core.BaseStorage
    @Nullable
    public String get(@NonNull String str) {
        if (this.storage == null) {
            return null;
        }
        return getString(str, 0);
    }

    @Override // zendesk.core.BaseStorage
    public void put(@NonNull String str, @Nullable Object obj) {
        if (this.storage != null) {
            if (obj instanceof ResponseBody) {
                ResponseBody responseBody = (ResponseBody) obj;
                write(str, 0, responseBody.source());
                putString(keyMediaType(str), 0, responseBody.contentType().toString());
                return;
            }
            String str2 = null;
            if (obj != null) {
                str2 = this.serializer.serialize(obj);
            }
            put(str, str2);
        }
    }

    @Override // zendesk.core.BaseStorage
    public void put(@NonNull String str, @Nullable String str2) {
        if (this.storage != null && !StringUtils.isEmpty(str2)) {
            putString(str, 0, str2);
        }
    }

    @Override // zendesk.core.BaseStorage
    public void remove(@NonNull String str) {
    }
}
