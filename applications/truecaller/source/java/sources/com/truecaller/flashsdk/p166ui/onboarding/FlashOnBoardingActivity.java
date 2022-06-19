package com.truecaller.flashsdk.p166ui.onboarding;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.airbnb.lottie.LottieAnimationView;
import com.amazon.device.ads.MraidCloseCommand;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.flashsdk.C3909R;
import com.truecaller.flashsdk.p166ui.customviews.ArrowView;
import com.truecaller.flashsdk.p166ui.customviews.BouncingView;
import com.truecaller.flashsdk.p166ui.send.SendActivity;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import o3.c.b;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1365y.p1366a.p1375i.AbstractC21544b;
import p193e.p194a.p1365y.p1366a.p1375i.AbstractC21546d;
import p193e.p194a.p1365y.p1366a.p1375i.C21543a;
import p193e.p194a.p1365y.p1366a.p1375i.p1376e.C21547a;
import p193e.p194a.p1365y.p1366a.p1375i.p1376e.C21548b;
import p193e.p194a.p1365y.p1366a.p1375i.p1376e.C21549c;
import p193e.p194a.p1365y.p1366a.p1375i.p1376e.C21550d;
import p193e.p194a.p1365y.p1366a.p1375i.p1376e.C21551e;
import p193e.p194a.p1365y.p1382c.C21632c;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� N2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001%B\u0007¢\u0006\u0004\bM\u0010\u0011J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0013\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0014\u0010\u0011J\u000f\u0010\u0015\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0015\u0010\u0011J\u000f\u0010\u0016\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0016\u0010\u0011J\u0017\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001b\u0010\u0011J\u001f\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0007H\u0016¢\u0006\u0004\b!\u0010\u0011J\u000f\u0010\"\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\"\u0010\u0011J\u000f\u0010#\u001a\u00020\u0007H\u0016¢\u0006\u0004\b#\u0010\u0011R\u0016\u0010'\u001a\u00020$8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u00102\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00106\u001a\u0002038\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u0010:\u001a\u0002078\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010<\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b;\u00101R\"\u0010D\u001a\u00020=8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u0016\u0010H\u001a\u00020E8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u0010L\u001a\u00020I8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bJ\u0010K¨\u0006O"}, d2 = {"Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;", "Ln3/b/a/h;", "Le/a/y/a/i/d;", "Lcom/truecaller/flashsdk/ui/customviews/BouncingView$c;", "Landroid/view/View$OnClickListener;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "canTryFlashWithYourself", "", "footerText", "L", "(ZLjava/lang/String;)V", "onStart", "()V", "K5", "G5", "onStop", "W7", "L7", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", "N3", "yourName", "", "yourPhone", "u8", "(Ljava/lang/String;J)V", "T8", "Y1", MraidCloseCommand.NAME, "Lcom/truecaller/flashsdk/ui/customviews/BouncingView;", "a", "Lcom/truecaller/flashsdk/ui/customviews/BouncingView;", "bouncingView", "Landroid/widget/Button;", "f", "Landroid/widget/Button;", "sendButton", "Lcom/truecaller/flashsdk/ui/customviews/ArrowView;", "i", "Lcom/truecaller/flashsdk/ui/customviews/ArrowView;", "arrowView", "d", "Landroid/view/View;", "layerView", "Landroid/widget/ImageView;", C22021b.f61237c, "Landroid/widget/ImageView;", "bottomImage", "Landroid/widget/TextView;", "g", "Landroid/widget/TextView;", "tryFlashWithYourself", AbstractC2405c.f7629a, "flashIntroContainer", "Le/a/y/a/i/b;", "j", "Le/a/y/a/i/b;", "getOnBoardingPresenter", "()Le/a/y/a/i/b;", "setOnBoardingPresenter", "(Le/a/y/a/i/b;)V", "onBoardingPresenter", "Landroid/animation/AnimatorSet;", "e", "Landroid/animation/AnimatorSet;", "animSet", "Lcom/airbnb/lottie/LottieAnimationView;", "h", "Lcom/airbnb/lottie/LottieAnimationView;", "logoLottieView", "<init>", "k", "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.flashsdk.ui.onboarding.FlashOnBoardingActivity */
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity.class */
public final class FlashOnBoardingActivity extends h implements AbstractC21546d, BouncingView.AbstractC3941c, View.OnClickListener {

    /* renamed from: k */
    public static final C3967a f12177k = new C3967a(null);

    /* renamed from: a */
    public BouncingView f12178a;

    /* renamed from: b */
    public ImageView f12179b;

    /* renamed from: c */
    public View f12180c;

    /* renamed from: d */
    public View f12181d;

    /* renamed from: e */
    public final AnimatorSet f12182e = new AnimatorSet();

    /* renamed from: f */
    public Button f12183f;

    /* renamed from: g */
    public TextView f12184g;

    /* renamed from: h */
    public LottieAnimationView f12185h;

    /* renamed from: i */
    public ArrowView f12186i;
    @Inject

    /* renamed from: j */
    public AbstractC21544b f12187j;

    /* renamed from: com.truecaller.flashsdk.ui.onboarding.FlashOnBoardingActivity$a */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$a.class */
    public static final class C3967a {
        public C3967a(f fVar) {
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.onboarding.FlashOnBoardingActivity$b */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$b.class */
    public static final class View$OnTouchListenerC3968b implements View.OnTouchListener {
        public View$OnTouchListenerC3968b() {
            FlashOnBoardingActivity.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            FlashOnBoardingActivity.this.f12182e.end();
            return false;
        }
    }

    /* renamed from: com.truecaller.flashsdk.ui.onboarding.FlashOnBoardingActivity$c */
    /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$c.class */
    public static final class C3969c extends AnimatorListenerAdapter {

        /* renamed from: com.truecaller.flashsdk.ui.onboarding.FlashOnBoardingActivity$c$a */
        /* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$c$a.class */
        public static final class RunnableC3970a implements Runnable {
            public RunnableC3970a() {
                C3969c.this = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                LottieAnimationView lottieAnimationView = FlashOnBoardingActivity.this.f12185h;
                if (lottieAnimationView != null) {
                    lottieAnimationView.m42591g();
                } else {
                    l.l("logoLottieView");
                    throw null;
                }
            }
        }

        public C3969c() {
            FlashOnBoardingActivity.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            LottieAnimationView lottieAnimationView = FlashOnBoardingActivity.this.f12185h;
            if (lottieAnimationView != null) {
                lottieAnimationView.postDelayed(new RunnableC3970a(), 4000L);
            } else {
                l.l("logoLottieView");
                throw null;
            }
        }
    }

    @Override // com.truecaller.flashsdk.p166ui.customviews.BouncingView.AbstractC3941c
    /* renamed from: G5 */
    public void mo35332G5() {
        AbstractC21544b abstractC21544b = this.f12187j;
        if (abstractC21544b != null) {
            abstractC21544b.mo9464S0();
        } else {
            l.l("onBoardingPresenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1375i.AbstractC21546d
    /* renamed from: K5 */
    public void mo9461K5() {
        this.f12182e.start();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1375i.AbstractC21546d
    /* renamed from: L */
    public void mo9460L(boolean z, String str) {
        l.e(str, "footerText");
        View findViewById = findViewById(C3909R.C3911id.bouncingView);
        l.d(findViewById, "findViewById(R.id.bouncingView)");
        this.f12178a = (BouncingView) findViewById;
        int i = C3909R.C3911id.overLayViewContainer;
        View findViewById2 = findViewById(i);
        l.d(findViewById2, "findViewById(R.id.overLayViewContainer)");
        this.f12181d = findViewById2;
        View findViewById3 = findViewById(C3909R.C3911id.imageContentBottom);
        l.d(findViewById3, "findViewById(R.id.imageContentBottom)");
        this.f12179b = (ImageView) findViewById3;
        View findViewById4 = findViewById(C3909R.C3911id.imageContainerBottom);
        l.d(findViewById4, "findViewById(R.id.imageContainerBottom)");
        CardView cardView = (CardView) findViewById4;
        View findViewById5 = findViewById(C3909R.C3911id.flashIntroContainer);
        l.d(findViewById5, "findViewById(R.id.flashIntroContainer)");
        this.f12180c = findViewById5;
        View findViewById6 = findViewById(C3909R.C3911id.btnSend);
        l.d(findViewById6, "findViewById(R.id.btnSend)");
        this.f12183f = (Button) findViewById6;
        View findViewById7 = findViewById(C3909R.C3911id.tryFlashYourself);
        l.d(findViewById7, "findViewById(R.id.tryFlashYourself)");
        this.f12184g = (TextView) findViewById7;
        View findViewById8 = findViewById(C3909R.C3911id.imageOverlayBackground);
        l.d(findViewById8, "findViewById(R.id.imageOverlayBackground)");
        this.f12185h = (LottieAnimationView) findViewById8;
        View findViewById9 = findViewById(C3909R.C3911id.arrowView);
        l.d(findViewById9, "findViewById(R.id.arrowView)");
        this.f12186i = (ArrowView) findViewById9;
        Button button = this.f12183f;
        if (button == null) {
            l.l("sendButton");
            throw null;
        }
        button.setText(str);
        BouncingView bouncingView = this.f12178a;
        if (bouncingView == null) {
            l.l("bouncingView");
            throw null;
        }
        bouncingView.f12091c = this;
        bouncingView.setDragViewResId(i);
        View view = this.f12181d;
        if (view == null) {
            l.l("layerView");
            throw null;
        }
        view.setOnTouchListener(new View$OnTouchListenerC3968b());
        View view2 = this.f12181d;
        if (view2 == null) {
            l.l("layerView");
            throw null;
        }
        Property property = View.TRANSLATION_Y;
        Resources resources = getResources();
        int i2 = C3909R.dimen.bouncing_view_jump;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view2, property, 0.0f, -resources.getDimension(i2));
        l.d(ofFloat, "animator");
        ofFloat.setDuration(400);
        ofFloat.setStartDelay(700);
        ofFloat.setInterpolator(new DecelerateInterpolator());
        View view3 = this.f12181d;
        if (view3 == null) {
            l.l("layerView");
            throw null;
        }
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view3, View.TRANSLATION_Y, -getResources().getDimension(i2), 0.0f);
        l.d(ofFloat2, "animator1");
        ofFloat2.setDuration(800);
        ofFloat2.setStartDelay(50);
        ofFloat2.setInterpolator(new BounceInterpolator());
        this.f12182e.playSequentially(ofFloat, ofFloat2);
        this.f12182e.addListener(new C21543a(this));
        Button button2 = this.f12183f;
        if (button2 == null) {
            l.l("sendButton");
            throw null;
        }
        button2.setOnClickListener(this);
        TextView textView = this.f12184g;
        if (textView == null) {
            l.l("tryFlashWithYourself");
            throw null;
        }
        textView.setOnClickListener(this);
        if (!z) {
            TextView textView2 = this.f12184g;
            if (textView2 == null) {
                l.l("tryFlashWithYourself");
                throw null;
            }
            textView2.setVisibility(8);
        }
        LottieAnimationView lottieAnimationView = this.f12185h;
        if (lottieAnimationView != null) {
            lottieAnimationView.setProgress(1.0f);
        } else {
            l.l("logoLottieView");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1375i.AbstractC21546d
    /* renamed from: L7 */
    public void mo9459L7() {
        ImageView imageView = this.f12179b;
        if (imageView == null) {
            l.l("bottomImage");
            throw null;
        }
        Drawable drawable = imageView.getDrawable();
        Objects.requireNonNull(drawable, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable");
        ((AnimationDrawable) drawable).start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1375i.AbstractC21546d
    /* renamed from: N3 */
    public void mo9458N3() {
        Object clone = getIntent().clone();
        Objects.requireNonNull(clone, "null cannot be cast to non-null type android.content.Intent");
        Intent intent = (Intent) clone;
        intent.setClass(this, SendActivity.class);
        startActivity(intent);
        finish();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1375i.AbstractC21546d
    /* renamed from: T8 */
    public void mo9457T8() {
        LottieAnimationView lottieAnimationView = this.f12185h;
        if (lottieAnimationView == null) {
            l.l("logoLottieView");
            throw null;
        }
        lottieAnimationView.m42591g();
        LottieAnimationView lottieAnimationView2 = this.f12185h;
        if (lottieAnimationView2 == null) {
            l.l("logoLottieView");
            throw null;
        }
        lottieAnimationView2.f1619e.f60854c.f60782b.add(new C3969c());
        ArrowView arrowView = this.f12186i;
        if (arrowView == null) {
            l.l("arrowView");
            throw null;
        }
        arrowView.setVisibility(0);
        ArrowView arrowView2 = this.f12186i;
        if (arrowView2 != null) {
            arrowView2.m35357f();
        } else {
            l.l("arrowView");
            throw null;
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1375i.AbstractC21546d
    /* renamed from: W7 */
    public void mo9456W7() {
        this.f12182e.end();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1375i.AbstractC21546d
    /* renamed from: Y1 */
    public void mo9455Y1() {
        LottieAnimationView lottieAnimationView = this.f12185h;
        if (lottieAnimationView == null) {
            l.l("logoLottieView");
            throw null;
        }
        lottieAnimationView.m42594d();
        ArrowView arrowView = this.f12186i;
        if (arrowView != null) {
            arrowView.m35359d();
        } else {
            l.l("arrowView");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1375i.AbstractC21546d
    public void close() {
        finish();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        l.e(view, "v");
        AbstractC21544b abstractC21544b = this.f12187j;
        if (abstractC21544b != null) {
            abstractC21544b.mo9465R0(view.getId());
        } else {
            l.l("onBoardingPresenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        setTheme(C21632c.m9330b().mo9329A());
        FlashOnBoardingActivity.super.onCreate(bundle);
        setContentView(C3909R.layout.layout_onbaording_v2);
        C21632c c21632c = C21632c.f60288b;
        AbstractC21666a m9331a = C21632c.m9331a();
        C21549c c21549c = new C21549c(this);
        C25225a.m3846s(c21549c, C21549c.class);
        C25225a.m3846s(m9331a, AbstractC21666a.class);
        C21550d c21550d = new C21550d(c21549c);
        Object obj = b.c;
        if (!(c21550d instanceof b)) {
            c21550d = new b(c21550d);
        }
        C21551e c21551e = new C21551e(c21549c, c21550d, new C21547a(m9331a), new C21548b(m9331a));
        if (!(c21551e instanceof b)) {
            c21551e = new b(c21551e);
        }
        AbstractC21544b abstractC21544b = (AbstractC21544b) c21551e.get();
        this.f12187j = abstractC21544b;
        if (abstractC21544b == null) {
            l.l("onBoardingPresenter");
            throw null;
        }
        Intent intent = getIntent();
        l.d(intent, "intent");
        abstractC21544b.mo9463T0(intent.getExtras());
    }

    public void onStart() {
        FlashOnBoardingActivity.super.onStart();
        AbstractC21544b abstractC21544b = this.f12187j;
        if (abstractC21544b != null) {
            abstractC21544b.onStart();
        } else {
            l.l("onBoardingPresenter");
            throw null;
        }
    }

    public void onStop() {
        FlashOnBoardingActivity.super.onStop();
        AbstractC21544b abstractC21544b = this.f12187j;
        if (abstractC21544b != null) {
            abstractC21544b.onStop();
        } else {
            l.l("onBoardingPresenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1365y.p1366a.p1375i.AbstractC21546d
    /* renamed from: u8 */
    public void mo9454u8(String str, long j) {
        l.e(str, "yourName");
        Object clone = getIntent().clone();
        Objects.requireNonNull(clone, "null cannot be cast to non-null type android.content.Intent");
        Intent intent = (Intent) clone;
        intent.putExtra("to_phone", j);
        intent.putExtra("to_name", str);
        intent.setClass(this, SendActivity.class);
        startActivity(intent);
        finish();
    }
}
