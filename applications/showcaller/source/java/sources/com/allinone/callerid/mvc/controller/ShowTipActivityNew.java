package com.allinone.callerid.mvc.controller;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.permission.OverlayGuideActivity;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew.class */
public class ShowTipActivityNew extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    private LinearLayout f10329A;

    /* renamed from: B */
    private Animation f10330B;

    /* renamed from: C */
    private TextView f10331C;

    /* renamed from: D */
    private RelativeLayout f10332D;

    /* renamed from: E */
    private RelativeLayout f10333E;

    /* renamed from: F */
    private RelativeLayout f10334F;

    /* renamed from: H */
    private Animation f10336H;

    /* renamed from: I */
    private Animation f10337I;

    /* renamed from: J */
    private Animation f10338J;

    /* renamed from: K */
    private RelativeLayout f10339K;

    /* renamed from: L */
    private CheckBox f10340L;

    /* renamed from: M */
    private ImageView f10341M;

    /* renamed from: N */
    private Animation f10342N;

    /* renamed from: O */
    private Animation f10343O;

    /* renamed from: P */
    private Animation f10344P;

    /* renamed from: Q */
    private Animation f10345Q;

    /* renamed from: R */
    private Animation f10346R;

    /* renamed from: S */
    private Animation f10347S;

    /* renamed from: T */
    private Animation f10348T;

    /* renamed from: U */
    private Animation f10349U;

    /* renamed from: V */
    private Animation f10350V;

    /* renamed from: W */
    private Animation f10351W;

    /* renamed from: X */
    private Animation f10352X;

    /* renamed from: Y */
    private Animation f10353Y;

    /* renamed from: Z */
    private RelativeLayout f10354Z;

    /* renamed from: a0 */
    private RelativeLayout f10355a0;

    /* renamed from: v */
    private ImageView f10358v;

    /* renamed from: w */
    private ImageView f10359w;

    /* renamed from: x */
    private TextView f10360x;

    /* renamed from: y */
    private ImageView f10361y;

    /* renamed from: z */
    private FrameLayout f10362z;

    /* renamed from: u */
    private final String f10357u = "ShowTipActivityNew";

    /* renamed from: G */
    private int f10335G = 1;

    /* renamed from: b0 */
    private Handler f10356b0 = new Handler();

    /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$a.class */
    public class animationAnimation$AnimationListenerC3208a implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3208a() {
            ShowTipActivityNew.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ShowTipActivityNew.this.f10331C.setVisibility(4);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$b.class */
    public class animationAnimation$AnimationListenerC3209b implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3209b() {
            ShowTipActivityNew.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ShowTipActivityNew.this.f10362z.setVisibility(4);
            ShowTipActivityNew.this.f10334F.setVisibility(0);
            ShowTipActivityNew.this.f10334F.startAnimation(C3767h1.m24231p());
            ShowTipActivityNew.this.f10333E.startAnimation(ShowTipActivityNew.this.f10346R);
            ShowTipActivityNew.this.f10332D.startAnimation(ShowTipActivityNew.this.f10346R);
            ShowTipActivityNew.this.f10331C.startAnimation(ShowTipActivityNew.this.f10352X);
            ShowTipActivityNew.this.f10358v.startAnimation(ShowTipActivityNew.this.f10347S);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$c.class */
    public class animationAnimation$AnimationListenerC3210c implements Animation.AnimationListener {

        /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$c$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$c$a.class */
        class RunnableC3211a implements Runnable {
            RunnableC3211a() {
                animationAnimation$AnimationListenerC3210c.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                ShowTipActivityNew.this.f10331C.setVisibility(0);
                ShowTipActivityNew.this.f10331C.setText(ShowTipActivityNew.this.getResources().getString(R$string.show_tip_calling));
                ShowTipActivityNew.this.f10331C.setAnimation(C3767h1.m24223t());
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$c$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$c$b.class */
        class RunnableC3212b implements Runnable {
            RunnableC3212b() {
                animationAnimation$AnimationListenerC3210c.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                ShowTipActivityNew.this.f10333E.setVisibility(0);
                ShowTipActivityNew.this.f10333E.startAnimation(C3767h1.m24231p());
                ShowTipActivityNew.this.f10362z.setVisibility(0);
                ShowTipActivityNew.this.f10362z.setAnimation(C3767h1.m24227r());
                ShowTipActivityNew.this.f10335G = 2;
            }
        }

        animationAnimation$AnimationListenerC3210c() {
            ShowTipActivityNew.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ShowTipActivityNew.this.f10356b0.postDelayed(new RunnableC3211a(), 1000L);
            ShowTipActivityNew.this.f10356b0.postDelayed(new RunnableC3212b(), 2500L);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$d.class */
    public class animationAnimation$AnimationListenerC3213d implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3213d() {
            ShowTipActivityNew.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ShowTipActivityNew.this.f10329A.startAnimation(ShowTipActivityNew.this.f10342N);
            ShowTipActivityNew.this.f10341M.startAnimation(ShowTipActivityNew.this.f10342N);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$e.class */
    public class animationAnimation$AnimationListenerC3214e implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3214e() {
            ShowTipActivityNew.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ShowTipActivityNew.this.f10341M.setVisibility(8);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$f.class */
    public class animationAnimation$AnimationListenerC3215f implements Animation.AnimationListener {

        /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$f$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$f$a.class */
        class RunnableC3216a implements Runnable {
            RunnableC3216a() {
                animationAnimation$AnimationListenerC3215f.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                ShowTipActivityNew.this.f10341M.setVisibility(0);
                ShowTipActivityNew.this.f10341M.startAnimation(ShowTipActivityNew.this.f10350V);
            }
        }

        animationAnimation$AnimationListenerC3215f() {
            ShowTipActivityNew.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ShowTipActivityNew.this.f10362z.setVisibility(4);
            ShowTipActivityNew.this.f10331C.startAnimation(ShowTipActivityNew.this.f10352X);
            ShowTipActivityNew.this.f10332D.setVisibility(0);
            ShowTipActivityNew.this.f10332D.startAnimation(C3767h1.m24231p());
            ShowTipActivityNew.this.f10334F.startAnimation(ShowTipActivityNew.this.f10349U);
            ShowTipActivityNew.this.f10333E.startAnimation(ShowTipActivityNew.this.f10349U);
            ShowTipActivityNew.this.f10354Z.startAnimation(ShowTipActivityNew.this.f10349U);
            ShowTipActivityNew.this.f10358v.startAnimation(ShowTipActivityNew.this.f10353Y);
            ShowTipActivityNew.this.f10356b0.postDelayed(new RunnableC3216a(), 1000L);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$g.class */
    public class animationAnimation$AnimationListenerC3217g implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3217g() {
            ShowTipActivityNew.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ShowTipActivityNew.this.f10329A.startAnimation(ShowTipActivityNew.this.f10343O);
            ShowTipActivityNew.this.f10341M.startAnimation(ShowTipActivityNew.this.f10343O);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$h.class */
    public class animationAnimation$AnimationListenerC3218h implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3218h() {
            ShowTipActivityNew.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ShowTipActivityNew.this.f10329A.startAnimation(ShowTipActivityNew.this.f10344P);
            ShowTipActivityNew.this.f10341M.startAnimation(ShowTipActivityNew.this.f10344P);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$i.class */
    public class animationAnimation$AnimationListenerC3219i implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3219i() {
            ShowTipActivityNew.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ShowTipActivityNew.this.f10329A.startAnimation(ShowTipActivityNew.this.f10345Q);
            ShowTipActivityNew.this.f10341M.startAnimation(ShowTipActivityNew.this.f10345Q);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$j.class */
    public class animationAnimation$AnimationListenerC3220j implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3220j() {
            ShowTipActivityNew.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ShowTipActivityNew.this.f10335G = 3;
            ShowTipActivityNew.this.f10341M.startAnimation(ShowTipActivityNew.this.f10351W);
            ShowTipActivityNew.this.f10333E.setVisibility(0);
            ShowTipActivityNew.this.f10333E.startAnimation(C3767h1.m24231p());
            ShowTipActivityNew.this.f10361y.setImageResource(R$drawable.ic_finish);
            ShowTipActivityNew.this.f10360x.setText(ShowTipActivityNew.this.getResources().getString(R$string.tip_show2));
            ShowTipActivityNew.this.f10362z.setVisibility(0);
            ShowTipActivityNew.this.f10362z.setAnimation(C3767h1.m24227r());
            if (Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(EZCallApplication.m26146c())) {
                return;
            }
            C3810q.m24071b().m24070c("fake_call_per_show");
            ShowTipActivityNew.this.f10339K.setVisibility(0);
            ShowTipActivityNew.this.f10339K.setAnimation(C3767h1.m24223t());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$k */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$k.class */
    class RunnableC3221k implements Runnable {
        RunnableC3221k() {
            ShowTipActivityNew.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ShowTipActivityNew.this.m25721C();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$l */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$l.class */
    public class RunnableC3222l implements Runnable {
        RunnableC3222l() {
            ShowTipActivityNew.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent(ShowTipActivityNew.this, OverlayGuideActivity.class);
            intent.addFlags(268435456);
            ShowTipActivityNew.this.startActivity(intent);
            ShowTipActivityNew.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$m */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$m.class */
    public class C3223m implements CompoundButton.OnCheckedChangeListener {
        C3223m() {
            ShowTipActivityNew.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!z) {
                C3810q.m24071b().m24070c("fake_call_per_close");
            }
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$n */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$n.class */
    public class animationAnimation$AnimationListenerC3224n implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3224n() {
            ShowTipActivityNew.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ShowTipActivityNew.this.f10332D.setVisibility(0);
            ShowTipActivityNew.this.f10332D.startAnimation(C3767h1.m24231p());
            ShowTipActivityNew.this.f10329A.setVisibility(0);
            ShowTipActivityNew.this.f10329A.setAnimation(ShowTipActivityNew.this.f10330B);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$o */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$o.class */
    public class animationAnimation$AnimationListenerC3225o implements Animation.AnimationListener {

        /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$o$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$o$a.class */
        class RunnableC3226a implements Runnable {
            RunnableC3226a() {
                animationAnimation$AnimationListenerC3225o.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                ShowTipActivityNew.this.f10331C.setVisibility(0);
                ShowTipActivityNew.this.f10331C.setAnimation(C3767h1.m24223t());
            }
        }

        /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$o$b */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$o$b.class */
        class RunnableC3227b implements Runnable {
            RunnableC3227b() {
                animationAnimation$AnimationListenerC3225o.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                ShowTipActivityNew.this.f10333E.setVisibility(0);
                ShowTipActivityNew.this.f10333E.startAnimation(C3767h1.m24231p());
                ShowTipActivityNew.this.f10362z.setVisibility(0);
                ShowTipActivityNew.this.f10362z.setAnimation(C3767h1.m24227r());
            }
        }

        animationAnimation$AnimationListenerC3225o() {
            ShowTipActivityNew.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ShowTipActivityNew.this.f10356b0.postDelayed(new RunnableC3226a(), 1000L);
            ShowTipActivityNew.this.f10356b0.postDelayed(new RunnableC3227b(), 2500L);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$p */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$p.class */
    public class animationAnimation$AnimationListenerC3228p implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3228p() {
            ShowTipActivityNew.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ShowTipActivityNew.this.f10333E.setVisibility(8);
            ShowTipActivityNew.this.f10332D.setVisibility(8);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$q */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$q.class */
    public class animationAnimation$AnimationListenerC3229q implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3229q() {
            ShowTipActivityNew.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ShowTipActivityNew.this.f10334F.setVisibility(8);
            ShowTipActivityNew.this.f10333E.setVisibility(8);
            ShowTipActivityNew.this.f10354Z.setVisibility(8);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$r */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$r.class */
    public class animationAnimation$AnimationListenerC3230r implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3230r() {
            ShowTipActivityNew.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ShowTipActivityNew.this.f10358v.setImageResource(R$drawable.iv_calling);
            ShowTipActivityNew.this.f10358v.startAnimation(C3767h1.m24231p());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$s */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$s.class */
    public class animationAnimation$AnimationListenerC3231s implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3231s() {
            ShowTipActivityNew.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ShowTipActivityNew.this.f10358v.setImageResource(R$drawable.ic_call_bg);
            ShowTipActivityNew.this.f10358v.startAnimation(ShowTipActivityNew.this.f10348T);
            ShowTipActivityNew.this.f10354Z.setVisibility(0);
            ShowTipActivityNew.this.f10354Z.startAnimation(C3767h1.m24231p());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.allinone.callerid.mvc.controller.ShowTipActivityNew$t */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/controller/ShowTipActivityNew$t.class */
    public class animationAnimation$AnimationListenerC3232t implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3232t() {
            ShowTipActivityNew.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            ShowTipActivityNew.this.f10359w.startAnimation(ShowTipActivityNew.this.f10337I);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: B0 */
    private void m25722B0() {
        this.f10355a0.setAnimation(AnimationUtils.loadAnimation(getApplicationContext(), R$anim.share));
    }

    /* renamed from: C */
    public void m25721C() {
        this.f10358v = (ImageView) findViewById(R$id.iv_calling);
        this.f10359w = (ImageView) findViewById(R$id.iv_call_phone);
        this.f10341M = (ImageView) findViewById(R$id.iv_hand);
        this.f10355a0 = (RelativeLayout) findViewById(R$id.rl_phone);
        m25722B0();
        this.f10332D = (RelativeLayout) findViewById(R$id.rl_yinying);
        this.f10333E = (RelativeLayout) findViewById(R$id.rl_yinying2);
        this.f10334F = (RelativeLayout) findViewById(R$id.rl_yinying_call);
        this.f10354Z = (RelativeLayout) findViewById(R$id.float_yinying);
        this.f10361y = (ImageView) findViewById(R$id.iv_next);
        this.f10362z = (FrameLayout) findViewById(R$id.fl_next);
        this.f10329A = (LinearLayout) findViewById(R$id.float_bg1);
        TextView textView = (TextView) findViewById(R$id.tv_type);
        this.f10360x = (TextView) findViewById(R$id.tv_next);
        this.f10331C = (TextView) findViewById(R$id.tv_incoming_tip);
        textView.setText("1234 " + getResources().getString(R$string.reports));
        textView.setTypeface(C3739f1.m24359b());
        this.f10360x.setTypeface(C3739f1.m24359b());
        this.f10331C.setTypeface(C3739f1.m24359b());
        ((TextView) findViewById(R$id.tv_number_name)).setTypeface(C3739f1.m24359b());
        ((TextView) findViewById(R$id.tv_number)).setTypeface(C3739f1.m24359b());
        this.f10339K = (RelativeLayout) findViewById(R$id.fl_enable_permission);
        CheckBox checkBox = (CheckBox) findViewById(R$id.cb_permission);
        this.f10340L = checkBox;
        checkBox.setTypeface(C3739f1.m24359b());
        this.f10340L.setOnCheckedChangeListener(new C3223m());
        this.f10362z.setOnClickListener(this);
        Animation loadAnimation = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_incomingk);
        loadAnimation.setAnimationListener(new animationAnimation$AnimationListenerC3224n());
        Animation loadAnimation2 = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_showtip);
        this.f10330B = loadAnimation2;
        loadAnimation2.setAnimationListener(new animationAnimation$AnimationListenerC3225o());
        Animation loadAnimation3 = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_alpha_out);
        this.f10346R = loadAnimation3;
        loadAnimation3.setAnimationListener(new animationAnimation$AnimationListenerC3228p());
        Animation loadAnimation4 = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_alpha_out);
        this.f10349U = loadAnimation4;
        loadAnimation4.setAnimationListener(new animationAnimation$AnimationListenerC3229q());
        Animation loadAnimation5 = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_alpha_out);
        this.f10353Y = loadAnimation5;
        loadAnimation5.setAnimationListener(new animationAnimation$AnimationListenerC3230r());
        Animation loadAnimation6 = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_alpha_out);
        this.f10347S = loadAnimation6;
        loadAnimation6.setAnimationListener(new animationAnimation$AnimationListenerC3231s());
        Animation loadAnimation7 = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_alpha_in);
        this.f10348T = loadAnimation7;
        loadAnimation7.setAnimationListener(new animationAnimation$AnimationListenerC3232t());
        Animation loadAnimation8 = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_text_down);
        this.f10352X = loadAnimation8;
        loadAnimation8.setAnimationListener(new animationAnimation$AnimationListenerC3208a());
        Animation loadAnimation9 = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_showtip_back);
        this.f10336H = loadAnimation9;
        loadAnimation9.setAnimationListener(new animationAnimation$AnimationListenerC3209b());
        this.f10358v.startAnimation(loadAnimation);
        Animation loadAnimation10 = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_showtip_call_move);
        this.f10337I = loadAnimation10;
        loadAnimation10.setAnimationListener(new animationAnimation$AnimationListenerC3210c());
        Animation loadAnimation11 = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_guide2_move);
        this.f10350V = loadAnimation11;
        loadAnimation11.setAnimationListener(new animationAnimation$AnimationListenerC3213d());
        Animation loadAnimation12 = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_guide2_moveback);
        this.f10351W = loadAnimation12;
        loadAnimation12.setAnimationListener(new animationAnimation$AnimationListenerC3214e());
        Animation loadAnimation13 = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_showtip_back);
        this.f10338J = loadAnimation13;
        loadAnimation13.setAnimationListener(new animationAnimation$AnimationListenerC3215f());
        Animation loadAnimation14 = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_up);
        this.f10342N = loadAnimation14;
        loadAnimation14.setAnimationListener(new animationAnimation$AnimationListenerC3217g());
        Animation loadAnimation15 = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_down);
        this.f10343O = loadAnimation15;
        loadAnimation15.setAnimationListener(new animationAnimation$AnimationListenerC3218h());
        Animation loadAnimation16 = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_up1);
        this.f10344P = loadAnimation16;
        loadAnimation16.setAnimationListener(new animationAnimation$AnimationListenerC3219i());
        Animation loadAnimation17 = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_down1);
        this.f10345Q = loadAnimation17;
        loadAnimation17.setAnimationListener(new animationAnimation$AnimationListenerC3220j());
    }

    /* renamed from: C0 */
    private void m25720C0() {
        try {
            this.f10356b0.postDelayed(new RunnableC3222l(), 300L);
            C3810q.m24071b().m24070c("fake_call_per_tip");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != 2131296761) {
            return;
        }
        int i = this.f10335G;
        if (i == 1) {
            C3810q.m24071b().m24070c("fake_call_next1");
            this.f10362z.startAnimation(this.f10336H);
        } else if (i == 2) {
            C3810q.m24071b().m24070c("fake_call_next2");
            this.f10362z.startAnimation(this.f10338J);
        } else if (i != 3) {
        } else {
            C3810q.m24071b().m24070c("fake_call_got_it");
            if (Build.VERSION.SDK_INT >= 23 && !Settings.canDrawOverlays(EZCallApplication.m26146c()) && this.f10340L.isChecked()) {
                try {
                    C3810q.m24071b().m24070c("checkPermission_click");
                    Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + EZCallApplication.m26146c().getPackageName()));
                    intent.setFlags(268435456);
                    startActivity(intent);
                    m25720C0();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_show_tip_new);
        getWindow().getDecorView().post(new RunnableC3221k());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (this.f10335G != 3) {
                C3810q.m24071b().m24070c("fake_call_close");
            }
            finish();
            overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
