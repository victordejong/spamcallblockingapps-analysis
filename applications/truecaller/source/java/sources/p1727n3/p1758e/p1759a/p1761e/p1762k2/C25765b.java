package p1727n3.p1758e.p1759a.p1761e.p1762k2;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Build;
import android.os.Handler;
import android.view.Surface;
import java.util.List;
import java.util.concurrent.Executor;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25783d;
/* renamed from: n3.e.a.e.k2.b */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/b.class */
public final class C25765b {

    /* renamed from: a */
    public final AbstractC25766a f72158a;

    /* renamed from: n3.e.a.e.k2.b$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/b$a.class */
    public interface AbstractC25766a {
        /* renamed from: a */
        int mo2997a(List<CaptureRequest> list, Executor executor, CameraCaptureSession.CaptureCallback captureCallback) throws CameraAccessException;

        /* renamed from: b */
        int mo2996b(CaptureRequest captureRequest, Executor executor, CameraCaptureSession.CaptureCallback captureCallback) throws CameraAccessException;
    }

    /* renamed from: n3.e.a.e.k2.b$b */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/b$b.class */
    public static final class C25767b extends CameraCaptureSession.CaptureCallback {

        /* renamed from: a */
        public final CameraCaptureSession.CaptureCallback f72159a;

        /* renamed from: b */
        public final Executor f72160b;

        /* renamed from: n3.e.a.e.k2.b$b$a */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/b$b$a.class */
        public class RunnableC25768a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ CameraCaptureSession f72161a;

            /* renamed from: b */
            public final /* synthetic */ CaptureRequest f72162b;

            /* renamed from: c */
            public final /* synthetic */ long f72163c;

            /* renamed from: d */
            public final /* synthetic */ long f72164d;

            public RunnableC25768a(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2) {
                C25767b.this = r5;
                this.f72161a = cameraCaptureSession;
                this.f72162b = captureRequest;
                this.f72163c = j;
                this.f72164d = j2;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25767b.this.f72159a.onCaptureStarted(this.f72161a, this.f72162b, this.f72163c, this.f72164d);
            }
        }

        /* renamed from: n3.e.a.e.k2.b$b$b */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/b$b$b.class */
        public class RunnableC25769b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ CameraCaptureSession f72166a;

            /* renamed from: b */
            public final /* synthetic */ CaptureRequest f72167b;

            /* renamed from: c */
            public final /* synthetic */ CaptureResult f72168c;

