package p1727n3.p1758e.p1759a.p1761e.p1762k2;

import android.hardware.camera2.CameraDevice;
import android.os.Handler;
import android.view.Surface;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25786f;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25806b;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25810g;
import p1727n3.p1758e.p1767b.C26103y0;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.e.a.e.k2.j */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/j.class */
public class C25793j implements C25786f.AbstractC25787a {

    /* renamed from: a */
    public final CameraDevice f72224a;

    /* renamed from: b */
    public final Object f72225b;

    /* renamed from: n3.e.a.e.k2.j$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/j$a.class */
    public static class C25794a {

        /* renamed from: a */
        public final Handler f72226a;

        public C25794a(Handler handler) {
            this.f72226a = handler;
        }
    }

    public C25793j(CameraDevice cameraDevice, Object obj) {
        Objects.requireNonNull(cameraDevice);
        this.f72224a = cameraDevice;
        this.f72225b = obj;
    }

    /* renamed from: b */
    public static void m2993b(CameraDevice cameraDevice, C25810g c25810g) {
        Objects.requireNonNull(cameraDevice);
        Objects.requireNonNull(c25810g);
        Objects.requireNonNull(c25810g.m2977e());
        List<C25806b> m2979c = c25810g.m2979c();
        if (m2979c != null) {
            if (c25810g.m2981a() == null) {
                throw new IllegalArgumentException("Invalid executor");
            }
            String id = cameraDevice.getId();
            for (C25806b c25806b : m2979c) {
                String mo2983a = c25806b.f72244a.mo2983a();
                if (mo2983a != null && !mo2983a.isEmpty()) {
                    C26103y0.m2720e("CameraDeviceCompat", C22128a.m8717E2("Camera ", id, ": Camera doesn't support physicalCameraId ", mo2983a, ". Ignoring."), null);
                }
            }
            return;
        }
        throw new IllegalArgumentException("Invalid output configurations");
    }

    /* renamed from: c */
    public static List<Surface> m2992c(List<C25806b> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (C25806b c25806b : list) {
            arrayList.add(c25806b.f72244a.getSurface());
        }
        return arrayList;
    }
}
