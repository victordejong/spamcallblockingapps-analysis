package p1727n3.p1758e.p1759a.p1761e.p1762k2;

import android.content.Context;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.os.Handler;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25786f;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25795k;
/* renamed from: n3.e.a.e.k2.n */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/n.class */
public class C25801n implements C25795k.AbstractC25800b {

    /* renamed from: a */
    public final CameraManager f72238a;

    /* renamed from: b */
    public final Object f72239b;

    /* renamed from: n3.e.a.e.k2.n$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/n$a.class */
    public static final class C25802a {

        /* renamed from: a */
        public final Map<CameraManager.AvailabilityCallback, C25795k.C25796a> f72240a = new HashMap();

        /* renamed from: b */
        public final Handler f72241b;

        public C25802a(Handler handler) {
            this.f72241b = handler;
        }
    }

    public C25801n(Context context, Object obj) {
        this.f72238a = (CameraManager) context.getSystemService("camera");
        this.f72239b = obj;
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.C25795k.AbstractC25800b
    /* renamed from: a */
    public void mo2988a(Executor executor, CameraManager.AvailabilityCallback availabilityCallback) {
        if (executor != null) {
            C25795k.C25796a c25796a = null;
            C25802a c25802a = (C25802a) this.f72239b;
            if (availabilityCallback != null) {
                synchronized (c25802a.f72240a) {
                    C25795k.C25796a c25796a2 = c25802a.f72240a.get(availabilityCallback);
                    c25796a = c25796a2;
                    if (c25796a2 == null) {
                        c25796a = new C25795k.C25796a(executor, availabilityCallback);
                        c25802a.f72240a.put(availabilityCallback, c25796a);
                    }
                }
            }
            this.f72238a.registerAvailabilityCallback(c25796a, c25802a.f72241b);
            return;
        }
        throw new IllegalArgumentException("executor was null");
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.C25795k.AbstractC25800b
    /* renamed from: b */
    public void mo2987b(String str, Executor executor, CameraDevice.StateCallback stateCallback) throws C25764a {
        Objects.requireNonNull(executor);
        Objects.requireNonNull(stateCallback);
        try {
            this.f72238a.openCamera(str, new C25786f.C25788b(executor, stateCallback), ((C25802a) this.f72239b).f72241b);
        } catch (CameraAccessException e) {
            Set<Integer> set = C25764a.f72156b;
            throw new C25764a(e);
        }
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.C25795k.AbstractC25800b
    /* renamed from: c */
    public CameraCharacteristics mo2986c(String str) throws C25764a {
        try {
            return this.f72238a.getCameraCharacteristics(str);
        } catch (CameraAccessException e) {
            Set<Integer> set = C25764a.f72156b;
            throw new C25764a(e);
        }
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.p1762k2.C25795k.AbstractC25800b
    /* renamed from: d */
    public void mo2985d(CameraManager.AvailabilityCallback availabilityCallback) {
        C25795k.C25796a c25796a;
        if (availabilityCallback != null) {
            C25802a c25802a = (C25802a) this.f72239b;
            synchronized (c25802a.f72240a) {
                c25796a = c25802a.f72240a.remove(availabilityCallback);
            }
        } else {
            c25796a = null;
        }
        if (c25796a != null) {
            synchronized (c25796a.f72231c) {
                c25796a.f72232d = true;
            }
        }
        this.f72238a.unregisterAvailabilityCallback(c25796a);
    }
}
