package p1727n3.p1758e.p1759a.p1761e;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.MeteringRectangle;
import android.util.Rational;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import n3.e.a.d.a;
import n3.e.b.j1.a1;
import p1727n3.p1758e.p1767b.C25891a1;
import p1727n3.p1758e.p1767b.C26087r0;
import p1727n3.p1758e.p1767b.C26090s0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0;
import p1727n3.p1758e.p1767b.p1768j1.C25949d1;
import p1727n3.p1758e.p1767b.p1768j1.C25956g0;
import p1727n3.p1758e.p1767b.p1768j1.C25992n;
import p1727n3.p1790h.p1791a.AbstractC26249d;
import p1727n3.p1790h.p1791a.C26247b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.a.e.f0 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/f0.class */
public final /* synthetic */ class C25735f0 implements AbstractC26249d {

    /* renamed from: a */
    public final /* synthetic */ C25875x1 f72097a;

    /* renamed from: b */
    public final /* synthetic */ C26087r0 f72098b;

    /* renamed from: c */
    public final /* synthetic */ Rational f72099c;

    public /* synthetic */ C25735f0(C25875x1 c25875x1, C26087r0 c26087r0, Rational rational) {
        this.f72097a = c25875x1;
        this.f72098b = c26087r0;
        this.f72099c = rational;
    }

    @Override // p1727n3.p1790h.p1791a.AbstractC26249d
    /* renamed from: a */
    public final Object mo2255a(final C26247b c26247b) {
        final C25875x1 c25875x1 = this.f72097a;
        final C26087r0 c26087r0 = this.f72098b;
        final Rational rational = this.f72099c;
        c25875x1.f72372b.execute(new Runnable() { // from class: n3.e.a.e.g0
            @Override // java.lang.Runnable
            public final void run() {
                final C25875x1 c25875x12 = C25875x1.this;
                C26247b<C26090s0> c26247b2 = c26247b;
                C26087r0 c26087r02 = c26087r0;
                Rational rational2 = rational;
                if (!c25875x12.f72374d) {
                    C22128a.m8715F0("Camera is not active.", c26247b2);
                } else if (c26087r02.f72790a.isEmpty() && c26087r02.f72791b.isEmpty() && c26087r02.f72792c.isEmpty()) {
                    c26247b2.m2256c(new IllegalArgumentException("No AF/AE/AWB MeteringPoints are added."));
                } else {
                    int size = c26087r02.f72790a.size();
                    Integer num = (Integer) c25875x12.f72371a.d.m2995a(CameraCharacteristics.CONTROL_MAX_REGIONS_AF);
                    int min = Math.min(size, num == null ? 0 : num.intValue());
                    int size2 = c26087r02.f72791b.size();
                    Integer num2 = (Integer) c25875x12.f72371a.d.m2995a(CameraCharacteristics.CONTROL_MAX_REGIONS_AE);
                    int min2 = Math.min(size2, num2 == null ? 0 : num2.intValue());
                    int size3 = c26087r02.f72792c.size();
                    Integer num3 = (Integer) c25875x12.f72371a.d.m2995a(CameraCharacteristics.CONTROL_MAX_REGIONS_AWB);
                    int min3 = Math.min(size3, num3 == null ? 0 : num3.intValue());
                    if (min + min2 + min3 <= 0) {
                        c26247b2.m2256c(new IllegalArgumentException("None of the specified AF/AE/AWB MeteringPoints is supported on this camera."));
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    if (min > 0) {
                        arrayList.addAll(c26087r02.f72790a.subList(0, min));
                    }
                    if (min2 > 0) {
                        arrayList2.addAll(c26087r02.f72791b.subList(0, min2));
                    }
                    if (min3 > 0) {
                        arrayList3.addAll(c26087r02.f72792c.subList(0, min3));
                    }
                    Rect mo2940g = c25875x12.f72371a.i.f72139e.mo2940g();
                    Rational rational3 = new Rational(mo2940g.width(), mo2940g.height());
                    Rational rational4 = rational2;
                    if (rational2 == null) {
                        rational4 = rational3;
                    }
                    ArrayList arrayList4 = new ArrayList();
                    ArrayList arrayList5 = new ArrayList();
                    ArrayList arrayList6 = new ArrayList();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        C25891a1 c25891a1 = (C25891a1) it.next();
                        if (C25875x1.m2930i(c25891a1)) {
                            MeteringRectangle m2933f = C25875x1.m2933f(c25891a1, C25875x1.m2934e(c25891a1, rational3, rational4), mo2940g);
                            if (m2933f.getWidth() != 0 && m2933f.getHeight() != 0) {
                                arrayList4.add(m2933f);
                            }
                        }
                    }
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        C25891a1 c25891a12 = (C25891a1) it2.next();
                        if (C25875x1.m2930i(c25891a12)) {
                            MeteringRectangle m2933f2 = C25875x1.m2933f(c25891a12, C25875x1.m2934e(c25891a12, rational3, rational4), mo2940g);
                            if (m2933f2.getWidth() != 0 && m2933f2.getHeight() != 0) {
                                arrayList5.add(m2933f2);
                            }
                        }
                    }
                    Iterator it3 = arrayList3.iterator();
                    while (it3.hasNext()) {
                        C25891a1 c25891a13 = (C25891a1) it3.next();
                        if (C25875x1.m2930i(c25891a13)) {
                            MeteringRectangle m2933f3 = C25875x1.m2933f(c25891a13, C25875x1.m2934e(c25891a13, rational3, rational4), mo2940g);
                            if (m2933f3.getWidth() != 0 && m2933f3.getHeight() != 0) {
                                arrayList6.add(m2933f3);
                            }
                        }
                    }
                    if (arrayList4.isEmpty() && arrayList5.isEmpty() && arrayList6.isEmpty()) {
                        c26247b2.m2256c(new IllegalArgumentException("None of the specified AF/AE/AWB MeteringPoints are valid."));
                        return;
                    }
                    c25875x12.m2936c("Cancelled by another startFocusAndMetering()");
                    c25875x12.m2935d("Cancelled by another startFocusAndMetering()");
                    c25875x12.m2937b();
                    c25875x12.f72389s = c26247b2;
                    final MeteringRectangle[] meteringRectangleArr = (MeteringRectangle[]) arrayList4.toArray(new MeteringRectangle[0]);
                    final MeteringRectangle[] meteringRectangleArr2 = (MeteringRectangle[]) arrayList5.toArray(new MeteringRectangle[0]);
                    final MeteringRectangle[] meteringRectangleArr3 = (MeteringRectangle[]) arrayList6.toArray(new MeteringRectangle[0]);
                    c25875x12.f72371a.o(c25875x12.f72381k);
                    c25875x12.m2937b();
                    c25875x12.f72383m = meteringRectangleArr;
                    c25875x12.f72384n = meteringRectangleArr2;
                    c25875x12.f72385o = meteringRectangleArr3;
                    if (c25875x12.m2928k()) {
                        c25875x12.f72375e = true;
                        c25875x12.f72379i = false;
                        c25875x12.f72380j = false;
                        c25875x12.f72371a.r();
                        if (c25875x12.f72374d) {
                            C25956g0.C25957a c25957a = new C25956g0.C25957a();
                            c25957a.f72580c = 1;
                            c25957a.f72582e = true;
                            a1 x = a1.x();
                            CaptureRequest.Key key = CaptureRequest.CONTROL_AF_TRIGGER;
                            AbstractC25968j0.AbstractC25969a abstractC25969a = a.r;
                            StringBuilder m8728C = C22128a.m8728C("camera2.captureRequest.option.");
                            m8728C.append(key.getName());
                            x.z(new C25992n(m8728C.toString(), Object.class, key), AbstractC25968j0.EnumC25971c.OPTIONAL, 1);
                            c25957a.m2865c(new a(C25949d1.m2869w(x)));
                            c25957a.m2866b(new C25872w1(c25875x12, null));
                            c25875x12.f72371a.q(Collections.singletonList(c25957a.m2864d()));
                        }
                    } else {
                        c25875x12.f72375e = false;
                        c25875x12.f72379i = true;
                        c25875x12.f72380j = false;
                        c25875x12.f72371a.r();
                    }
                    c25875x12.f72376f = 0;
                    final boolean z = c25875x12.f72371a.l(1) == 1;
                    z0$c z0_c = new z0$c() { // from class: n3.e.a.e.d0
                        @Override // p1727n3.p1758e.p1759a.p1761e.z0$c
                        /* renamed from: a */
                        public final boolean mo2925a(TotalCaptureResult totalCaptureResult) {
                            boolean z2;
                            C25875x1 c25875x13 = C25875x1.this;
                            boolean z3 = z;
                            MeteringRectangle[] meteringRectangleArr4 = meteringRectangleArr;
                            MeteringRectangle[] meteringRectangleArr5 = meteringRectangleArr2;
                            MeteringRectangle[] meteringRectangleArr6 = meteringRectangleArr3;
                            Objects.requireNonNull(c25875x13);
                            Integer num4 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_STATE);
                            if (c25875x13.m2928k()) {
                                if (!z3 || num4 == null) {
                                    c25875x13.f72380j = true;
                                    c25875x13.f72379i = true;
                                } else if (c25875x13.f72376f.intValue() == 3) {
                                    if (num4.intValue() == 4) {
                                        c25875x13.f72380j = true;
                                        c25875x13.f72379i = true;
                                    } else if (num4.intValue() == 5) {
                                        c25875x13.f72380j = false;
                                        c25875x13.f72379i = true;
                                    }
                                }
                            }
                            if (c25875x13.f72379i && totalCaptureResult.getRequest() != null) {
                                if (meteringRectangleArr4.length == 0) {
                                    meteringRectangleArr4 = c25875x13.f72386p;
                                }
                                if (meteringRectangleArr5.length == 0) {
                                    meteringRectangleArr5 = c25875x13.f72387q;
                                }
                                if (meteringRectangleArr6.length == 0) {
                                    meteringRectangleArr6 = c25875x13.f72388r;
                                }
                                CaptureRequest request = totalCaptureResult.getRequest();
                                if (C25875x1.m2931h((MeteringRectangle[]) request.get(CaptureRequest.CONTROL_AF_REGIONS), meteringRectangleArr4) && C25875x1.m2931h((MeteringRectangle[]) request.get(CaptureRequest.CONTROL_AE_REGIONS), meteringRectangleArr5) && C25875x1.m2931h((MeteringRectangle[]) request.get(CaptureRequest.CONTROL_AWB_REGIONS), meteringRectangleArr6)) {
                                    boolean z4 = c25875x13.f72380j;
                                    C26247b<C26090s0> c26247b3 = c25875x13.f72389s;
                                    if (c26247b3 != null) {
                                        c26247b3.m2258a(new C26090s0(z4));
                                        c25875x13.f72389s = null;
                                    }
                                    z2 = true;
                                    return z2;
                                }
                            }
                            z2 = false;
                            if (!c25875x13.f72376f.equals(num4)) {
                                z2 = false;
                                if (num4 != null) {
                                    c25875x13.f72376f = num4;
                                    z2 = false;
                                }
                            }
                            return z2;
                        }
                    };
                    c25875x12.f72381k = z0_c;
                    c25875x12.f72371a.h(z0_c);
                    long j = c26087r02.f72793d;
                    boolean z2 = false;
                    if (j > 0) {
                        z2 = true;
                    }
                    if (!z2) {
                        return;
                    }
                    final long j2 = c25875x12.f72378h + 1;
                    c25875x12.f72378h = j2;
                    c25875x12.f72377g = c25875x12.f72373c.schedule(new Runnable() { // from class: n3.e.a.e.c0
                        @Override // java.lang.Runnable
                        public final void run() {
                            final C25875x1 c25875x13 = C25875x1.this;
                            final long j3 = j2;
                            c25875x13.f72372b.execute(new Runnable() { // from class: n3.e.a.e.b0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    C25875x1 c25875x14 = C25875x1.this;
                                    if (j3 == c25875x14.f72378h) {
                                        c25875x14.m2938a();
                                    }
                                }
                            });
                        }
                    }, j, TimeUnit.MILLISECONDS);
                }
            }
        });
        return "startFocusAndMetering";
    }
}
