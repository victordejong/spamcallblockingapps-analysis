package com.bumptech.glide.load.b.b;

import android.util.Log;
import com.bumptech.glide.a.a;
import com.bumptech.glide.load.b.b.a;
import com.bumptech.glide.load.b.b.c;
import com.bumptech.glide.load.c;
import java.io.File;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/b/e.class */
public final class e implements a {

    /* renamed from: a  reason: collision with root package name */
    private static e f3513a = null;

    /* renamed from: b  reason: collision with root package name */
    private final c f3514b = new c();
    private final j c = new j();
    private final File d;
    private final int e;
    private a f;

    private e(File file, int i) {
        this.d = file;
        this.e = i;
    }

    private a a() {
        a aVar;
        synchronized (this) {
            if (this.f == null) {
                this.f = a.a(this.d, this.e);
            }
            aVar = this.f;
        }
        return aVar;
    }

    public static a a(File file, int i) {
        e eVar;
        synchronized (e.class) {
            try {
                if (f3513a == null) {
                    f3513a = new e(file, i);
                }
                eVar = f3513a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar;
    }

    @Override // com.bumptech.glide.load.b.b.a
    public final File a(c cVar) {
        File file;
        try {
            a.c a2 = a().a(this.c.a(cVar));
            file = null;
            if (a2 != null) {
                file = a2.f3365a[0];
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

    @Override // com.bumptech.glide.load.b.b.a
    public final void a(c cVar, a.b bVar) {
        c.a aVar;
        String a2 = this.c.a(cVar);
        c cVar2 = this.f3514b;
        synchronized (cVar2) {
            c.a aVar2 = cVar2.f3506a.get(cVar);
            aVar = aVar2;
            if (aVar2 == null) {
                aVar = cVar2.f3507b.a();
                cVar2.f3506a.put(cVar, aVar);
            }
            aVar.f3509b++;
        }
        aVar.f3508a.lock();
        try {
            a.C0090a b2 = a().b(a2);
            if (b2 != null) {
                try {
                    if (bVar.a(b2.a())) {
                        com.bumptech.glide.a.a.this.a(b2, true);
                        b2.c = true;
                    }
                } finally {
                    b2.c();
                }
            }
        } catch (IOException e) {
            if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e);
            }
        } finally {
            this.f3514b.a(cVar);
        }
    }

    @Override // com.bumptech.glide.load.b.b.a
    public final void b(com.bumptech.glide.load.c cVar) {
        try {
            a().c(this.c.a(cVar));
        } catch (IOException e) {
            if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                Log.w("DiskLruCacheWrapper", "Unable to delete from disk cache", e);
            }
        }
    }
}
