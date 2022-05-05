package p081h.p119d.p120a.p124s.p126i.p128o;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import p081h.p119d.p120a.p121p.C5788a;
import p081h.p119d.p120a.p124s.AbstractC5806c;
import p081h.p119d.p120a.p124s.p126i.p128o.AbstractC5870a;
/* renamed from: h.d.a.s.i.o.e */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/o/e.class */
public class C5880e implements AbstractC5870a {

    /* renamed from: f */
    public static C5880e f14802f;

    /* renamed from: a */
    public final C5874c f14803a = new C5874c();

    /* renamed from: b */
    public final C5889j f14804b = new C5889j();

    /* renamed from: c */
    public final File f14805c;

    /* renamed from: d */
    public final int f14806d;

    /* renamed from: e */
    public C5788a f14807e;

    public C5880e(File file, int i) {
        this.f14805c = file;
        this.f14806d = i;
    }

    /* renamed from: a */
    public static AbstractC5870a m24186a(File file, int i) {
        C5880e eVar;
        synchronized (C5880e.class) {
            try {
                if (f14802f == null) {
                    f14802f = new C5880e(file, i);
                }
                eVar = f14802f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar;
    }

    /* renamed from: a */
    public final C5788a m24189a() throws IOException {
        C5788a aVar;
        synchronized (this) {
            if (this.f14807e == null) {
                this.f14807e = C5788a.m24422a(this.f14805c, 1, 1, this.f14806d);
            }
            aVar = this.f14807e;
        }
        return aVar;
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p128o.AbstractC5870a
    /* renamed from: a */
    public File mo24188a(AbstractC5806c cVar) {
        File file;
        try {
            C5788a.C5792d b = m24189a().m24416b(this.f14804b.m24167a(cVar));
            file = null;
            if (b != null) {
                file = b.m24384a(0);
            }
        } catch (IOException e) {
            Log.isLoggable("DiskLruCacheWrapper", 5);
            file = null;
        }
        return file;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p081h.p119d.p120a.p124s.p126i.p128o.AbstractC5870a
    /* renamed from: a */
    public void mo24187a(AbstractC5806c cVar, AbstractC5870a.AbstractC5872b bVar) {
        String a = this.f14804b.m24167a(cVar);
        this.f14803a.m24193a(cVar);
        try {
            try {
                C5788a.C5790b a2 = m24189a().m24420a(a);
                if (a2 != null) {
                    try {
                        if (bVar.mo24194a(a2.m24403a(0))) {
                            a2.m24399c();
                        }
                        a2.m24401b();
                    } catch (Throwable th) {
                        a2.m24401b();
                        throw th;
                    }
                }
            } catch (IOException e) {
                Log.isLoggable("DiskLruCacheWrapper", 5);
            }
        } finally {
            this.f14803a.m24192b(cVar);
        }
    }

    /* renamed from: b */
    public final void m24185b() {
        synchronized (this) {
            this.f14807e = null;
        }
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p128o.AbstractC5870a
    /* renamed from: b */
    public void mo24184b(AbstractC5806c cVar) {
        try {
            m24189a().m24410d(this.f14804b.m24167a(cVar));
        } catch (IOException e) {
            Log.isLoggable("DiskLruCacheWrapper", 5);
        }
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p128o.AbstractC5870a
    public void clear() {
        synchronized (this) {
            try {
                m24189a().m24418b();
                m24185b();
            } catch (IOException e) {
                Log.isLoggable("DiskLruCacheWrapper", 5);
            }
        }
    }
}