            public RunnableC25769b(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
                C25767b.this = r4;
                this.f72166a = cameraCaptureSession;
                this.f72167b = captureRequest;
                this.f72168c = captureResult;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25767b.this.f72159a.onCaptureProgressed(this.f72166a, this.f72167b, this.f72168c);
            }
        }

        /* renamed from: n3.e.a.e.k2.b$b$c */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/b$b$c.class */
        public class RunnableC25770c implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ CameraCaptureSession f72170a;

            /* renamed from: b */
            public final /* synthetic */ CaptureRequest f72171b;

            /* renamed from: c */
            public final /* synthetic */ TotalCaptureResult f72172c;

            public RunnableC25770c(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                C25767b.this = r4;
                this.f72170a = cameraCaptureSession;
                this.f72171b = captureRequest;
                this.f72172c = totalCaptureResult;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25767b.this.f72159a.onCaptureCompleted(this.f72170a, this.f72171b, this.f72172c);
            }
        }

        /* renamed from: n3.e.a.e.k2.b$b$d */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/b$b$d.class */
        public class RunnableC25771d implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ CameraCaptureSession f72174a;

            /* renamed from: b */
            public final /* synthetic */ CaptureRequest f72175b;

            /* renamed from: c */
            public final /* synthetic */ CaptureFailure f72176c;

            public RunnableC25771d(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
                C25767b.this = r4;
                this.f72174a = cameraCaptureSession;
                this.f72175b = captureRequest;
                this.f72176c = captureFailure;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25767b.this.f72159a.onCaptureFailed(this.f72174a, this.f72175b, this.f72176c);
            }
        }

        /* renamed from: n3.e.a.e.k2.b$b$e */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/b$b$e.class */
        public class RunnableC25772e implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ CameraCaptureSession f72178a;

            /* renamed from: b */
            public final /* synthetic */ int f72179b;

            /* renamed from: c */
            public final /* synthetic */ long f72180c;

            public RunnableC25772e(CameraCaptureSession cameraCaptureSession, int i, long j) {
                C25767b.this = r5;
                this.f72178a = cameraCaptureSession;
                this.f72179b = i;
                this.f72180c = j;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25767b.this.f72159a.onCaptureSequenceCompleted(this.f72178a, this.f72179b, this.f72180c);
            }
        }

        /* renamed from: n3.e.a.e.k2.b$b$f */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/b$b$f.class */
        public class RunnableC25773f implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ CameraCaptureSession f72182a;

            /* renamed from: b */
            public final /* synthetic */ int f72183b;

            public RunnableC25773f(CameraCaptureSession cameraCaptureSession, int i) {
                C25767b.this = r4;
                this.f72182a = cameraCaptureSession;
                this.f72183b = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25767b.this.f72159a.onCaptureSequenceAborted(this.f72182a, this.f72183b);
            }
        }

        /* renamed from: n3.e.a.e.k2.b$b$g */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/b$b$g.class */
        public class RunnableC25774g implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ CameraCaptureSession f72185a;

            /* renamed from: b */
            public final /* synthetic */ CaptureRequest f72186b;

            /* renamed from: c */
            public final /* synthetic */ Surface f72187c;

            /* renamed from: d */
            public final /* synthetic */ long f72188d;

            public RunnableC25774g(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, Surface surface, long j) {
                C25767b.this = r5;
                this.f72185a = cameraCaptureSession;
                this.f72186b = captureRequest;
                this.f72187c = surface;
                this.f72188d = j;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25767b.this.f72159a.onCaptureBufferLost(this.f72185a, this.f72186b, this.f72187c, this.f72188d);
            }
        }

        public C25767b(Executor executor, CameraCaptureSession.CaptureCallback captureCallback) {
            this.f72160b = executor;
            this.f72159a = captureCallback;
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureBufferLost(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, Surface surface, long j) {
            this.f72160b.execute(new RunnableC25774g(cameraCaptureSession, captureRequest, surface, j));
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
            this.f72160b.execute(new RunnableC25770c(cameraCaptureSession, captureRequest, totalCaptureResult));
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureFailed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
            this.f72160b.execute(new RunnableC25771d(cameraCaptureSession, captureRequest, captureFailure));
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureProgressed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
            this.f72160b.execute(new RunnableC25769b(cameraCaptureSession, captureRequest, captureResult));
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureSequenceAborted(CameraCaptureSession cameraCaptureSession, int i) {
            this.f72160b.execute(new RunnableC25773f(cameraCaptureSession, i));
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureSequenceCompleted(CameraCaptureSession cameraCaptureSession, int i, long j) {
            this.f72160b.execute(new RunnableC25772e(cameraCaptureSession, i, j));
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureStarted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j, long j2) {
            this.f72160b.execute(new RunnableC25768a(cameraCaptureSession, captureRequest, j, j2));
        }
    }

    /* renamed from: n3.e.a.e.k2.b$c */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/b$c.class */
    public static final class C25775c extends CameraCaptureSession.StateCallback {

        /* renamed from: a */
        public final CameraCaptureSession.StateCallback f72190a;

        /* renamed from: b */
        public final Executor f72191b;

        /* renamed from: n3.e.a.e.k2.b$c$a */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/b$c$a.class */
        public class RunnableC25776a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ CameraCaptureSession f72192a;

            public RunnableC25776a(CameraCaptureSession cameraCaptureSession) {
                C25775c.this = r4;
                this.f72192a = cameraCaptureSession;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25775c.this.f72190a.onConfigured(this.f72192a);
            }
        }

        /* renamed from: n3.e.a.e.k2.b$c$b */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/b$c$b.class */
        public class RunnableC25777b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ CameraCaptureSession f72194a;

            public RunnableC25777b(CameraCaptureSession cameraCaptureSession) {
                C25775c.this = r4;
                this.f72194a = cameraCaptureSession;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25775c.this.f72190a.onConfigureFailed(this.f72194a);
            }
        }

        /* renamed from: n3.e.a.e.k2.b$c$c */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/b$c$c.class */
        public class RunnableC25778c implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ CameraCaptureSession f72196a;

            public RunnableC25778c(CameraCaptureSession cameraCaptureSession) {
                C25775c.this = r4;
                this.f72196a = cameraCaptureSession;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25775c.this.f72190a.onReady(this.f72196a);
            }
        }

        /* renamed from: n3.e.a.e.k2.b$c$d */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/b$c$d.class */
        public class RunnableC25779d implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ CameraCaptureSession f72198a;

            public RunnableC25779d(CameraCaptureSession cameraCaptureSession) {
                C25775c.this = r4;
                this.f72198a = cameraCaptureSession;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25775c.this.f72190a.onActive(this.f72198a);
            }
        }

        /* renamed from: n3.e.a.e.k2.b$c$e */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/b$c$e.class */
        public class RunnableC25780e implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ CameraCaptureSession f72200a;

            public RunnableC25780e(CameraCaptureSession cameraCaptureSession) {
                C25775c.this = r4;
                this.f72200a = cameraCaptureSession;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25775c.this.f72190a.onCaptureQueueEmpty(this.f72200a);
            }
        }

        /* renamed from: n3.e.a.e.k2.b$c$f */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/b$c$f.class */
        public class RunnableC25781f implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ CameraCaptureSession f72202a;

            public RunnableC25781f(CameraCaptureSession cameraCaptureSession) {
                C25775c.this = r4;
                this.f72202a = cameraCaptureSession;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25775c.this.f72190a.onClosed(this.f72202a);
            }
        }

        /* renamed from: n3.e.a.e.k2.b$c$g */
        /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/b$c$g.class */
        public class RunnableC25782g implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ CameraCaptureSession f72204a;

            /* renamed from: b */
            public final /* synthetic */ Surface f72205b;

            public RunnableC25782g(CameraCaptureSession cameraCaptureSession, Surface surface) {
                C25775c.this = r4;
                this.f72204a = cameraCaptureSession;
                this.f72205b = surface;
            }

            @Override // java.lang.Runnable
            public void run() {
                C25775c.this.f72190a.onSurfacePrepared(this.f72204a, this.f72205b);
            }
        }

        public C25775c(Executor executor, CameraCaptureSession.StateCallback stateCallback) {
            this.f72191b = executor;
            this.f72190a = stateCallback;
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onActive(CameraCaptureSession cameraCaptureSession) {
            this.f72191b.execute(new RunnableC25779d(cameraCaptureSession));
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onCaptureQueueEmpty(CameraCaptureSession cameraCaptureSession) {
            this.f72191b.execute(new RunnableC25780e(cameraCaptureSession));
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onClosed(CameraCaptureSession cameraCaptureSession) {
            this.f72191b.execute(new RunnableC25781f(cameraCaptureSession));
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
            this.f72191b.execute(new RunnableC25777b(cameraCaptureSession));
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(CameraCaptureSession cameraCaptureSession) {
            this.f72191b.execute(new RunnableC25776a(cameraCaptureSession));
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onReady(CameraCaptureSession cameraCaptureSession) {
            this.f72191b.execute(new RunnableC25778c(cameraCaptureSession));
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onSurfacePrepared(CameraCaptureSession cameraCaptureSession, Surface surface) {
            this.f72191b.execute(new RunnableC25782g(cameraCaptureSession, surface));
        }
    }

    public C25765b(CameraCaptureSession cameraCaptureSession, Handler handler) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f72158a = new c(cameraCaptureSession);
        } else {
            this.f72158a = new C25783d(cameraCaptureSession, new C25783d.C25784a(handler));
        }
    }

    /* renamed from: a */
    public CameraCaptureSession m2998a() {
        return ((C25783d) this.f72158a).f72207a;
    }
}
