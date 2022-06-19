package p1727n3.p1758e.p1759a.p1761e.p1762k2;

import android.content.Context;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.os.Build;
import android.os.Handler;
import android.util.ArrayMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25801n;
/* renamed from: n3.e.a.e.k2.k */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/k.class */
public final class C25795k {

    /* renamed from: a */
    public final AbstractC25800b f72227a;

    /* renamed from: b */
    public final Map<String, C25785e> f72228b = new ArrayMap(4);

    /* renamed from: n3.e.a.e.k2.k$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/k$a.class */
    public static final class C25796a extends CameraManager.AvailabilityCallback {

        /* renamed from: a */
        public final Executor f72229a;

        /* renamed from: b */
        public final CameraManager.AvailabilityCallback f72230b;

        /* renamed from: c */
        public final Object f72231c = new Object();

        /* renamed from: d */
        public boolean f72232d = false;

        /* renamed from: n3.e.a.e.k2.k$a$a */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/k$a$a.class */
        public class RunnableC25797a implements Runnable {
            public RunnableC25797a() {
                C25796a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25796a.this.f72230b.onCameraAccessPrioritiesChanged();
            }
        }

        /* renamed from: n3.e.a.e.k2.k$a$b */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/k$a$b.class */
        public class RunnableC25798b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ String f72234a;

            public RunnableC25798b(String str) {
                C25796a.this = r4;
                this.f72234a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25796a.this.f72230b.onCameraAvailable(this.f72234a);
            }
        }

        /* renamed from: n3.e.a.e.k2.k$a$c */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/k$a$c.class */
        public class RunnableC25799c implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ String f72236a;

            public RunnableC25799c(String str) {
                C25796a.this = r4;
                this.f72236a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25796a.this.f72230b.onCameraUnavailable(this.f72236a);
            }
        }

        public C25796a(Executor executor, CameraManager.AvailabilityCallback availabilityCallback) {
            this.f72229a = executor;
            this.f72230b = availabilityCallback;
        }

        @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
        public void onCameraAccessPrioritiesChanged() {
            synchronized (this.f72231c) {
                if (!this.f72232d) {
                    this.f72229a.execute(new RunnableC25797a());
                }
            }
        }

        @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
        public void onCameraAvailable(String str) {
            synchronized (this.f72231c) {
                if (!this.f72232d) {
                    this.f72229a.execute(new RunnableC25798b(str));
                }
            }
        }

        @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
        public void onCameraUnavailable(String str) {
            synchronized (this.f72231c) {
                if (!this.f72232d) {
                    this.f72229a.execute(new RunnableC25799c(str));
                }
            }
        }
    }

    /* renamed from: n3.e.a.e.k2.k$b */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/k$b.class */
    public interface AbstractC25800b {
        /* renamed from: a */
        void mo2988a(Executor executor, CameraManager.AvailabilityCallback availabilityCallback);

        /* renamed from: b */
        void mo2987b(String str, Executor executor, CameraDevice.StateCallback stateCallback) throws C25764a;

        /* renamed from: c */
        CameraCharacteristics mo2986c(String str) throws C25764a;

        /* renamed from: d */
        void mo2985d(CameraManager.AvailabilityCallback availabilityCallback);
    }

    public C25795k(AbstractC25800b abstractC25800b) {
        this.f72227a = abstractC25800b;
    }

    /* renamed from: a */
    public static C25795k m2991a(Context context, Handler handler) {
        int i = Build.VERSION.SDK_INT;
        return new C25795k(i >= 29 ? new m(context) : i >= 28 ? new l(context) : new C25801n(context, new C25801n.C25802a(handler)));
    }

    /* renamed from: b */
    public C25785e m2990b(String str) throws C25764a {
        C25785e c25785e;
        synchronized (this.f72228b) {
            C25785e c25785e2 = this.f72228b.get(str);
            c25785e = c25785e2;
            if (c25785e2 == null) {
                c25785e = new C25785e(this.f72227a.mo2986c(str));
                this.f72228b.put(str, c25785e);
            }
        }
        return c25785e;
    }

    /* renamed from: c */
    public String[] m2989c() throws C25764a {
        C25801n c25801n = (C25801n) this.f72227a;
        Objects.requireNonNull(c25801n);
        try {
            return c25801n.f72238a.getCameraIdList();
        } catch (CameraAccessException e) {
            Set<Integer> set = C25764a.f72156b;
            throw new C25764a(e);
        }
    }
}
