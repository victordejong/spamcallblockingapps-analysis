package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CaptureResult;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26013t;
import p1727n3.p1758e.p1767b.p1768j1.C25996o1;
/* renamed from: n3.e.a.e.y0 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/y0.class */
public class C25877y0 implements AbstractC26013t {

    /* renamed from: a */
    public final C25996o1 f72394a;

    /* renamed from: b */
    public final CaptureResult f72395b;

    public C25877y0(C25996o1 c25996o1, CaptureResult captureResult) {
        this.f72394a = c25996o1;
        this.f72395b = captureResult;
    }

    /* renamed from: a */
    public long m2927a() {
        Long l = (Long) this.f72395b.get(CaptureResult.SENSOR_TIMESTAMP);
        if (l == null) {
            return -1L;
        }
        return l.longValue();
    }
}
