package p1727n3.p1758e.p1759a.p1761e;

import android.graphics.PointF;
import android.graphics.Rect;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.MeteringRectangle;
import android.util.Rational;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import n3.e.a.d.a;
import n3.e.b.j1.a1;
import p1727n3.p1758e.p1767b.C25891a1;
import p1727n3.p1758e.p1767b.C26090s0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0;
import p1727n3.p1758e.p1767b.p1768j1.C25949d1;
import p1727n3.p1758e.p1767b.p1768j1.C25956g0;
import p1727n3.p1758e.p1767b.p1768j1.C25992n;
import p1727n3.p1790h.p1791a.C26247b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.a.e.x1 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/x1.class */
public class C25875x1 {

    /* renamed from: a */
    public final z0 f72371a;

    /* renamed from: b */
    public final Executor f72372b;

    /* renamed from: c */
    public final ScheduledExecutorService f72373c;

    /* renamed from: g */
    public ScheduledFuture<?> f72377g;

    /* renamed from: d */
    public volatile boolean f72374d = false;

    /* renamed from: e */
    public boolean f72375e = false;

    /* renamed from: f */
    public Integer f72376f = 0;

    /* renamed from: h */
    public long f72378h = 0;

    /* renamed from: i */
    public boolean f72379i = false;

    /* renamed from: j */
    public boolean f72380j = false;

    /* renamed from: k */
    public z0$c f72381k = null;

    /* renamed from: l */
    public z0$c f72382l = null;

    /* renamed from: m */
    public MeteringRectangle[] f72383m = new MeteringRectangle[0];

    /* renamed from: n */
    public MeteringRectangle[] f72384n = new MeteringRectangle[0];

    /* renamed from: o */
    public MeteringRectangle[] f72385o = new MeteringRectangle[0];

    /* renamed from: p */
    public MeteringRectangle[] f72386p = new MeteringRectangle[0];

    /* renamed from: q */
    public MeteringRectangle[] f72387q = new MeteringRectangle[0];

    /* renamed from: r */
    public MeteringRectangle[] f72388r = new MeteringRectangle[0];

    /* renamed from: s */
    public C26247b<C26090s0> f72389s = null;

    /* renamed from: t */
    public C26247b<Void> f72390t = null;

    public C25875x1(z0 z0Var, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.f72371a = z0Var;
        this.f72372b = executor;
        this.f72373c = scheduledExecutorService;
    }

    /* renamed from: e */
    public static PointF m2934e(C25891a1 c25891a1, Rational rational, Rational rational2) {
        Rational rational3 = c25891a1.f72431d;
        if (rational3 != null) {
            rational2 = rational3;
        }
        PointF pointF = new PointF(c25891a1.f72428a, c25891a1.f72429b);
        if (!rational2.equals(rational)) {
            if (rational2.compareTo(rational) > 0) {
                float doubleValue = (float) (rational2.doubleValue() / rational.doubleValue());
                pointF.y = (1.0f / doubleValue) * (((float) ((doubleValue - 1.0d) / 2.0d)) + pointF.y);
            } else {
                float doubleValue2 = (float) (rational.doubleValue() / rational2.doubleValue());
                pointF.x = (1.0f / doubleValue2) * (((float) ((doubleValue2 - 1.0d) / 2.0d)) + pointF.x);
            }
        }
        return pointF;
    }

    /* renamed from: f */
    public static MeteringRectangle m2933f(C25891a1 c25891a1, PointF pointF, Rect rect) {
        int width = (int) ((pointF.x * rect.width()) + rect.left);
        int height = (int) ((pointF.y * rect.height()) + rect.top);
        int width2 = (int) (c25891a1.f72430c * rect.width());
        int i = width2 / 2;
        int height2 = ((int) (c25891a1.f72430c * rect.height())) / 2;
        Rect rect2 = new Rect(width - i, height - height2, width + i, height + height2);
        rect2.left = m2929j(rect2.left, rect.right, rect.left);
        rect2.right = m2929j(rect2.right, rect.right, rect.left);
        rect2.top = m2929j(rect2.top, rect.bottom, rect.top);
        rect2.bottom = m2929j(rect2.bottom, rect.bottom, rect.top);
        return new MeteringRectangle(rect2, 1000);
    }

    /* renamed from: g */
    public static int m2932g(MeteringRectangle[] meteringRectangleArr) {
        if (meteringRectangleArr == null) {
            return 0;
        }
        return meteringRectangleArr.length;
    }

