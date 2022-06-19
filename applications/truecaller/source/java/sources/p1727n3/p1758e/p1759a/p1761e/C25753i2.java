package p1727n3.p1758e.p1759a.p1761e;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Build;
import android.os.Looper;
import java.util.concurrent.Executor;
import p1727n3.p1758e.p1759a.p1760d.a$a;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25785e;
import p1727n3.p1758e.p1767b.AbstractC25931i1;
import p1727n3.p1758e.p1767b.p1772k1.AbstractC26068d;
import p1727n3.p1790h.p1791a.C26247b;
import p1727n3.p1868v.C27010k0;
/* renamed from: n3.e.a.e.i2 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/i2.class */
public final class C25753i2 {

    /* renamed from: a */
    public final z0 f72135a;

    /* renamed from: b */
    public final Executor f72136b;

    /* renamed from: c */
    public final C25760j2 f72137c;

    /* renamed from: d */
    public final C27010k0<AbstractC25931i1> f72138d;

    /* renamed from: e */
    public final AbstractC25755b f72139e;

    /* renamed from: f */
    public boolean f72140f = false;

    /* renamed from: g */
    public z0$c f72141g = new C25754a();

    /* renamed from: n3.e.a.e.i2$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/i2$a.class */
    public class C25754a implements z0$c {
        public C25754a() {
            C25753i2.this = r4;
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.z0$c
        /* renamed from: a */
        public boolean mo2925a(TotalCaptureResult totalCaptureResult) {
            C25753i2.this.f72139e.mo2946a(totalCaptureResult);
            return false;
        }
    }

    /* renamed from: n3.e.a.e.i2$b */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/i2$b.class */
    public interface AbstractC25755b {
        /* renamed from: a */
        void mo2946a(TotalCaptureResult totalCaptureResult);

        /* renamed from: b */
        void mo2945b(a$a a_a);

        /* renamed from: c */
        float mo2944c();

        /* renamed from: d */
        float mo2943d();

        /* renamed from: e */
        void mo2942e(float f, C26247b<Void> c26247b);

        /* renamed from: f */
        void mo2941f();

        /* renamed from: g */
        Rect mo2940g();
    }

    public C25753i2(z0 z0Var, C25785e c25785e, Executor executor) {
        this.f72135a = z0Var;
        this.f72136b = executor;
        AbstractC25755b m3002a = m3002a(c25785e);
        this.f72139e = m3002a;
        C25760j2 c25760j2 = new C25760j2(m3002a.mo2943d(), m3002a.mo2944c());
        this.f72137c = c25760j2;
        c25760j2.m2999b(1.0f);
        this.f72138d = new C27010k0<>(AbstractC26068d.m2751b(c25760j2));
        z0Var.h(this.f72141g);
    }

    /* renamed from: a */
    public static AbstractC25755b m3002a(C25785e c25785e) {
        return Build.VERSION.SDK_INT >= 30 && c25785e.m2995a(CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE) != null ? new C25871w0(c25785e) : new C25863t1(c25785e);
    }

    /* renamed from: b */
    public final void m3001b(AbstractC25931i1 abstractC25931i1) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.f72138d.mo1000l(abstractC25931i1);
        } else {
            this.f72138d.mo1001j(abstractC25931i1);
        }
    }
}
