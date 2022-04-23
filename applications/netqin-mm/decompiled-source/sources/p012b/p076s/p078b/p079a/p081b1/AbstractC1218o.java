package p012b.p076s.p078b.p079a.p081b1;

import android.os.Handler;
import android.view.Surface;
import androidx.media2.exoplayer.external.Format;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p081b1.AbstractC1218o;
import p012b.p076s.p078b.p079a.p084q0.C1310c;
/* renamed from: b.s.b.a.b1.o */
/* loaded from: classes-dex2jar.jar:b/s/b/a/b1/o.class */
public interface AbstractC1218o {

    /* renamed from: b.s.b.a.b1.o$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/b1/o$a.class */
    public static final class C1219a {

        /* renamed from: a */
        public final Handler f4888a;

        /* renamed from: b */
        public final AbstractC1218o f4889b;

        public C1219a(Handler handler, AbstractC1218o oVar) {
            Handler handler2;
            if (oVar != null) {
                C1160a.m34522a(handler);
                handler2 = handler;
            } else {
                handler2 = null;
            }
            this.f4888a = handler2;
            this.f4889b = oVar;
        }

        /* renamed from: a */
        public final /* synthetic */ void m34210a(int i, int i2, int i3, float f) {
            this.f4889b.mo32190a(i, i2, i3, f);
        }

        /* renamed from: a */
        public void m34209a(final int i, final long j) {
            if (this.f4889b != null) {
                this.f4888a.post(new Runnable(this, i, j) { // from class: b.s.b.a.b1.k

                    /* renamed from: a */
                    public final AbstractC1218o.C1219a f4876a;

                    /* renamed from: b */
                    public final int f4877b;

                    /* renamed from: c */
                    public final long f4878c;

                    {
                        this.f4876a = this;
                        this.f4877b = i;
                        this.f4878c = j;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f4876a.m34203b(this.f4877b, this.f4878c);
                    }
                });
            }
        }

        /* renamed from: a */
        public final /* synthetic */ void m34208a(Surface surface) {
            this.f4889b.mo32188a(surface);
        }

        /* renamed from: a */
        public void m34207a(final Format format) {
            if (this.f4889b != null) {
                this.f4888a.post(new Runnable(this, format) { // from class: b.s.b.a.b1.j

                    /* renamed from: a */
                    public final AbstractC1218o.C1219a f4874a;

                    /* renamed from: b */
                    public final Format f4875b;

                    {
                        this.f4874a = this;
                        this.f4875b = format;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f4874a.m34201b(this.f4875b);
                    }
                });
            }
        }

        /* renamed from: a */
        public void m34206a(final C1310c cVar) {
            cVar.m33735a();
            if (this.f4889b != null) {
                this.f4888a.post(new Runnable(this, cVar) { // from class: b.s.b.a.b1.n

                    /* renamed from: a */
                    public final AbstractC1218o.C1219a f4886a;

                    /* renamed from: b */
                    public final C1310c f4887b;

                    {
                        this.f4886a = this;
                        this.f4887b = cVar;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f4886a.m34198c(this.f4887b);
                    }
                });
            }
        }

        /* renamed from: a */
        public void m34205a(final String str, final long j, final long j2) {
            if (this.f4889b != null) {
                this.f4888a.post(new Runnable(this, str, j, j2) { // from class: b.s.b.a.b1.i

                    /* renamed from: a */
                    public final AbstractC1218o.C1219a f4870a;

                    /* renamed from: b */
                    public final String f4871b;

                    /* renamed from: c */
                    public final long f4872c;

                    /* renamed from: d */
                    public final long f4873d;

                    {
                        this.f4870a = this;
                        this.f4871b = str;
                        this.f4872c = j;
                        this.f4873d = j2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f4870a.m34199b(this.f4871b, this.f4872c, this.f4873d);
                    }
                });
            }
        }

        /* renamed from: b */
        public void m34204b(final int i, final int i2, final int i3, final float f) {
            if (this.f4889b != null) {
                this.f4888a.post(new Runnable(this, i, i2, i3, f) { // from class: b.s.b.a.b1.l

                    /* renamed from: a */
                    public final AbstractC1218o.C1219a f4879a;

                    /* renamed from: b */
                    public final int f4880b;

                    /* renamed from: c */
                    public final int f4881c;

                    /* renamed from: d */
                    public final int f4882d;

                    /* renamed from: e */
                    public final float f4883e;

                    {
                        this.f4879a = this;
                        this.f4880b = i;
                        this.f4881c = i2;
                        this.f4882d = i3;
                        this.f4883e = f;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f4879a.m34210a(this.f4880b, this.f4881c, this.f4882d, this.f4883e);
                    }
                });
            }
        }

        /* renamed from: b */
        public final /* synthetic */ void m34203b(int i, long j) {
            this.f4889b.mo32189a(i, j);
        }

        /* renamed from: b */
        public void m34202b(final Surface surface) {
            if (this.f4889b != null) {
                this.f4888a.post(new Runnable(this, surface) { // from class: b.s.b.a.b1.m

                    /* renamed from: a */
                    public final AbstractC1218o.C1219a f4884a;

                    /* renamed from: b */
                    public final Surface f4885b;

                    {
                        this.f4884a = this;
                        this.f4885b = surface;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f4884a.m34208a(this.f4885b);
                    }
                });
            }
        }

        /* renamed from: b */
        public final /* synthetic */ void m34201b(Format format) {
            this.f4889b.mo32180b(format);
        }

        /* renamed from: b */
        public void m34200b(final C1310c cVar) {
            if (this.f4889b != null) {
                this.f4888a.post(new Runnable(this, cVar) { // from class: b.s.b.a.b1.h

                    /* renamed from: a */
                    public final AbstractC1218o.C1219a f4868a;

                    /* renamed from: b */
                    public final C1310c f4869b;

                    {
                        this.f4868a = this;
                        this.f4869b = cVar;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f4868a.m34197d(this.f4869b);
                    }
                });
            }
        }

        /* renamed from: b */
        public final /* synthetic */ void m34199b(String str, long j, long j2) {
            this.f4889b.mo32182a(str, j, j2);
        }

        /* renamed from: c */
        public final /* synthetic */ void m34198c(C1310c cVar) {
            cVar.m33735a();
            this.f4889b.mo32183a(cVar);
        }

        /* renamed from: d */
        public final /* synthetic */ void m34197d(C1310c cVar) {
            this.f4889b.mo32179b(cVar);
        }
    }

    /* renamed from: a */
    void mo32190a(int i, int i2, int i3, float f);

    /* renamed from: a */
    void mo32189a(int i, long j);

    /* renamed from: a */
    void mo32188a(Surface surface);

    /* renamed from: a */
    void mo32183a(C1310c cVar);

    /* renamed from: a */
    void mo32182a(String str, long j, long j2);

    /* renamed from: b */
    void mo32180b(Format format);

    /* renamed from: b */
    void mo32179b(C1310c cVar);
}
