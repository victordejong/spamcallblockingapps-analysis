package com.victor.loading.newton;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.CycleInterpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;
import p092e.p111h.p112a.C3127c;
import p092e.p111h.p112a.C3128d;
/* loaded from: classes2-dex2jar.jar:com/victor/loading/newton/NewtonCradleLoading.class */
public class NewtonCradleLoading extends LinearLayout {

    /* renamed from: b */
    private CradleBall f12571b;

    /* renamed from: c */
    private CradleBall f12572c;

    /* renamed from: d */
    private CradleBall f12573d;

    /* renamed from: e */
    private CradleBall f12574e;

    /* renamed from: f */
    private CradleBall f12575f;

    /* renamed from: g */
    private boolean f12576g = false;

    /* renamed from: h */
    RotateAnimation f12577h;

    /* renamed from: i */
    RotateAnimation f12578i;

    /* renamed from: j */
    TranslateAnimation f12579j;

    /* renamed from: k */
    TranslateAnimation f12580k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.victor.loading.newton.NewtonCradleLoading$a  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/victor/loading/newton/NewtonCradleLoading$a.class */
    public class animationAnimation$AnimationListenerC2988a implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC2988a() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (NewtonCradleLoading.this.f12576g) {
                NewtonCradleLoading.this.m601k();
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.victor.loading.newton.NewtonCradleLoading$b  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/victor/loading/newton/NewtonCradleLoading$b.class */
    public class animationAnimation$AnimationListenerC2989b implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC2989b() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (NewtonCradleLoading.this.f12576g) {
                NewtonCradleLoading.this.f12572c.startAnimation(NewtonCradleLoading.this.f12579j);
                NewtonCradleLoading.this.f12573d.startAnimation(NewtonCradleLoading.this.f12579j);
                NewtonCradleLoading.this.f12574e.startAnimation(NewtonCradleLoading.this.f12579j);
                NewtonCradleLoading.this.f12575f.startAnimation(NewtonCradleLoading.this.f12578i);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.victor.loading.newton.NewtonCradleLoading$c  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/victor/loading/newton/NewtonCradleLoading$c.class */
    public class animationAnimation$AnimationListenerC2990c implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC2990c() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            if (NewtonCradleLoading.this.f12576g) {
                NewtonCradleLoading.this.m602j();
            }
        }
    }

    public NewtonCradleLoading(Context context) {
        super(context);
        m603i(context);
    }

    public NewtonCradleLoading(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m603i(context);
    }

    public NewtonCradleLoading(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m603i(context);
    }

    /* renamed from: h */
    private void m604h() {
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, -30.0f, 1, 0.5f, 1, -3.0f);
        this.f12578i = rotateAnimation;
        rotateAnimation.setRepeatCount(1);
        this.f12578i.setRepeatMode(2);
        this.f12578i.setDuration(400L);
        this.f12578i.setInterpolator(new LinearInterpolator());
        this.f12578i.setAnimationListener(new animationAnimation$AnimationListenerC2988a());
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 2.0f, 0.0f, 0.0f);
        this.f12579j = translateAnimation;
        translateAnimation.setDuration(400L);
        this.f12579j.setInterpolator(new CycleInterpolator(2.0f));
        RotateAnimation rotateAnimation2 = new RotateAnimation(0.0f, 30.0f, 1, 0.5f, 1, -3.0f);
        this.f12577h = rotateAnimation2;
        rotateAnimation2.setRepeatCount(1);
        this.f12577h.setRepeatMode(2);
        this.f12577h.setDuration(400L);
        this.f12577h.setInterpolator(new LinearInterpolator());
        this.f12577h.setAnimationListener(new animationAnimation$AnimationListenerC2989b());
        TranslateAnimation translateAnimation2 = new TranslateAnimation(0.0f, -2.0f, 0.0f, 0.0f);
        this.f12580k = translateAnimation2;
        translateAnimation2.setDuration(400L);
        this.f12580k.setInterpolator(new CycleInterpolator(2.0f));
        this.f12580k.setAnimationListener(new animationAnimation$AnimationListenerC2990c());
    }

    /* renamed from: i */
    private void m603i(Context context) {
        LayoutInflater.from(context).inflate(C3128d.newton_cradle_loading, (ViewGroup) this, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public void m602j() {
        this.f12571b.startAnimation(this.f12577h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public void m601k() {
        this.f12572c.startAnimation(this.f12580k);
        this.f12573d.startAnimation(this.f12580k);
        this.f12574e.startAnimation(this.f12580k);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f12571b = (CradleBall) findViewById(C3127c.ball_one);
        this.f12572c = (CradleBall) findViewById(C3127c.ball_two);
        this.f12573d = (CradleBall) findViewById(C3127c.ball_three);
        this.f12574e = (CradleBall) findViewById(C3127c.ball_four);
        this.f12575f = (CradleBall) findViewById(C3127c.ball_five);
        m604h();
    }

    public void setLoadingColor(int i) {
        this.f12571b.setLoadingColor(i);
        this.f12572c.setLoadingColor(i);
        this.f12573d.setLoadingColor(i);
        this.f12574e.setLoadingColor(i);
        this.f12575f.setLoadingColor(i);
    }
}
