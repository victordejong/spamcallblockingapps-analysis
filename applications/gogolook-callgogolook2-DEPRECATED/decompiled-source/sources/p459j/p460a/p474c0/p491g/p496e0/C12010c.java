package p459j.p460a.p474c0.p491g.p496e0;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.hardware.Camera;
import android.media.MediaRecorder;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.View;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import gogolook.callgogolook2.messaging.p078ui.mediapicker.camerafocus.RenderOverlay;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import p459j.p460a.p474c0.p475c.p478y.C11617j;
import p459j.p460a.p474c0.p488f.C11828f;
import p459j.p460a.p474c0.p491g.p496e0.p497o.C12065b;
import p459j.p460a.p474c0.p499h.AbstractC12170i;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C14191v;
/* renamed from: j.a.c0.g.e0.c */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/c.class */
public class C12010c implements C12065b.AbstractC12066a {

    /* renamed from: t */
    public static C12010c f26903t;

    /* renamed from: u */
    public static AbstractC12021k f26904u = new C12011a();

    /* renamed from: c */
    public final boolean f26907c;

    /* renamed from: d */
    public boolean f26908d;

    /* renamed from: e */
    public boolean f26909e;

    /* renamed from: f */
    public C12060m f26910f;

    /* renamed from: g */
    public AbstractC12022l f26911g;

    /* renamed from: h */
    public C12034e f26912h;

    /* renamed from: i */
    public C12023m f26913i;

    /* renamed from: j */
    public boolean f26914j;

    /* renamed from: k */
    public AsyncTask<Integer, Void, Camera> f26915k;

    /* renamed from: m */
    public Camera f26917m;

    /* renamed from: n */
    public int f26918n;

    /* renamed from: o */
    public AbstractC12020j f26919o;

    /* renamed from: p */
    public boolean f26920p;

    /* renamed from: q */
    public C11617j.AbstractC11623f f26921q;

    /* renamed from: r */
    public final C12065b f26922r;

    /* renamed from: l */
    public int f26916l = -1;

    /* renamed from: s */
    public Integer f26923s = null;

    /* renamed from: a */
    public final Camera.CameraInfo f26905a = new Camera.CameraInfo();

    /* renamed from: b */
    public int f26906b = -1;

    /* renamed from: j.a.c0.g.e0.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/c$a.class */
    public static final class C12011a implements AbstractC12021k {
        @Override // p459j.p460a.p474c0.p491g.p496e0.C12010c.AbstractC12021k
        /* renamed from: a */
        public int mo7492a() {
            return Camera.getNumberOfCameras();
        }

        @Override // p459j.p460a.p474c0.p491g.p496e0.C12010c.AbstractC12021k
        /* renamed from: a */
        public Camera mo7491a(int i) {
            return Camera.open(i);
        }

        @Override // p459j.p460a.p474c0.p491g.p496e0.C12010c.AbstractC12021k
        /* renamed from: a */
        public void mo7490a(int i, Camera.CameraInfo cameraInfo) {
            Camera.getCameraInfo(i, cameraInfo);
        }

        @Override // p459j.p460a.p474c0.p491g.p496e0.C12010c.AbstractC12021k
        /* renamed from: a */
        public void mo7489a(Camera camera) {
            camera.release();
        }
    }

