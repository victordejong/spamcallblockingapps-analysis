package com.bumptech.glide.load.engine.p210y;

import android.util.Log;
import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.load.engine.p210y.AbstractC4114a;
import com.bumptech.glide.p206k.C3975a;
import java.io.File;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.engine.y.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/e.class */
public class C4123e implements AbstractC4114a {

    /* renamed from: b */
    private final File f12964b;

    /* renamed from: c */
    private final long f12965c;

    /* renamed from: e */
    private C3975a f12967e;

    /* renamed from: d */
    private final C4118c f12966d = new C4118c();

    /* renamed from: a */
    private final C4133j f12963a = new C4133j();

    @Deprecated
    protected C4123e(File file, long j) {
        this.f12964b = file;
        this.f12965c = j;
    }

    /* renamed from: c */
    public static AbstractC4114a m23218c(File file, long j) {
        return new C4123e(file, j);
    }

    /* renamed from: d */
    private C3975a m23217d() {
        C3975a c3975a;
        synchronized (this) {
            if (this.f12967e == null) {
                this.f12967e = C3975a.m23611Q(this.f12964b, 1, 1, this.f12965c);
            }
            c3975a = this.f12967e;
        }
        return c3975a;
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.bumptech.glide.load.engine.p210y.AbstractC4114a
    /* renamed from: a */
    public void mo23220a(AbstractC3999c abstractC3999c, AbstractC4114a.AbstractC4116b abstractC4116b) {
        C3975a m23217d;
        String m23197b = this.f12963a.m23197b(abstractC3999c);
        this.f12966d.m23225a(m23197b);
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Log.v("DiskLruCacheWrapper", "Put: Obtained: " + m23197b + " for for Key: " + abstractC3999c);
            }
            try {
                m23217d = m23217d();
            } catch (IOException e) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e);
                }
            }
            if (m23217d.m23613N(m23197b) != null) {
                return;
            }
            C3975a.C3978c m23616E = m23217d.m23616E(m23197b);
            if (m23616E == null) {
                throw new IllegalStateException("Had two simultaneous puts for: " + m23197b);
            }
            try {
                if (abstractC4116b.mo23226a(m23616E.m23587f(0))) {
                    m23616E.m23588e();
                }
                m23616E.m23591b();
            } catch (Throwable th) {
                m23616E.m23591b();
                throw th;
            }
        } finally {
            this.f12966d.m23224b(m23197b);
        }
    }

    @Override // com.bumptech.glide.load.engine.p210y.AbstractC4114a
    /* renamed from: b */
    public File mo23219b(AbstractC3999c abstractC3999c) {
        File file;
        String m23197b = this.f12963a.m23197b(abstractC3999c);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Log.v("DiskLruCacheWrapper", "Get: Obtained: " + m23197b + " for for Key: " + abstractC3999c);
        }
        try {
            C3975a.C3980e m23613N = m23217d().m23613N(m23197b);
            file = null;
            if (m23613N != null) {
                file = m23613N.m23572a(0);
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
}
