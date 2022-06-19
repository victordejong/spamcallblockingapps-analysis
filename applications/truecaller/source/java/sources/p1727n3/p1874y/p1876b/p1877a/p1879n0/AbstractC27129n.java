package p1727n3.p1874y.p1876b.p1877a.p1879n0;

import android.os.Handler;
import androidx.media2.exoplayer.external.Format;
import java.util.Objects;
import p1727n3.p1874y.p1876b.p1877a.p1879n0.AbstractC27129n;
import p1727n3.p1874y.p1876b.p1877a.p1880o0.C27154b;
/* renamed from: n3.y.b.a.n0.n */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/n.class */
public interface AbstractC27129n {

    /* renamed from: n3.y.b.a.n0.n$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/n$a.class */
    public static final class C27130a {

        /* renamed from: a */
        public final Handler f75854a;

        /* renamed from: b */
        public final AbstractC27129n f75855b;

        public C27130a(Handler handler, AbstractC27129n abstractC27129n) {
            if (abstractC27129n != null) {
                Objects.requireNonNull(handler);
            } else {
                handler = null;
            }
            this.f75854a = handler;
            this.f75855b = abstractC27129n;
        }

        /* renamed from: a */
        public void m828a(C27154b c27154b) {
            synchronized (c27154b) {
            }
            if (this.f75855b != null) {
                this.f75854a.post(new Runnable(this, c27154b) { // from class: n3.y.b.a.n0.l

                    /* renamed from: a */
                    public final AbstractC27129n.C27130a f75850a;

                    /* renamed from: b */
                    public final C27154b f75851b;

                    {
                        this.f75850a = this;
                        this.f75851b = c27154b;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        AbstractC27129n.C27130a c27130a = this.f75850a;
                        C27154b c27154b2 = this.f75851b;
                        Objects.requireNonNull(c27130a);
                        synchronized (c27154b2) {
                        }
                        c27130a.f75855b.mo829y(c27154b2);
                    }
                });
            }
        }
    }

    /* renamed from: b */
    void mo834b(int i);

    /* renamed from: d */
    void mo833d(String str, long j, long j2);

    /* renamed from: h */
    void mo832h(int i, long j, long j2);

    /* renamed from: o */
    void mo831o(C27154b c27154b);

    /* renamed from: q */
    void mo830q(Format format);

    /* renamed from: y */
    void mo829y(C27154b c27154b);
}