    /* renamed from: j.a.c0.g.e0.c$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/c$b.class */
    public class View$OnTouchListenerC12012b implements View.OnTouchListener {
        public View$OnTouchListenerC12012b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if ((motionEvent.getActionMasked() & 1) != 1) {
                return true;
            }
            C12010c.this.f26922r.m7324b(view.getWidth(), view.getHeight());
            C12010c.this.f26922r.m7337a(((int) motionEvent.getX()) + view.getLeft(), ((int) motionEvent.getY()) + view.getTop());
            return true;
        }
    }

    /* renamed from: j.a.c0.g.e0.c$c */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/c$c.class */
    public class AsyncTaskC12013c extends AsyncTask<Integer, Void, Camera> {

        /* renamed from: a */
        public Exception f26925a;

        public AsyncTaskC12013c() {
        }

        /* renamed from: a */
        public Camera doInBackground(Integer... numArr) {
            try {
                int intValue = numArr[0].intValue();
                if (C12153d0.m6992a("MessagingApp", 2)) {
                    C12153d0.m6983d("MessagingApp", "Opening camera " + C12010c.this.f26906b);
                }
                return C12010c.f26904u.mo7491a(intValue);
            } catch (Exception e) {
                C12153d0.m6986b("MessagingApp", "Exception while opening camera", e);
                this.f26925a = e;
                return null;
            }
        }

        /* renamed from: a */
        public final void m7496a() {
            C12010c.this.f26916l = -1;
            if (C12010c.this.f26915k == null || C12010c.this.f26915k.getStatus() != AsyncTask.Status.PENDING) {
                C12010c.this.f26915k = null;
            } else {
                C12010c.this.f26915k.execute(Integer.valueOf(C12010c.this.f26906b));
            }
        }

        /* renamed from: a */
        public void onPostExecute(Camera camera) {
            if (C12010c.this.f26915k != this || !C12010c.this.f26908d) {
                C12010c.this.m7544a(camera);
                m7496a();
                return;
            }
            m7496a();
            if (C12153d0.m6992a("MessagingApp", 2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Opened camera ");
                sb.append(C12010c.this.f26906b);
                sb.append(" ");
                sb.append(camera != null);
                C12153d0.m6983d("MessagingApp", sb.toString());
            }
            C12010c.this.m7530b(camera);
            if (camera == null) {
                if (C12010c.this.f26919o != null) {
                    C12010c.this.f26919o.mo7482a(1, this.f26925a);
                }
                C12153d0.m6987b("MessagingApp", "Error opening camera");
            }
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            super.onCancelled();
            m7496a();
        }
    }

    /* renamed from: j.a.c0.g.e0.c$d */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/c$d.class */
    public class C12014d implements Camera.PictureCallback {

        /* renamed from: a */
        public final /* synthetic */ AbstractC12022l f26927a;

        /* renamed from: b */
        public final /* synthetic */ float f26928b;

        public C12014d(AbstractC12022l lVar, float f) {
            this.f26927a = lVar;
            this.f26928b = f;
        }

        @Override // android.hardware.Camera.PictureCallback
        public void onPictureTaken(byte[] bArr, Camera camera) {
            int i;
            int i2;
            C12010c.this.f26920p = false;
            if (C12010c.this.f26917m != camera) {
                this.f26927a.mo7468a(1);
            } else if (bArr == null) {
                this.f26927a.mo7468a(2);
            } else {
                Camera.Size pictureSize = camera.getParameters().getPictureSize();
                if (C12010c.this.f26918n == 90 || C12010c.this.f26918n == 270) {
                    i2 = pictureSize.height;
                    i = pictureSize.width;
                } else {
                    i2 = pictureSize.width;
                    i = pictureSize.height;
                }
                new AsyncTaskC12042i(i2, i, this.f26928b, bArr, C12010c.this.f26912h.m7465a(), this.f26927a).m6852b(new Void[0]);
            }
        }
    }

    /* renamed from: j.a.c0.g.e0.c$e */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/c$e.class */
    public class AsyncTaskC12015e extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        public final /* synthetic */ Camera f26930a;

        public AsyncTaskC12015e(Camera camera) {
            this.f26930a = camera;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            if (C12153d0.m6992a("MessagingApp", 2)) {
                C12153d0.m6983d("MessagingApp", "Releasing camera " + C12010c.this.f26906b);
            }
            C12010c.f26904u.mo7489a(this.f26930a);
            return null;
        }
    }

    /* renamed from: j.a.c0.g.e0.c$f */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/c$f.class */
    public class C12016f implements Camera.AutoFocusMoveCallback {
        public C12016f() {
        }

        @Override // android.hardware.Camera.AutoFocusMoveCallback
        public void onAutoFocusMoving(boolean z, Camera camera) {
            C12010c.this.f26922r.m7327a(z);
        }
    }

    /* renamed from: j.a.c0.g.e0.c$g */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/c$g.class */
    public class C12017g implements MediaRecorder.OnErrorListener {
        public C12017g() {
        }

        @Override // android.media.MediaRecorder.OnErrorListener
        public void onError(MediaRecorder mediaRecorder, int i, int i2) {
            if (C12010c.this.f26919o != null) {
                C12010c.this.f26919o.mo7482a(5, null);
            }
            C12010c.this.m7504s();
        }
    }

    /* renamed from: j.a.c0.g.e0.c$h */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/c$h.class */
    public class C12018h implements MediaRecorder.OnInfoListener {
        public C12018h() {
        }

        @Override // android.media.MediaRecorder.OnInfoListener
        public void onInfo(MediaRecorder mediaRecorder, int i, int i2) {
            if (i == 800 || i == 801) {
                C12010c.this.m7503t();
            }
        }
    }

    /* renamed from: j.a.c0.g.e0.c$i */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/c$i.class */
    public class C12019i implements Camera.AutoFocusCallback {
        public C12019i() {
        }

        @Override // android.hardware.Camera.AutoFocusCallback
        public void onAutoFocus(boolean z, Camera camera) {
            C12010c.this.f26922r.m7326a(z, false);
        }
    }

    /* renamed from: j.a.c0.g.e0.c$j */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/c$j.class */
    public interface AbstractC12020j {
        /* renamed from: a */
        void mo7482a(int i, Exception exc);

        /* renamed from: w */
        void mo7469w();
    }

    /* renamed from: j.a.c0.g.e0.c$k */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/c$k.class */
    public interface AbstractC12021k {
        /* renamed from: a */
        int mo7492a();

        /* renamed from: a */
        Camera mo7491a(int i);

        /* renamed from: a */
        void mo7490a(int i, Camera.CameraInfo cameraInfo);

        /* renamed from: a */
        void mo7489a(Camera camera);
    }

    /* renamed from: j.a.c0.g.e0.c$l */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/c$l.class */
    public interface AbstractC12022l {
        /* renamed from: a */
        void mo7468a(int i);

        /* renamed from: a */
        void mo7467a(Uri uri, String str, int i, int i2);

        /* renamed from: a */
        void mo7466a(Exception exc);
    }

    /* renamed from: j.a.c0.g.e0.c$m */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/c$m.class */
    public class C12023m extends OrientationEventListener {
        public C12023m(Context context) {
            super(context);
        }

        @Override // android.view.OrientationEventListener
        public void onOrientationChanged(int i) {
            C12010c.this.m7498y();
        }
    }

    /* renamed from: j.a.c0.g.e0.c$n */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/c$n.class */
    public static class C12024n implements Comparator<Camera.Size> {

        /* renamed from: a */
        public final int f26937a;

        /* renamed from: b */
        public final int f26938b;

        /* renamed from: c */
        public final float f26939c;

        /* renamed from: d */
        public final int f26940d;

        public C12024n(int i, int i2, float f, int i3) {
            this.f26937a = i;
            this.f26938b = i2;
            this.f26939c = f;
            this.f26940d = i3;
        }

        /* renamed from: a */
        public int compare(Camera.Size size, Camera.Size size2) {
            boolean z = size.width <= this.f26937a && size.height <= this.f26938b;
            boolean z2 = false;
            if (size2.width <= this.f26937a) {
                z2 = false;
                if (size2.height <= this.f26938b) {
                    z2 = true;
                }
            }
            int i = -1;
            if (z != z2) {
                if (size.width > this.f26937a) {
                    i = 1;
                }
                return i;
            }
            float abs = Math.abs((size.width / size.height) - this.f26939c);
            float abs2 = Math.abs((size2.width / size2.height) - this.f26939c);
            if (abs == abs2) {
                return Math.abs((size.width * size.height) - this.f26940d) - Math.abs((size2.width * size2.height) - this.f26940d);
            }
            if (abs - abs2 >= 0.0f) {
                i = 1;
            }
            return i;
        }
    }

    public C12010c() {
        boolean z;
        boolean z2;
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        int a = f26904u.mo7492a();
        int i = 0;
        boolean z3 = false;
        boolean z4 = false;
        while (true) {
            z = z3;
            z2 = z4;
            if (i >= a) {
                break;
            }
            try {
                f26904u.mo7490a(i, cameraInfo);
                if (cameraInfo.facing == 1) {
                    z = true;
                } else {
                    z = z3;
                    if (cameraInfo.facing == 0) {
                        z4 = true;
                        z = z3;
                    }
                }
                if (z && z4) {
                    z2 = z4;
                    break;
                } else {
                    i++;
                    z3 = z;
                }
            } catch (RuntimeException e) {
                C12153d0.m6986b("MessagingApp", "Unable to load camera info", e);
                z2 = z4;
                z = z3;
            }
        }
        boolean z5 = false;
        if (z) {
            z5 = false;
            if (z2) {
                z5 = true;
            }
        }
        this.f26907c = z5;
        this.f26922r = new C12065b(this, Looper.getMainLooper());
        this.f26914j = true;
    }

    /* renamed from: A */
    public static C12010c m7550A() {
        if (f26903t == null) {
            f26903t = new C12010c();
        }
        return f26903t;
    }

    /* renamed from: B */
    public static boolean m7549B() {
        return C13878a3.m3217d("android.permission.CAMERA");
    }

    /* renamed from: a */
    public final float m7546a(int i, int i2, int i3, int i4) {
        if (i3 <= 0 || i4 <= 0) {
            C12153d0.m6981e("MessagingApp", "Max image size not loaded in MmsConfig");
            return 1.0f;
        } else if (i > i3 || i2 > i4) {
            return Math.min((i3 * 1.0f) / i, (i4 * 1.0f) / i2);
        } else {
            return 1.0f;
        }
    }

    /* renamed from: a */
    public final Camera.Size m7545a(Camera.Size size) {
        ArrayList arrayList = new ArrayList(this.f26917m.getParameters().getSupportedPreviewSizes());
        int i = size.width;
        float f = i;
        int i2 = size.height;
        Collections.sort(arrayList, new C12024n(Integer.MAX_VALUE, Integer.MAX_VALUE, f / i2, i * i2));
        return (Camera.Size) arrayList.get(0);
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.p497o.C12065b.AbstractC12066a
    /* renamed from: a */
    public void mo7306a() {
        Camera camera = this.f26917m;
        if (camera != null) {
            try {
                Camera.Parameters parameters = camera.getParameters();
                parameters.setFocusMode(this.f26922r.m7316e());
                if (parameters.getMaxNumFocusAreas() > 0) {
                    parameters.setFocusAreas(this.f26922r.m7318d());
                }
                parameters.setMeteringAreas(this.f26922r.m7314f());
                this.f26917m.setParameters(parameters);
            } catch (RuntimeException e) {
                C12153d0.m6987b("MessagingApp", "RuntimeException in CameraManager setFocusParameters");
            }
        }
    }

    /* renamed from: a */
    public void m7548a(float f, @NonNull AbstractC12022l lVar) {
        C12151d.m6999b(!this.f26909e);
        C12151d.m6999b(!this.f26920p);
        C12151d.m7000b(lVar);
        if (this.f26917m == null) {
            lVar.mo7466a((Exception) null);
            return;
        }
        C12014d dVar = new C12014d(lVar, f);
        this.f26920p = true;
        try {
            this.f26917m.takePicture(null, null, null, dVar);
        } catch (RuntimeException e) {
            C12153d0.m6986b("MessagingApp", "RuntimeException in CameraManager.takePicture", e);
            this.f26920p = false;
            AbstractC12020j jVar = this.f26919o;
            if (jVar != null) {
                jVar.mo7482a(7, e);
            }
        }
    }

    /* renamed from: a */
    public final void m7544a(Camera camera) {
        if (camera != null) {
            this.f26922r.m7312h();
            new AsyncTaskC12015e(camera).execute(new Void[0]);
        }
    }

    /* renamed from: a */
    public void m7543a(RenderOverlay renderOverlay) {
        this.f26922r.m7329a(renderOverlay != null ? renderOverlay.m26945b() : null);
    }

    /* renamed from: a */
    public void m7542a(C11617j.AbstractC11623f fVar) {
        this.f26921q = fVar;
    }

    /* renamed from: a */
    public void m7541a(AbstractC12020j jVar) {
        AbstractC12020j jVar2;
        C12151d.m7013a();
        this.f26919o = jVar;
        if (!this.f26914j && (jVar2 = this.f26919o) != null) {
            jVar2.mo7482a(6, null);
        }
    }

    /* renamed from: a */
    public void m7540a(AbstractC12022l lVar) {
        C12151d.m7000b(lVar);
        C12151d.m6999b(!m7510m());
        this.f26911g = lVar;
        m7499x();
    }

    /* renamed from: a */
    public void m7534a(C12034e eVar) {
        if (eVar != this.f26912h) {
            if (eVar != null) {
                C12151d.m6999b(eVar.m7459b());
                eVar.m7460a(new View$OnTouchListenerC12012b());
            }
            this.f26912h = eVar;
            m7500w();
        }
    }

    /* renamed from: a */
    public final void m7533a(String str, Camera.Size size) {
        C12153d0.m6985c("MessagingApp", str + size.width + "x" + size.height + " (" + (size.width / size.height) + ")");
    }

    /* renamed from: a */
    public final void m7532a(boolean z) {
        C12060m mVar = this.f26910f;
        if (mVar != null) {
            this.f26909e = false;
            if (z) {
                mVar.m7347a();
                AbstractC12022l lVar = this.f26911g;
                if (lVar != null) {
                    this.f26911g = null;
                    lVar.mo7467a(null, null, 0, 0);
                }
            }
            this.f26910f.release();
            this.f26910f = null;
            Camera camera = this.f26917m;
            if (camera != null) {
                try {
                    camera.reconnect();
                } catch (IOException e) {
                    C12153d0.m6986b("MessagingApp", "IOException in CameraManager.releaseMediaRecorder", e);
                    AbstractC12020j jVar = this.f26919o;
                    if (jVar != null) {
                        jVar.mo7482a(1, e);
                    }
                } catch (RuntimeException e2) {
                    C12153d0.m6986b("MessagingApp", "RuntimeException in CameraManager.releaseMediaRecorder", e2);
                    AbstractC12020j jVar2 = this.f26919o;
                    if (jVar2 != null) {
                        jVar2.mo7482a(1, e2);
                    }
                }
            }
            m7504s();
        }
    }

    /* renamed from: a */
    public boolean m7547a(int i) {
        try {
            if (this.f26906b >= 0 && this.f26905a.facing == i) {
                return true;
            }
            int a = f26904u.mo7492a();
            C12151d.m6999b(a > 0);
            this.f26906b = -1;
            m7530b((Camera) null);
            Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
            int i2 = 0;
            while (true) {
                if (i2 >= a) {
                    break;
                }
                f26904u.mo7490a(i2, cameraInfo);
                if (cameraInfo.facing == i) {
                    this.f26906b = i2;
                    f26904u.mo7490a(i2, this.f26905a);
                    break;
                }
                i2++;
            }
            if (this.f26906b < 0) {
                this.f26906b = 0;
                f26904u.mo7490a(0, this.f26905a);
            }
            if (!this.f26908d) {
                return true;
            }
            m7505r();
            return true;
        } catch (RuntimeException e) {
            C12153d0.m6986b("MessagingApp", "RuntimeException in CameraManager.selectCamera", e);
            AbstractC12020j jVar = this.f26919o;
            if (jVar == null) {
                return false;
            }
            jVar.mo7482a(1, e);
            return false;
        }
    }

    /* renamed from: b */
    public void m7531b(int i) {
        if (this.f26906b != i) {
            try {
                this.f26906b = i;
                f26904u.mo7490a(this.f26906b, this.f26905a);
                if (this.f26908d) {
                    m7505r();
                }
            } catch (RuntimeException e) {
                C12153d0.m6986b("MessagingApp", "RuntimeException in CameraManager.selectCameraByIndex", e);
                AbstractC12020j jVar = this.f26919o;
                if (jVar != null) {
                    jVar.mo7482a(1, e);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m7530b(Camera camera) {
        if (this.f26917m != camera) {
            m7532a(true);
            m7544a(this.f26917m);
            this.f26917m = camera;
            m7500w();
            AbstractC12020j jVar = this.f26919o;
            if (jVar != null) {
                jVar.mo7469w();
            }
        }
    }

    /* renamed from: b */
    public void m7527b(boolean z) {
        if (this.f26909e != z) {
            this.f26909e = z;
            m7501v();
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.p497o.C12065b.AbstractC12066a
    /* renamed from: b */
    public boolean mo7305b() {
        return false;
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.p497o.C12065b.AbstractC12066a
    /* renamed from: c */
    public void mo7304c() {
        Camera camera = this.f26917m;
        if (camera != null) {
            try {
                camera.cancelAutoFocus();
            } catch (RuntimeException e) {
                C12153d0.m6986b("MessagingApp", "RuntimeException in CameraManager.cancelAutoFocus", e);
            }
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.p497o.C12065b.AbstractC12066a
    /* renamed from: d */
    public void mo7303d() {
        Camera camera = this.f26917m;
        if (camera != null) {
            try {
                camera.autoFocus(new C12019i());
            } catch (RuntimeException e) {
                C12153d0.m6986b("MessagingApp", "RuntimeException in CameraManager.autoFocus", e);
                this.f26922r.m7326a(false, false);
            }
        }
    }

    /* renamed from: e */
    public final Camera.Size m7524e() {
        int i;
        int i2;
        Resources resources = this.f26912h.m7465a().getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        int i3 = resources.getConfiguration().orientation;
        int i4 = this.f26905a.orientation;
        int i5 = i4;
        if (i3 == 2) {
            i5 = i4 + 90;
        }
        if (i5 % 180 == 0) {
            i2 = displayMetrics.widthPixels;
            i = displayMetrics.heightPixels;
        } else {
            i2 = displayMetrics.heightPixels;
            i = displayMetrics.widthPixels;
        }
        C11828f i6 = m7516i();
        int f = i6.m8187f();
        int e = i6.m8188e();
        float a = m7546a(i2, i, f, e);
        float f2 = ((int) (i2 * a)) / ((int) (i * a));
        AbstractC12170i.m6941a().mo6920a("bugle_camera_aspect_ratio", f2);
        ArrayList arrayList = new ArrayList(this.f26917m.getParameters().getSupportedPictureSizes());
        Collections.sort(arrayList, new C12024n(f, e, f2, f * e));
        return (Camera.Size) arrayList.get(0);
    }

    /* renamed from: f */
    public void m7522f() {
        this.f26908d = false;
        m7530b((Camera) null);
    }

    /* renamed from: g */
    public int m7520g() {
        return this.f26906b;
    }

    /* renamed from: h */
    public Camera.CameraInfo m7518h() {
        if (this.f26906b == -1) {
            return null;
        }
        return this.f26905a;
    }

    /* renamed from: i */
    public final C11828f m7516i() {
        C11617j.AbstractC11623f fVar = this.f26921q;
        return C11828f.m8193a(fVar != null ? fVar.mo7384a() : -1);
    }

    /* renamed from: j */
    public boolean m7514j() {
        return f26904u.mo7492a() > 0;
    }

    /* renamed from: k */
    public boolean m7512k() {
        return this.f26907c;
    }

    /* renamed from: l */
    public boolean m7511l() {
        return this.f26917m != null && !this.f26920p && this.f26914j;
    }

    /* renamed from: m */
    public boolean m7510m() {
        return this.f26909e && this.f26911g != null;
    }

    /* renamed from: n */
    public boolean m7509n() {
        return this.f26909e;
    }

    /* renamed from: o */
    public final void m7508o() {
        Activity a = C14191v.m2260a(this.f26912h.m7465a());
        int rotation = ((WindowManager) a.getSystemService("window")).getDefaultDisplay().getRotation();
        this.f26923s = Integer.valueOf(a.getRequestedOrientation());
        if (rotation == 0) {
            a.setRequestedOrientation(1);
        } else if (rotation == 1) {
            a.setRequestedOrientation(0);
        } else if (rotation == 2) {
            a.setRequestedOrientation(9);
        } else if (rotation == 3) {
            a.setRequestedOrientation(8);
        }
    }

    /* renamed from: p */
    public void m7507p() {
        m7530b((Camera) null);
    }

    /* renamed from: q */
    public void m7506q() {
        if (this.f26908d) {
            m7505r();
        }
    }

    /* renamed from: r */
    public void m7505r() {
        boolean z;
        if (this.f26906b == -1) {
            m7547a(0);
        }
        this.f26908d = true;
        if (this.f26916l != this.f26906b && this.f26917m == null) {
            if (this.f26915k != null) {
                this.f26916l = -1;
                z = true;
            } else {
                z = false;
            }
            this.f26916l = this.f26906b;
            this.f26915k = new AsyncTaskC12013c();
            if (C12153d0.m6992a("MessagingApp", 2)) {
                C12153d0.m6983d("MessagingApp", "Start opening camera " + this.f26906b);
            }
            if (!z) {
                this.f26915k.execute(Integer.valueOf(this.f26906b));
            }
        }
    }

    /* renamed from: s */
    public final void m7504s() {
        if (this.f26923s != null) {
            Activity a = C14191v.m2260a(this.f26912h.m7465a());
            if (a != null) {
                a.setRequestedOrientation(this.f26923s.intValue());
            }
            this.f26923s = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e2  */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m7503t() {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p491g.p496e0.C12010c.m7503t():void");
    }

    /* renamed from: u */
    public void m7502u() {
        int i = 0;
        C12151d.m6999b(this.f26906b >= 0);
        if (this.f26905a.facing != 1) {
            i = 1;
        }
        m7547a(i);
    }

    /* renamed from: v */
    public final void m7501v() {
        Camera camera;
        if (!this.f26909e || (camera = this.f26917m) == null || this.f26912h == null) {
            m7532a(true);
        } else if (this.f26910f == null) {
            try {
                camera.unlock();
                this.f26910f = new C12060m(this.f26917m, this.f26906b, this.f26918n, m7516i().m8186g());
                this.f26910f.prepare();
                m7499x();
            } catch (FileNotFoundException e) {
                C12153d0.m6986b("MessagingApp", "FileNotFoundException in CameraManager.tryInitOrCleanupVideoMode", e);
                AbstractC12020j jVar = this.f26919o;
                if (jVar != null) {
                    jVar.mo7482a(4, e);
                }
                m7527b(false);
            } catch (IOException e2) {
                C12153d0.m6986b("MessagingApp", "IOException in CameraManager.tryInitOrCleanupVideoMode", e2);
                AbstractC12020j jVar2 = this.f26919o;
                if (jVar2 != null) {
                    jVar2.mo7482a(3, e2);
                }
                m7527b(false);
            } catch (RuntimeException e3) {
                C12153d0.m6986b("MessagingApp", "RuntimeException in CameraManager.tryInitOrCleanupVideoMode", e3);
                AbstractC12020j jVar3 = this.f26919o;
                if (jVar3 != null) {
                    jVar3.mo7482a(3, e3);
                }
                m7527b(false);
            }
        }
    }

    /* renamed from: w */
    public final void m7500w() {
        Camera camera;
        boolean z = true;
        if (this.f26912h == null || (camera = this.f26917m) == null) {
            C12023m mVar = this.f26913i;
            if (mVar != null) {
                mVar.disable();
                this.f26913i = null;
            }
            m7532a(true);
            this.f26922r.m7310j();
            return;
        }
        try {
            camera.stopPreview();
            m7498y();
            Camera.Parameters parameters = this.f26917m.getParameters();
            Camera.Size e = m7524e();
            Camera.Size a = m7545a(e);
            parameters.setPreviewSize(a.width, a.height);
            parameters.setPictureSize(e.width, e.height);
            m7533a("Setting preview size: ", a);
            m7533a("Setting picture size: ", e);
            this.f26912h.m7462a(a, this.f26905a.orientation);
            Iterator<String> it = parameters.getSupportedFocusModes().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                if (TextUtils.equals(next, "continuous-picture")) {
                    parameters.setFocusMode(next);
                    break;
                }
            }
            this.f26917m.setParameters(parameters);
            this.f26912h.m7461a(this.f26917m);
            this.f26917m.startPreview();
            this.f26917m.setAutoFocusMoveCallback(new C12016f());
            this.f26922r.m7331a(this.f26917m.getParameters());
            C12065b bVar = this.f26922r;
            if (this.f26905a.facing != 0) {
                z = false;
            }
            bVar.m7321b(z);
            this.f26922r.m7311i();
            m7501v();
            if (this.f26913i == null) {
                this.f26913i = new C12023m(this.f26912h.m7465a());
                this.f26913i.enable();
            }
        } catch (IOException e2) {
            C12153d0.m6986b("MessagingApp", "IOException in CameraManager.tryShowPreview", e2);
            AbstractC12020j jVar = this.f26919o;
            if (jVar != null) {
                jVar.mo7482a(2, e2);
            }
        } catch (RuntimeException e3) {
            C12153d0.m6986b("MessagingApp", "RuntimeException in CameraManager.tryShowPreview", e3);
            AbstractC12020j jVar2 = this.f26919o;
            if (jVar2 != null) {
                jVar2.mo7482a(2, e3);
            }
        }
    }

    /* renamed from: x */
    public final void m7499x() {
        C12060m mVar = this.f26910f;
        if (mVar != null && this.f26911g != null) {
            mVar.setOnErrorListener(new C12017g());
            this.f26910f.setOnInfoListener(new C12018h());
            try {
                this.f26910f.start();
                C14191v.m2260a(this.f26912h.m7465a()).getWindow().addFlags(128);
                m7508o();
            } catch (IllegalStateException e) {
                C12153d0.m6986b("MessagingApp", "IllegalStateException in CameraManager.tryStartVideoCapture", e);
                AbstractC12020j jVar = this.f26919o;
                if (jVar != null) {
                    jVar.mo7482a(5, e);
                }
                m7527b(false);
                m7504s();
            } catch (RuntimeException e2) {
                C12153d0.m6986b("MessagingApp", "RuntimeException in CameraManager.tryStartVideoCapture", e2);
                AbstractC12020j jVar2 = this.f26919o;
                if (jVar2 != null) {
                    jVar2.mo7482a(5, e2);
                }
                m7527b(false);
                m7504s();
            }
        }
    }

    /* renamed from: y */
    public final void m7498y() {
        C12034e eVar;
        int i;
        int i2;
        if (this.f26917m != null && (eVar = this.f26912h) != null && !this.f26920p) {
            int rotation = ((WindowManager) eVar.m7465a().getSystemService("window")).getDefaultDisplay().getRotation();
            int i3 = 0;
            if (rotation != 0) {
                i3 = rotation != 1 ? rotation != 2 ? rotation != 3 ? 0 : 270 : 180 : 90;
            }
            Camera.CameraInfo cameraInfo = this.f26905a;
            if (cameraInfo.facing == 1) {
                i = (cameraInfo.orientation + i3) % 360;
                i2 = (360 - i) % 360;
            } else {
                i = ((cameraInfo.orientation - i3) + 360) % 360;
                i2 = i;
            }
            this.f26918n = i;
            if (this.f26910f == null) {
                try {
                    this.f26917m.setDisplayOrientation(i2);
                    Camera.Parameters parameters = this.f26917m.getParameters();
                    parameters.setRotation(i);
                    this.f26917m.setParameters(parameters);
                } catch (RuntimeException e) {
                    C12153d0.m6986b("MessagingApp", "RuntimeException in CameraManager.updateCameraOrientation", e);
                    AbstractC12020j jVar = this.f26919o;
                    if (jVar != null) {
                        jVar.mo7482a(1, e);
                    }
                }
            }
        }
    }
}
