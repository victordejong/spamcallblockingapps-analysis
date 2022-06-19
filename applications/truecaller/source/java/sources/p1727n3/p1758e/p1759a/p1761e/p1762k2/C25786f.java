package p1727n3.p1758e.p1759a.p1761e.p1762k2;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.os.Build;
import android.os.Handler;
import java.util.concurrent.Executor;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25793j;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o.C25810g;
/* renamed from: n3.e.a.e.k2.f */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/f.class */
public final class C25786f {

    /* renamed from: a */
    public final AbstractC25787a f72212a;

    /* renamed from: n3.e.a.e.k2.f$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/f$a.class */
    public interface AbstractC25787a {
        /* renamed from: a */
        void m2994a(C25810g c25810g) throws CameraAccessException;
    }

    /* renamed from: n3.e.a.e.k2.f$b */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/f$b.class */
    public static final class C25788b extends CameraDevice.StateCallback {

        /* renamed from: a */
        public final CameraDevice.StateCallback f72213a;

        /* renamed from: b */
        public final Executor f72214b;

        /* renamed from: n3.e.a.e.k2.f$b$a */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/f$b$a.class */
        public class RunnableC25789a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ CameraDevice f72215a;

            public RunnableC25789a(CameraDevice cameraDevice) {
                C25788b.this = r4;
                this.f72215a = cameraDevice;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25788b.this.f72213a.onOpened(this.f72215a);
            }
        }

        /* renamed from: n3.e.a.e.k2.f$b$b */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/f$b$b.class */
        public class RunnableC25790b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ CameraDevice f72217a;

            public RunnableC25790b(CameraDevice cameraDevice) {
                C25788b.this = r4;
                this.f72217a = cameraDevice;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25788b.this.f72213a.onDisconnected(this.f72217a);
            }
        }

        /* renamed from: n3.e.a.e.k2.f$b$c */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/f$b$c.class */
        public class RunnableC25791c implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ CameraDevice f72219a;

            /* renamed from: b */
            public final /* synthetic */ int f72220b;

            public RunnableC25791c(CameraDevice cameraDevice, int i) {
                C25788b.this = r4;
                this.f72219a = cameraDevice;
                this.f72220b = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25788b.this.f72213a.onError(this.f72219a, this.f72220b);
            }
        }

        /* renamed from: n3.e.a.e.k2.f$b$d */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/f$b$d.class */
        public class RunnableC25792d implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ CameraDevice f72222a;

            public RunnableC25792d(CameraDevice cameraDevice) {
                C25788b.this = r4;
                this.f72222a = cameraDevice;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25788b.this.f72213a.onClosed(this.f72222a);
            }
        }

        public C25788b(Executor executor, CameraDevice.StateCallback stateCallback) {
            this.f72214b = executor;
            this.f72213a = stateCallback;
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onClosed(CameraDevice cameraDevice) {
            this.f72214b.execute(new RunnableC25792d(cameraDevice));
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            this.f72214b.execute(new RunnableC25790b(cameraDevice));
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int i) {
            this.f72214b.execute(new RunnableC25791c(cameraDevice, i));
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) {
            this.f72214b.execute(new RunnableC25789a(cameraDevice));
        }
    }

    public C25786f(CameraDevice cameraDevice, Handler handler) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            this.f72212a = new i(cameraDevice);
        } else if (i >= 24) {
            this.f72212a = new h(cameraDevice, new C25793j.C25794a(handler));
        } else {
            this.f72212a = new g(cameraDevice, new C25793j.C25794a(handler));
        }
    }
}
