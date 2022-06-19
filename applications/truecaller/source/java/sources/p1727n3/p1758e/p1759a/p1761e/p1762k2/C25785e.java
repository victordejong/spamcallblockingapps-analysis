package p1727n3.p1758e.p1759a.p1761e.p1762k2;

import android.hardware.camera2.CameraCharacteristics;
import java.util.HashMap;
import java.util.Map;
/* renamed from: n3.e.a.e.k2.e */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/e.class */
public class C25785e {

    /* renamed from: a */
    public final Map<CameraCharacteristics.Key<?>, Object> f72210a = new HashMap();

    /* renamed from: b */
    public final CameraCharacteristics f72211b;

    public C25785e(CameraCharacteristics cameraCharacteristics) {
        this.f72211b = cameraCharacteristics;
    }

    /* renamed from: a */
    public <T> T m2995a(CameraCharacteristics.Key<T> key) {
        synchronized (this) {
            T t = (T) this.f72210a.get(key);
            if (t != null) {
                return t;
            }
            T t2 = (T) this.f72211b.get(key);
            if (t2 != null) {
                this.f72210a.put(key, t2);
            }
            return t2;
        }
    }
}
