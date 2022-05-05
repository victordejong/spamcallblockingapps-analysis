package p459j.p460a.p474c0.p491g.p496e0;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.Camera;
import android.net.Uri;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.widget.Chronometer;
import android.widget.ImageButton;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$fraction;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$integer;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.messaging.datamodel.data.MediaPickerMessagePartData;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.p078ui.mediapicker.CameraMediaChooserView;
import gogolook.callgogolook2.messaging.p078ui.mediapicker.HardwareCameraPreview;
import gogolook.callgogolook2.messaging.p078ui.mediapicker.camerafocus.RenderOverlay;
import p459j.p460a.p474c0.p475c.p478y.C11617j;
import p459j.p460a.p474c0.p491g.p496e0.C12010c;
import p459j.p460a.p474c0.p491g.p496e0.C12034e;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12212s0;
import p459j.p460a.p582w0.C13878a3;
/* renamed from: j.a.c0.g.e0.d */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/d.class */
public class C12025d extends AbstractC12046k implements C12010c.AbstractC12020j {

    /* renamed from: i */
    public C12034e.AbstractC12035a f26941i;

    /* renamed from: j */
    public HardwareCameraPreview f26942j;

    /* renamed from: k */
    public ImageButton f26943k;

    /* renamed from: l */
    public ImageButton f26944l;

    /* renamed from: m */
    public ImageButton f26945m;

    /* renamed from: n */
    public ImageButton f26946n;

    /* renamed from: o */
    public ImageButton f26947o;

    /* renamed from: p */
    public Chronometer f26948p;

    /* renamed from: q */
    public boolean f26949q;

    /* renamed from: r */
    public View f26950r;

    /* renamed from: s */
    public View f26951s;

    /* renamed from: t */
    public View f26952t;

    /* renamed from: u */
    public boolean f26953u = false;

    /* renamed from: v */
    public int f26954v;

    /* renamed from: j.a.c0.g.e0.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/d$a.class */
    public class View$OnTouchListenerC12026a implements View.OnTouchListener {
        public View$OnTouchListenerC12026a(C12025d dVar) {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return C12010c.m7550A().m7509n();
        }
    }

