package zendesk.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import p081h.p428k.p429a.C10670a;
import p081h.p451q.p453b.C10845a;
import p081h.p451q.p455d.C10858a;
import p081h.p451q.p455d.C10860b;
import p081h.p451q.p455d.C10862d;
import p645m.AbstractC15173d;
import p645m.AbstractC15192r;
import p645m.AbstractC15193s;
import p645m.C15181l;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskDiskLruCache.class */
public class ZendeskDiskLruCache implements BaseStorage {
    public final File directory;
    public final long maxSize;
    public final Serializer serializer;
    public C10670a storage;

    public ZendeskDiskLruCache(File file, Serializer serializer, int i) {
        this.directory = file;
        this.maxSize = i;
        this.storage = openCache(this.directory, this.maxSize);
        this.serializer = serializer;
    }

    @Override // zendesk.core.BaseStorage
    public void clear() {
        C10670a aVar = this.storage;
        try {
            if (aVar != null) {
                try {
                    if (aVar.m10993c() == null || !this.storage.m10993c().exists() || !C10858a.m10398b(this.storage.m10993c().listFiles())) {
                        this.storage.close();
                    } else {
                        this.storage.m10996b();
                    }
                } catch (IOException e) {
                    C10845a.m10422a("DiskLruStorage", "Error clearing cache. Error: %s", e.getMessage());
                }
            }
        } finally {
            this.storage = openCache(this.directory, this.maxSize);
        }
    }

    public final void close(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
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
                C10670a.C10676e b = this.storage.m10994b(key(str));
                e = null;
                if (b != null) {
                    AbstractC15193s a = C15181l.m325a(b.m10959a(0));
                    long b2 = b.m10958b(0);
                    String string = getString(keyMediaType(str), 0);
                    e = (E) ResponseBody.create(C10862d.m10390b(string) ? MediaType.parse(string) : null, b2, C15181l.m318a(a));
                }
            } catch (IOException e2) {
                C10845a.m10420b("DiskLruStorage", "Unable to read from cache", e2, new Object[0]);
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [zendesk.core.ZendeskDiskLruCache] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String getString(java.lang.String r6, int r7) {
        /*
            Method dump skipped, instructions count: 183
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: zendesk.core.ZendeskDiskLruCache.getString(java.lang.String, int):java.lang.String");
    }

    public final String key(String str) {
        return C10860b.m10396a(str);
    }

    public final String keyMediaType(String str) {
        return key(String.format(Locale.US, "%s_content_type", str));
    }

    public final C10670a openCache(File file, long j) {
        C10670a aVar;
        try {
            aVar = C10670a.m11000a(file, 1, 1, j);
        } catch (IOException e) {
            aVar = null;
            C10845a.m10417d("DiskLruStorage", "Unable to open cache", new Object[0]);
        }
        return aVar;
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
        if (this.storage != null && !C10862d.m10389c(str2)) {
            putString(str, 0, str2);
        }
    }

    public final void putString(String str, int i, String str2) {
        try {
            write(str, i, C15181l.m325a(new ByteArrayInputStream(str2.getBytes("UTF-8"))));
        } catch (UnsupportedEncodingException e) {
            C10845a.m10420b("DiskLruStorage", "Unable to encode string", e, new Object[0]);
        }
    }

    @Override // zendesk.core.BaseStorage
    public void remove(@NonNull String str) {
    }

    public final void write(String str, int i, AbstractC15193s sVar) {
        Closeable closeable;
        Throwable th;
        AbstractC15192r rVar;
        IOException e;
        C10670a.C10673c a;
        Closeable closeable2 = null;
        closeable2 = null;
        r6 = null;
        Closeable closeable3 = null;
        closeable2 = null;
        try {
            synchronized (this.directory) {
                a = this.storage.m10998a(key(str));
            }
            if (a != null) {
                rVar = C15181l.m323a(a.m10978a(i));
                closeable = rVar;
                try {
                    try {
                        AbstractC15173d a2 = C15181l.m319a(rVar);
                        a2.mo311a(sVar);
                        a2.flush();
                        closeable2 = a2;
                        a.m10975b();
                        closeable2 = a2;
                    } catch (IOException e2) {
                        e = e2;
                        closeable3 = closeable2;
                        closeable = rVar;
                        C10845a.m10420b("DiskLruStorage", "Unable to cache data", e, new Object[0]);
                        close(closeable2);
                        close(rVar);
                        close(sVar);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    close(closeable3);
                    close(closeable);
                    close(sVar);
                    throw th;
                }
            } else {
                rVar = null;
            }
        } catch (IOException e3) {
            e = e3;
            rVar = null;
        } catch (Throwable th3) {
            th = th3;
            closeable = null;
            close(closeable3);
            close(closeable);
            close(sVar);
            throw th;
        }
        close(closeable2);
        close(rVar);
        close(sVar);
    }
}
