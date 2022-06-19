package p193e.p1577m.p1578a.p1596c.p1637r1;

import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.Format;
import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.p1600e1.C24264d;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24834s;
/* renamed from: e.m.a.c.r1.s */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/r1/s.class */
public interface AbstractC24834s {

    /* renamed from: e.m.a.c.r1.s$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/r1/s$a.class */
    public static final class C24835a {

        /* renamed from: a */
        public final Handler f69648a;

        /* renamed from: b */
        public final AbstractC24834s f69649b;

        public C24835a(Handler handler, AbstractC24834s abstractC24834s) {
            if (abstractC24834s != null) {
                Objects.requireNonNull(handler);
            } else {
                handler = null;
            }
            this.f69648a = handler;
            this.f69649b = abstractC24834s;
        }

        /* renamed from: a */
        public void m4430a(final int i, final int i2, final int i3, final float f) {
            Handler handler = this.f69648a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: e.m.a.c.r1.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractC24834s.C24835a c24835a = AbstractC24834s.C24835a.this;
                        int i4 = i;
                        int i5 = i2;
                        int i6 = i3;
                        float f2 = f;
                        AbstractC24834s abstractC24834s = c24835a.f69649b;
                        int i7 = C24773d0.f69427a;
                        abstractC24834s.mo4437a(i4, i5, i6, f2);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    void mo4437a(int i, int i2, int i3, float f);

    /* renamed from: e */
    void mo4436e(int i, long j);

    /* renamed from: f */
    void mo4435f(String str, long j, long j2);

    /* renamed from: g */
    void mo4434g(Surface surface);

    /* renamed from: n */
    void mo4433n(Format format);

    /* renamed from: o */
    void mo4432o(C24264d c24264d);

    /* renamed from: q */
    void mo4431q(C24264d c24264d);
}
