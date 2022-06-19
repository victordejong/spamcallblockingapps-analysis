package p1727n3.p1758e.p1759a.p1761e;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.util.Range;
import java.util.Objects;
import p1727n3.p1758e.p1759a.p1760d.a$a;
import p1727n3.p1758e.p1759a.p1761e.C25753i2;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25785e;
import p1727n3.p1790h.p1791a.C26247b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.a.e.w0 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/w0.class */
public final class C25871w0 implements C25753i2.AbstractC25755b {

    /* renamed from: a */
    public final C25785e f72364a;

    /* renamed from: b */
    public final Range<Float> f72365b;

    /* renamed from: d */
    public C26247b<Void> f72367d;

    /* renamed from: c */
    public float f72366c = 1.0f;

    /* renamed from: e */
    public float f72368e = 1.0f;

    public C25871w0(C25785e c25785e) {
        this.f72364a = c25785e;
        this.f72365b = (Range) c25785e.m2995a(CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE);
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.C25753i2.AbstractC25755b
    /* renamed from: a */
    public void mo2946a(TotalCaptureResult totalCaptureResult) {
        if (this.f72367d != null) {
            CaptureRequest request = totalCaptureResult.getRequest();
            Float f = request == null ? null : (Float) request.get(CaptureRequest.CONTROL_ZOOM_RATIO);
            if (f == null) {
                return;
            }
            if (this.f72368e != f.floatValue()) {
                return;
            }
            this.f72367d.m2258a(null);
            this.f72367d = null;
        }
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.C25753i2.AbstractC25755b
    /* renamed from: b */
    public void mo2945b(a$a a_a) {
        a_a.m3040b(CaptureRequest.CONTROL_ZOOM_RATIO, Float.valueOf(this.f72366c));
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.C25753i2.AbstractC25755b
    /* renamed from: c */
    public float mo2944c() {
        return this.f72365b.getLower().floatValue();
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.C25753i2.AbstractC25755b
    /* renamed from: d */
    public float mo2943d() {
        return this.f72365b.getUpper().floatValue();
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.C25753i2.AbstractC25755b
    /* renamed from: e */
    public void mo2942e(float f, C26247b<Void> c26247b) {
        this.f72366c = f;
        C26247b<Void> c26247b2 = this.f72367d;
        if (c26247b2 != null) {
            C22128a.m8715F0("There is a new zoomRatio being set", c26247b2);
        }
        this.f72368e = this.f72366c;
        this.f72367d = c26247b;
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.C25753i2.AbstractC25755b
    /* renamed from: f */
    public void mo2941f() {
        this.f72366c = 1.0f;
        C26247b<Void> c26247b = this.f72367d;
        if (c26247b != null) {
            C22128a.m8715F0("Camera is not active.", c26247b);
            this.f72367d = null;
        }
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.C25753i2.AbstractC25755b
    /* renamed from: g */
    public Rect mo2940g() {
        Rect rect = (Rect) this.f72364a.m2995a(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        Objects.requireNonNull(rect);
        return rect;
    }
}