    /* renamed from: j.a.c0.g.e0.d$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/d$b.class */
    public class View$OnClickListenerC12027b implements View.OnClickListener {
        public View$OnClickListenerC12027b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C12025d.this.f26990c.m7363f(true);
        }
    }

    /* renamed from: j.a.c0.g.e0.d$c */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/d$c.class */
    public class View$OnClickListenerC12028c implements View.OnClickListener {
        public View$OnClickListenerC12028c(C12025d dVar) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C12010c.m7550A().m7502u();
        }
    }

    /* renamed from: j.a.c0.g.e0.d$d */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/d$d.class */
    public class View$OnClickListenerC12029d implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ View f26956a;

        /* renamed from: j.a.c0.g.e0.d$d$a */
        /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/d$d$a.class */
        public class C12030a implements C12010c.AbstractC12022l {
            public C12030a() {
            }

            @Override // p459j.p460a.p474c0.p491g.p496e0.C12010c.AbstractC12022l
            /* renamed from: a */
            public void mo7468a(int i) {
                if (i == 2) {
                    C12212s0.m6796a((int) R$string.camera_media_failure);
                }
                C12025d.this.m7483T();
            }

            @Override // p459j.p460a.p474c0.p491g.p496e0.C12010c.AbstractC12022l
            /* renamed from: a */
            public void mo7467a(Uri uri, String str, int i, int i2) {
                C12025d.this.f26948p.stop();
                if (C12025d.this.f26949q || uri == null) {
                    C12025d.this.f26949q = false;
                } else {
                    Rect rect = new Rect();
                    if (C12025d.this.f26897a != null) {
                        C12025d.this.f26897a.getGlobalVisibleRect(rect);
                    }
                    C12025d.this.f26990c.m7380a((MessagePartData) new MediaPickerMessagePartData(rect, str, uri, i, i2), true);
                }
                C12025d.this.m7483T();
            }

            @Override // p459j.p460a.p474c0.p491g.p496e0.C12010c.AbstractC12022l
            /* renamed from: a */
            public void mo7466a(Exception exc) {
                C12212s0.m6796a((int) R$string.camera_media_failure);
                C12025d.this.m7483T();
            }
        }

        public View$OnClickListenerC12029d(View view) {
            this.f26956a = view;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            float min = Math.min(C12025d.this.f26990c.m7396C().getHeight() / C12025d.this.f26941i.mo7339d().getHeight(), 1.0f);
            if (C12010c.m7550A().m7510m()) {
                C12010c.m7550A().m7503t();
                return;
            }
            C12030a aVar = new C12030a();
            if (C12010c.m7550A().m7509n()) {
                C12010c.m7550A().m7540a(aVar);
                C12025d.this.f26948p.setBase(SystemClock.elapsedRealtime());
                C12025d.this.f26948p.start();
                C12025d.this.m7483T();
                return;
            }
            C12025d.this.m7481a(this.f26956a);
            C12010c.m7550A().m7548a(min, aVar);
            C12025d.this.m7483T();
        }
    }

    /* renamed from: j.a.c0.g.e0.d$e */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/d$e.class */
    public class View$OnClickListenerC12031e implements View.OnClickListener {
        public View$OnClickListenerC12031e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!(!C12010c.m7550A().m7509n()) || C13878a3.m3199s()) {
                C12025d.this.m7486Q();
            } else {
                C12025d.this.m7484S();
            }
        }
    }

    /* renamed from: j.a.c0.g.e0.d$f */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/d$f.class */
    public class View$OnClickListenerC12032f implements View.OnClickListener {
        public View$OnClickListenerC12032f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C12025d.this.f26949q = true;
            C12010c.m7550A().m7503t();
            C12025d.this.f26990c.m7367d(true);
        }
    }

    /* renamed from: j.a.c0.g.e0.d$g  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/d$g.class */
    public class animationAnimation$AnimationListenerC12033g implements Animation.AnimationListener {

        /* renamed from: a */
        public final /* synthetic */ View f26961a;

        public animationAnimation$AnimationListenerC12033g(C12025d dVar, View view) {
            this.f26961a = view;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f26961a.setVisibility(8);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            this.f26961a.setVisibility(0);
        }
    }

    public C12025d(FragmentC12048l lVar) {
        super(lVar);
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: A */
    public boolean mo7426A() {
        if (C12010c.m7550A().m7509n()) {
            return true;
        }
        return super.mo7426A();
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: B */
    public int mo7425B() {
        return 0;
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: D */
    public int mo7423D() {
        return R$string.mediapicker_cameraChooserDescription;
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: G */
    public int mo7420G() {
        return C12010c.m7550A().m7514j() ? 3 : 0;
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: K */
    public void mo7416K() {
        HardwareCameraPreview hardwareCameraPreview = this.f26942j;
        if (hardwareCameraPreview != null) {
            this.f26953u = false;
            hardwareCameraPreview.m26984a(false);
            C12010c.m7550A().m7522f();
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: L */
    public void mo7415L() {
        HardwareCameraPreview hardwareCameraPreview = this.f26942j;
        if (hardwareCameraPreview != null) {
            this.f26953u = true;
            hardwareCameraPreview.m26984a(true);
            C12010c.m7550A().m7505r();
        }
    }

    /* renamed from: P */
    public final boolean m7487P() {
        return C12010c.m7550A().m7511l();
    }

    /* renamed from: Q */
    public final void m7486Q() {
        C12010c.m7550A().m7527b(!C12010c.m7550A().m7509n());
        if (C12010c.m7550A().m7509n() && this.f26946n != null) {
            this.f26990c.m7363f(true);
            this.f26946n.performClick();
        }
        m7483T();
    }

    /* renamed from: R */
    public final void m7485R() {
        m7404a(new String[]{"android.permission.CAMERA"}, 1);
    }

    /* renamed from: S */
    public final void m7484S() {
        m7404a(new String[]{"android.permission.CAMERA", "android.permission.RECORD_AUDIO"}, 3);
    }

    /* renamed from: T */
    public final void m7483T() {
        Context C;
        if (this.f26897a != null && (C = m7424C()) != null) {
            boolean F = this.f26990c.m7393F();
            boolean n = C12010c.m7550A().m7509n();
            boolean m = C12010c.m7550A().m7510m();
            boolean P = m7487P();
            Camera.CameraInfo h = C12010c.m7550A().m7518h();
            if (h != null) {
                int i = h.facing;
            }
            this.f26897a.setSystemUiVisibility(F ? 1 : 0);
            this.f26943k.setVisibility(!F ? 0 : 8);
            this.f26943k.setEnabled(P);
            this.f26944l.setVisibility((!F || m || !C12010c.m7550A().m7512k()) ? 8 : 0);
            this.f26944l.setImageResource(R$drawable.ic_camera_switch);
            this.f26944l.setEnabled(P);
            this.f26947o.setVisibility(m ? 0 : 8);
            this.f26948p.setVisibility(m ? 0 : 8);
            this.f26945m.setImageResource(n ? R$drawable.ic_mp_camera_small_light : R$drawable.ic_mp_video_small_light);
            this.f26945m.setContentDescription(C.getString(n ? R$string.camera_switch_to_still_mode : R$string.camera_switch_to_video_mode));
            this.f26945m.setVisibility(8);
            this.f26945m.setEnabled(P);
            ((ViewGroup.MarginLayoutParams) this.f26952t.getLayoutParams()).setMargins(0, 0, 0, F ? this.f26954v : 0);
            if (m) {
                this.f26946n.setImageResource(R$drawable.ip_mms_video_shot_btn);
                this.f26946n.setContentDescription(C.getString(R$string.camera_stop_recording));
            } else if (n) {
                this.f26946n.setImageResource(R$drawable.ic_mp_video_large_light);
                this.f26946n.setContentDescription(C.getString(R$string.camera_start_recording));
            } else {
                this.f26946n.setImageResource(R$drawable.ic_camera_shot);
                this.f26946n.setContentDescription(C.getString(R$string.camera_take_picture));
            }
            this.f26946n.setEnabled(P);
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: a */
    public int mo7411a(int i) {
        this.f26995h = i;
        return this.f26995h == 0 ? R$drawable.ic_media_picker_tab_camera : R$drawable.ic_media_picker_tab_video;
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.C12010c.AbstractC12020j
    /* renamed from: a */
    public void mo7482a(int i, Exception exc) {
        if (i != 1 && i != 2) {
            if (i == 3) {
                m7483T();
            } else if (i == 4) {
                m7483T();
            } else if (i != 7) {
                C12153d0.m6981e("MessagingApp", "Unknown camera error:" + i);
            }
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: a */
    public void mo7410a(int i, String[] strArr, int[] iArr) {
        super.mo7410a(i, strArr, iArr);
        boolean z = false;
        if (i == 1) {
            if (iArr[0] == 0) {
                z = true;
            }
            m7472f(z);
            if (z) {
                this.f26941i.mo7342a();
            }
        } else if (i == 3) {
            boolean z2 = false;
            boolean z3 = false;
            for (int i2 = 0; i2 < strArr.length; i2++) {
                boolean z4 = iArr[i2] == 0;
                if (strArr[i2].equals("android.permission.CAMERA")) {
                    z3 = z4;
                } else {
                    z3 = z3;
                    if (strArr[i2].equals("android.permission.RECORD_AUDIO")) {
                        z3 = z3;
                        z2 = z4;
                    }
                }
            }
            if (z2 && z3) {
                boolean z5 = false;
                if (z3) {
                    z5 = false;
                    if (z2) {
                        z5 = true;
                    }
                }
                m7472f(z5);
                mo7405a(true, 1);
            } else if (z3) {
                m7472f(z3);
                mo7405a(true, 0);
            }
        }
    }

    /* renamed from: a */
    public final void m7481a(View view) {
        float fraction = m7424C().getResources().getFraction(R$fraction.camera_shutter_max_alpha, 1, 1);
        int integer = m7424C().getResources().getInteger(R$integer.camera_shutter_duration) / 2;
        AnimationSet animationSet = new AnimationSet(false);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, fraction);
        long j = integer;
        alphaAnimation.setDuration(j);
        animationSet.addAnimation(alphaAnimation);
        AlphaAnimation alphaAnimation2 = new AlphaAnimation(fraction, 0.0f);
        alphaAnimation2.setStartOffset(j);
        alphaAnimation2.setDuration(j);
        animationSet.addAnimation(alphaAnimation2);
        animationSet.setAnimationListener(new animationAnimation$AnimationListenerC12033g(this, view));
        view.startAnimation(animationSet);
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: a */
    public void mo7405a(boolean z, int i) {
        super.mo7405a(z, i);
        this.f26995h = i;
        if (z) {
            if (i == 0) {
                if (C12010c.m7549B()) {
                    C12010c.m7550A().m7527b(false);
                } else {
                    m7485R();
                }
            } else if (C13878a3.m3194x()) {
                m7486Q();
            } else {
                m7484S();
            }
            if (this.f26942j != null && C12010c.m7549B()) {
                this.f26942j.m26984a(this.f26953u);
                C12010c.m7550A().m7505r();
            }
            m7483T();
        }
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12006e
    /* renamed from: b */
    public View mo7182b(ViewGroup viewGroup) {
        C12010c.m7550A().m7541a((C12010c.AbstractC12020j) this);
        C12010c.m7550A().m7542a((C11617j.AbstractC11623f) this);
        C12010c.m7550A().m7527b(false);
        CameraMediaChooserView cameraMediaChooserView = (CameraMediaChooserView) m7421F().inflate(R$layout.mediapicker_camera_chooser, viewGroup, false);
        this.f26941i = (C12034e.AbstractC12035a) cameraMediaChooserView.findViewById(R$id.camera_preview);
        this.f26942j = (HardwareCameraPreview) cameraMediaChooserView.findViewById(R$id.camera_preview);
        this.f26941i.mo7339d().setOnTouchListener(new View$OnTouchListenerC12026a(this));
        View findViewById = cameraMediaChooserView.findViewById(R$id.camera_shutter_visual);
        this.f26952t = cameraMediaChooserView.findViewById(R$id.camera_button_container);
        this.f26943k = (ImageButton) cameraMediaChooserView.findViewById(R$id.camera_fullScreen_button);
        this.f26943k.setOnClickListener(new View$OnClickListenerC12027b());
        this.f26944l = (ImageButton) cameraMediaChooserView.findViewById(R$id.camera_swapCamera_button);
        this.f26944l.setOnClickListener(new View$OnClickListenerC12028c(this));
        this.f26946n = (ImageButton) cameraMediaChooserView.findViewById(R$id.camera_capture_button);
        this.f26946n.setOnClickListener(new View$OnClickListenerC12029d(findViewById));
        this.f26945m = (ImageButton) cameraMediaChooserView.findViewById(R$id.camera_swap_mode_button);
        this.f26945m.setOnClickListener(new View$OnClickListenerC12031e());
        this.f26947o = (ImageButton) cameraMediaChooserView.findViewById(R$id.camera_cancel_button);
        this.f26947o.setOnClickListener(new View$OnClickListenerC12032f());
        this.f26948p = (Chronometer) cameraMediaChooserView.findViewById(R$id.camera_video_counter);
        C12010c.m7550A().m7543a((RenderOverlay) cameraMediaChooserView.findViewById(R$id.focus_visual));
        this.f26950r = cameraMediaChooserView.findViewById(R$id.mediapicker_enabled);
        this.f26951s = cameraMediaChooserView.findViewById(R$id.missing_permission_view);
        this.f26897a = cameraMediaChooserView;
        m7483T();
        m7472f(C12010c.m7549B());
        this.f26954v = m7424C().getResources().getDimensionPixelSize(R$dimen.app_camera_capture_button_container_margin_bottom);
        return cameraMediaChooserView;
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: d */
    public void mo7401d(boolean z) {
        super.mo7401d(z);
        if (!z && C12010c.m7550A().m7509n()) {
            C12010c.m7550A().m7527b(false);
        }
        m7483T();
    }

    @Override // p459j.p460a.p474c0.p491g.AbstractC12006e, p459j.p460a.p474c0.p491g.AbstractC12099o
    /* renamed from: e */
    public View mo7170e() {
        C12010c.m7550A().m7522f();
        C12010c.m7550A().m7541a((C12010c.AbstractC12020j) null);
        C12010c.m7550A().m7542a((C11617j.AbstractC11623f) null);
        return super.mo7170e();
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.AbstractC12046k
    /* renamed from: e */
    public void mo7400e(boolean z) {
        super.mo7400e(z);
        m7483T();
    }

    /* renamed from: f */
    public final void m7472f(boolean z) {
        View view = this.f26950r;
        if (view != null) {
            int i = 0;
            view.setVisibility(z ? 0 : 8);
            View view2 = this.f26951s;
            if (z) {
                i = 8;
            }
            view2.setVisibility(i);
        }
    }

    @Override // p459j.p460a.p474c0.p491g.p496e0.C12010c.AbstractC12020j
    /* renamed from: w */
    public void mo7469w() {
        m7483T();
    }
}
