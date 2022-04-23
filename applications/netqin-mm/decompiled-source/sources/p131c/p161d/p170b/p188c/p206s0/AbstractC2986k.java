package p131c.p161d.p170b.p188c.p206s0;

import android.os.Handler;
import com.google.android.exoplayer2.Format;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p206s0.AbstractC2986k;
import p131c.p161d.p170b.p188c.p208u0.C3015c;
/* renamed from: c.d.b.c.s0.k */
/* loaded from: classes-dex2jar.jar:c/d/b/c/s0/k.class */
public interface AbstractC2986k {

    /* renamed from: c.d.b.c.s0.k$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/s0/k$a.class */
    public static final class C2987a {

        /* renamed from: a */
        public final Handler f10739a;

        /* renamed from: b */
        public final AbstractC2986k f10740b;

        public C2987a(Handler handler, AbstractC2986k kVar) {
            Handler handler2;
            if (kVar != null) {
                C2877e.m28737a(handler);
                handler2 = handler;
            } else {
                handler2 = null;
            }
            this.f10739a = handler2;
            this.f10740b = kVar;
        }

        /* renamed from: a */
        public void m28290a(final int i) {
            Handler handler = this.f10739a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c.d.b.c.s0.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2986k.C2987a.this.m28285b(i);
                    }
                });
            }
        }

        /* renamed from: a */
        public void m28289a(final int i, final long j, final long j2) {
            Handler handler = this.f10739a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c.d.b.c.s0.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2986k.C2987a.this.m28284b(i, j, j2);
                    }
                });
            }
        }

        /* renamed from: a */
        public void m28288a(final C3015c cVar) {
            cVar.m28137a();
            Handler handler = this.f10739a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c.d.b.c.s0.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2986k.C2987a.this.m28280c(cVar);
                    }
                });
            }
        }

        /* renamed from: a */
        public void m28287a(final Format format) {
            Handler handler = this.f10739a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c.d.b.c.s0.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2986k.C2987a.this.m28282b(format);
                    }
                });
            }
        }

        /* renamed from: a */
        public void m28286a(final String str, final long j, final long j2) {
            Handler handler = this.f10739a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c.d.b.c.s0.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2986k.C2987a.this.m28281b(str, j, j2);
                    }
                });
            }
        }

        /* renamed from: b */
        public /* synthetic */ void m28285b(int i) {
            AbstractC2986k kVar = this.f10740b;
            C2885h0.m28670a(kVar);
            kVar.m28296a(i);
        }

        /* renamed from: b */
        public /* synthetic */ void m28284b(int i, long j, long j2) {
            AbstractC2986k kVar = this.f10740b;
            C2885h0.m28670a(kVar);
            kVar.m28293b(i, j, j2);
        }

        /* renamed from: b */
        public void m28283b(final C3015c cVar) {
            Handler handler = this.f10739a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: c.d.b.c.s0.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC2986k.C2987a.this.m28279d(cVar);
                    }
                });
            }
        }

        /* renamed from: b */
        public /* synthetic */ void m28282b(Format format) {
            AbstractC2986k kVar = this.f10740b;
            C2885h0.m28670a(kVar);
            kVar.m28294a(format);
        }

        /* renamed from: b */
        public /* synthetic */ void m28281b(String str, long j, long j2) {
            AbstractC2986k kVar = this.f10740b;
            C2885h0.m28670a(kVar);
            kVar.m28291b(str, j, j2);
        }

        /* renamed from: c */
        public /* synthetic */ void m28280c(C3015c cVar) {
            cVar.m28137a();
            AbstractC2986k kVar = this.f10740b;
            C2885h0.m28670a(kVar);
            kVar.m28295a(cVar);
        }

        /* renamed from: d */
        public /* synthetic */ void m28279d(C3015c cVar) {
            AbstractC2986k kVar = this.f10740b;
            C2885h0.m28670a(kVar);
            kVar.m28292b(cVar);
        }
    }

    /* renamed from: a */
    void m28296a(int i);

    /* renamed from: a */
    void m28295a(C3015c cVar);

    /* renamed from: a */
    void m28294a(Format format);

    /* renamed from: b */
    void m28293b(int i, long j, long j2);

    /* renamed from: b */
    void m28292b(C3015c cVar);

    /* renamed from: b */
    void m28291b(String str, long j, long j2);
}
