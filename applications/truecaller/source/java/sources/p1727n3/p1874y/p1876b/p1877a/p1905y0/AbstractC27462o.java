package p1727n3.p1874y.p1876b.p1877a.p1905y0;

import android.os.Handler;
import android.view.Surface;
import androidx.media2.exoplayer.external.Format;
import java.util.Objects;
import p1727n3.p1874y.p1876b.p1877a.p1880o0.C27154b;
import p1727n3.p1874y.p1876b.p1877a.p1905y0.AbstractC27462o;
/* renamed from: n3.y.b.a.y0.o */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/y0/o.class */
public interface AbstractC27462o {

    /* renamed from: n3.y.b.a.y0.o$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/y0/o$a.class */
    public static final class C27463a {

        /* renamed from: a */
        public final Handler f77291a;

        /* renamed from: b */
        public final AbstractC27462o f77292b;

        public C27463a(Handler handler, AbstractC27462o abstractC27462o) {
            if (abstractC27462o != null) {
                Objects.requireNonNull(handler);
            } else {
                handler = null;
            }
            this.f77291a = handler;
            this.f77292b = abstractC27462o;
        }

        /* renamed from: a */
        public void m244a(int i, int i2, int i3, float f) {
            if (this.f77292b != null) {
                this.f77291a.post(new Runnable(this, i, i2, i3, f) { // from class: n3.y.b.a.y0.l

                    /* renamed from: a */
                    public final AbstractC27462o.C27463a f77282a;

                    /* renamed from: b */
                    public final int f77283b;

                    /* renamed from: c */
                    public final int f77284c;

                    /* renamed from: d */
                    public final int f77285d;

                    /* renamed from: e */
                    public final float f77286e;

                    {
                        this.f77282a = this;
                        this.f77283b = i;
                        this.f77284c = i2;
                        this.f77285d = i3;
                        this.f77286e = f;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        AbstractC27462o.C27463a c27463a = this.f77282a;
                        c27463a.f77292b.mo251a(this.f77283b, this.f77284c, this.f77285d, this.f77286e);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    void mo251a(int i, int i2, int i3, float f);

    /* renamed from: e */
    void mo250e(int i, long j);

    /* renamed from: f */
    void mo249f(String str, long j, long j2);

    /* renamed from: g */
    void mo248g(Surface surface);

    /* renamed from: n */
    void mo247n(Format format);

    /* renamed from: u */
    void mo246u(C27154b c27154b);

    /* renamed from: v */
    void mo245v(C27154b c27154b);
}
