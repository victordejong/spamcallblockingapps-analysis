package p1727n3.p1758e.p1759a.p1761e;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import java.util.Objects;
import p1727n3.p1758e.p1759a.p1760d.a$a;
import p1727n3.p1758e.p1759a.p1761e.C25753i2;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25785e;
import p1727n3.p1790h.p1791a.C26247b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.a.e.t1 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/t1.class */
public final class C25863t1 implements C25753i2.AbstractC25755b {

    /* renamed from: a */
    public final C25785e f72343a;

    /* renamed from: c */
    public C26247b<Void> f72345c;

    /* renamed from: b */
    public Rect f72344b = null;

    /* renamed from: d */
    public Rect f72346d = null;

    public C25863t1(C25785e c25785e) {
        this.f72343a = c25785e;
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.C25753i2.AbstractC25755b
    /* renamed from: a */
    public void mo2946a(TotalCaptureResult totalCaptureResult) {
        if (this.f72345c != null) {
            CaptureRequest request = totalCaptureResult.getRequest();
            Rect rect = request == null ? null : (Rect) request.get(CaptureRequest.SCALER_CROP_REGION);
            Rect rect2 = this.f72346d;
            if (rect2 == null || !rect2.equals(rect)) {
                return;
            }
            this.f72345c.m2258a(null);
            this.f72345c = null;
            this.f72346d = null;
        }
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.C25753i2.AbstractC25755b
    /* renamed from: b */
    public void mo2945b(a$a a_a) {
        Rect rect = this.f72344b;
        if (rect != null) {
            a_a.m3040b(CaptureRequest.SCALER_CROP_REGION, rect);
        }
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.C25753i2.AbstractC25755b
    /* renamed from: c */
    public float mo2944c() {
        return 1.0f;
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.C25753i2.AbstractC25755b
    /* renamed from: d */
    public float mo2943d() {
        Float f = (Float) this.f72343a.m2995a(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM);
        if (f != null && f.floatValue() >= 1.0f) {
            return f.floatValue();
        }
        return 1.0f;
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.C25753i2.AbstractC25755b
    /* renamed from: e */
    public void mo2942e(float f, C26247b<Void> c26247b) {
        Rect rect = (Rect) this.f72343a.m2995a(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        Objects.requireNonNull(rect);
        float width = rect.width() / f;
        float height = rect.height() / f;
        float width2 = (rect.width() - width) / 2.0f;
        float height2 = (rect.height() - height) / 2.0f;
        this.f72344b = new Rect((int) width2, (int) height2, (int) (width2 + width), (int) (height2 + height));
        C26247b<Void> c26247b2 = this.f72345c;
        if (c26247b2 != null) {
            C22128a.m8715F0("There is a new zoomRatio being set", c26247b2);
        }
        this.f72346d = this.f72344b;
        this.f72345c = c26247b;
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.C25753i2.AbstractC25755b
    /* renamed from: f */
    public void mo2941f() {
        this.f72346d = null;
        this.f72344b = null;
        C26247b<Void> c26247b = this.f72345c;
        if (c26247b != null) {
            C22128a.m8715F0("Camera is not active.", c26247b);
            this.f72345c = null;
        }
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.C25753i2.AbstractC25755b
    /* renamed from: g */
    public Rect mo2940g() {
        Rect rect = this.f72344b;
        if (rect == null) {
            rect = (Rect) this.f72343a.m2995a(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
            Objects.requireNonNull(rect);
        }
        return rect;
    }
}