    /* renamed from: h */
    public static boolean m2931h(MeteringRectangle[] meteringRectangleArr, MeteringRectangle[] meteringRectangleArr2) {
        if (m2932g(meteringRectangleArr) == 0 && m2932g(meteringRectangleArr2) == 0) {
            return true;
        }
        if (m2932g(meteringRectangleArr) != m2932g(meteringRectangleArr2)) {
            return false;
        }
        if (meteringRectangleArr == null || meteringRectangleArr2 == null) {
            return true;
        }
        for (int i = 0; i < meteringRectangleArr.length; i++) {
            if (!meteringRectangleArr[i].equals(meteringRectangleArr2[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: i */
    public static boolean m2930i(C25891a1 c25891a1) {
        boolean z;
        float f = c25891a1.f72428a;
        if (f >= 0.0f && f <= 1.0f) {
            float f2 = c25891a1.f72429b;
            if (f2 >= 0.0f && f2 <= 1.0f) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: j */
    public static int m2929j(int i, int i2, int i3) {
        return Math.min(Math.max(i, i3), i2);
    }

    /* renamed from: a */
    public void m2938a() {
        m2935d("Cancelled by another cancelFocusAndMetering()");
        m2936c("Cancelled by cancelFocusAndMetering()");
        this.f72390t = null;
        m2937b();
        if (this.f72390t != null) {
            final int l = this.f72371a.l(4);
            z0$c z0_c = new z0$c() { // from class: n3.e.a.e.e0
                @Override // p1727n3.p1758e.p1759a.p1761e.z0$c
                /* renamed from: a */
                public final boolean mo2925a(TotalCaptureResult totalCaptureResult) {
                    boolean z;
                    C25875x1 c25875x1 = C25875x1.this;
                    int i = l;
                    Objects.requireNonNull(c25875x1);
                    Integer num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_MODE);
                    CaptureRequest request = totalCaptureResult.getRequest();
                    MeteringRectangle[] meteringRectangleArr = (MeteringRectangle[]) request.get(CaptureRequest.CONTROL_AF_REGIONS);
                    MeteringRectangle[] meteringRectangleArr2 = (MeteringRectangle[]) request.get(CaptureRequest.CONTROL_AE_REGIONS);
                    MeteringRectangle[] meteringRectangleArr3 = (MeteringRectangle[]) request.get(CaptureRequest.CONTROL_AWB_REGIONS);
                    if (num.intValue() != i || !C25875x1.m2931h(meteringRectangleArr, c25875x1.f72386p) || !C25875x1.m2931h(meteringRectangleArr2, c25875x1.f72387q) || !C25875x1.m2931h(meteringRectangleArr3, c25875x1.f72388r)) {
                        z = false;
                    } else {
                        C26247b<Void> c26247b = c25875x1.f72390t;
                        if (c26247b != null) {
                            c26247b.m2258a(null);
                            c25875x1.f72390t = null;
                        }
                        z = true;
                    }
                    return z;
                }
            };
            this.f72382l = z0_c;
            this.f72371a.h(z0_c);
        }
        if (m2928k()) {
            AbstractC25968j0.EnumC25971c enumC25971c = AbstractC25968j0.EnumC25971c.OPTIONAL;
            if (this.f72374d) {
                C25956g0.C25957a c25957a = new C25956g0.C25957a();
                c25957a.f72582e = true;
                c25957a.f72580c = 1;
                a1 x = a1.x();
                CaptureRequest.Key key = CaptureRequest.CONTROL_AF_TRIGGER;
                AbstractC25968j0.AbstractC25969a abstractC25969a = a.r;
                StringBuilder m8728C = C22128a.m8728C("camera2.captureRequest.option.");
                m8728C.append(key.getName());
                x.z(new C25992n(m8728C.toString(), Object.class, key), enumC25971c, 2);
                c25957a.m2865c(new a(C25949d1.m2869w(x)));
                this.f72371a.q(Collections.singletonList(c25957a.m2864d()));
            }
        }
        this.f72383m = new MeteringRectangle[0];
        this.f72384n = new MeteringRectangle[0];
        this.f72385o = new MeteringRectangle[0];
        this.f72375e = false;
        this.f72371a.r();
    }

    /* renamed from: b */
    public final void m2937b() {
        ScheduledFuture<?> scheduledFuture = this.f72377g;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.f72377g = null;
        }
    }

    /* renamed from: c */
    public final void m2936c(String str) {
        this.f72371a.o(this.f72381k);
        C26247b<C26090s0> c26247b = this.f72389s;
        if (c26247b != null) {
            C22128a.m8715F0(str, c26247b);
            this.f72389s = null;
        }
    }

    /* renamed from: d */
    public final void m2935d(String str) {
        this.f72371a.o(this.f72382l);
        C26247b<Void> c26247b = this.f72390t;
        if (c26247b != null) {
            C22128a.m8715F0(str, c26247b);
            this.f72390t = null;
        }
    }

    /* renamed from: k */
    public final boolean m2928k() {
        return this.f72383m.length > 0;
    }
}
