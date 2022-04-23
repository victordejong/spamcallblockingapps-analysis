package com.bumptech.glide.load.engine.b;

import android.util.Log;
import com.bumptech.glide.a.a;
import com.bumptech.glide.load.engine.b.a;
import com.bumptech.glide.load.engine.b.c;
import com.bumptech.glide.load.f;
import java.io.File;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/e.class */
public final class e implements a {

    /* renamed from: b  reason: collision with root package name */
    private final File f7485b;

    /* renamed from: c  reason: collision with root package name */
    private final long f7486c;
    private a e;

    /* renamed from: d  reason: collision with root package name */
    private final c f7487d = new c();

    /* renamed from: a  reason: collision with root package name */
    private final j f7484a = new j();

    @Deprecated
    protected e(File file, long j) {
        this.f7485b = file;
        this.f7486c = j;
    }

    private a a() throws IOException {
        a aVar;
        synchronized (this) {
            if (this.e == null) {
                this.e = a.a(this.f7485b, this.f7486c);
            }
            aVar = this.e;
        }
        return aVar;
    }

    public static a a(File file, long j) {
        return new e(file, j);
    }

    @Override // com.bumptech.glide.load.engine.b.a
    public final File a(f fVar) {
        File file;
        String a2 = this.f7484a.a(fVar);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            StringBuilder sb = new StringBuilder("Get: Obtained: ");
            sb.append(a2);
            sb.append(" for for Key: ");
            sb.append(fVar);
        }
        try {
            a.d a3 = a().a(a2);
            file = null;
            if (a3 != null) {
                file = a3.f7205a[0];
            }
        } catch (IOException e) {
            file = null;
            if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e);
                file = null;
            }
        }
        return file;
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.bumptech.glide.load.engine.b.a
    public final void a(f fVar, a.b bVar) {
        c.a aVar;
        String a2 = this.f7484a.a(fVar);
        c cVar = this.f7487d;
        synchronized (cVar) {
            c.a aVar2 = cVar.f7474a.get(a2);
            aVar = aVar2;
            if (aVar2 == null) {
                aVar = cVar.f7475b.a();
                cVar.f7474a.put(a2, aVar);
            }
            aVar.f7477b++;
        }
        aVar.f7476a.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                StringBuilder sb = new StringBuilder("Put: Obtained: ");
                sb.append(a2);
                sb.append(" for for Key: ");
                sb.append(fVar);
            }
            try {
                com.bumptech.glide.a.a a3 = a();
                if (a3.a(a2) == null) {
                    a.b b2 = a3.b(a2);
                    if (b2 != null) {
                        try {
                            if (bVar.a(b2.a())) {
                                com.bumptech.glide.a.a.this.a(b2, true);
                                b2.f7199c = true;
                            }
                            b2.c();
                        } catch (Throwable th) {
                            b2.c();
                            throw th;
                        }
                    } else {
                        throw new IllegalStateException("Had two simultaneous puts for: ".concat(String.valueOf(a2)));
                    }
                }
            } catch (IOException e) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e);
                }
            }
        } finally {
            this.f7487d.a(a2);
        }
    }
}
