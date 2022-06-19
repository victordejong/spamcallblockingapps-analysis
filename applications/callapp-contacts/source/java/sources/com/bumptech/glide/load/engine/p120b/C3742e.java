package com.bumptech.glide.load.engine.p120b;

import android.util.Log;
import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.load.engine.p120b.AbstractC3731a;
import com.bumptech.glide.load.engine.p120b.C3735c;
import com.bumptech.glide.p108a.C3532a;
import java.io.File;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.engine.b.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/e.class */
public final class C3742e implements AbstractC3731a {

    /* renamed from: b */
    private final File f13930b;

    /* renamed from: c */
    private final long f13931c;

    /* renamed from: e */
    private C3532a f13933e;

    /* renamed from: d */
    private final C3735c f13932d = new C3735c();

    /* renamed from: a */
    private final C3752j f13929a = new C3752j();

    @Deprecated
    protected C3742e(File file, long j) {
        this.f13930b = file;
        this.f13931c = j;
    }

    /* renamed from: a */
    private C3532a m37436a() throws IOException {
        C3532a c3532a;
        synchronized (this) {
            if (this.f13933e == null) {
                this.f13933e = C3532a.m37781a(this.f13930b, this.f13931c);
            }
            c3532a = this.f13933e;
        }
        return c3532a;
    }

    /* renamed from: a */
    public static AbstractC3731a m37433a(File file, long j) {
        return new C3742e(file, j);
    }

    @Override // com.bumptech.glide.load.engine.p120b.AbstractC3731a
    /* renamed from: a */
    public final File mo37435a(AbstractC3818f abstractC3818f) {
        File file;
        String m37421a = this.f13929a.m37421a(abstractC3818f);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            StringBuilder sb = new StringBuilder("Get: Obtained: ");
            sb.append(m37421a);
            sb.append(" for for Key: ");
            sb.append(abstractC3818f);
        }
        try {
            C3532a.C3537d m37778a = m37436a().m37778a(m37421a);
            file = null;
            if (m37778a != null) {
                file = m37778a.f13466a[0];
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
    @Override // com.bumptech.glide.load.engine.p120b.AbstractC3731a
    /* renamed from: a */
    public final void mo37434a(AbstractC3818f abstractC3818f, AbstractC3731a.AbstractC3733b abstractC3733b) {
        C3735c.C3736a c3736a;
        String m37421a = this.f13929a.m37421a(abstractC3818f);
        C3735c c3735c = this.f13932d;
        synchronized (c3735c) {
            C3735c.C3736a c3736a2 = c3735c.f13919a.get(m37421a);
            c3736a = c3736a2;
            if (c3736a2 == null) {
                c3736a = c3735c.f13920b.m37438a();
                c3735c.f13919a.put(m37421a, c3736a);
            }
            c3736a.f13922b++;
        }
        c3736a.f13921a.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                StringBuilder sb = new StringBuilder("Put: Obtained: ");
                sb.append(m37421a);
                sb.append(" for for Key: ");
                sb.append(abstractC3818f);
            }
            try {
                C3532a m37436a = m37436a();
                if (m37436a.m37778a(m37421a) == null) {
                    C3532a.C3535b m37774b = m37436a.m37774b(m37421a);
                    if (m37774b == null) {
                        throw new IllegalStateException("Had two simultaneous puts for: ".concat(String.valueOf(m37421a)));
                    }
                    try {
                        if (abstractC3733b.mo37406a(m37774b.m37762a())) {
                            C3532a.this.m37785a(m37774b, true);
                            m37774b.f13456c = true;
                        }
                        m37774b.m37760c();
                    } catch (Throwable th) {
                        m37774b.m37760c();
                        throw th;
                    }
                }
            } catch (IOException e) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e);
                }
            }
        } finally {
            this.f13932d.m37439a(m37421a);
        }
    }
}
