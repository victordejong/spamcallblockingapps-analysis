package com.applovin.impl.adview;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.applovin.impl.adview.AbstractC0996i;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p053ad.C1281a;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p056d.C1326d;
import com.applovin.sdk.AppLovinSdkUtils;
/* renamed from: com.applovin.impl.adview.l */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/l.class */
public class DialogC1003l extends Dialog implements AbstractC1002k {

    /* renamed from: a */
    private final Activity f3659a;

    /* renamed from: b */
    private final C1408l f3660b;

    /* renamed from: c */
    private final C1479t f3661c;

    /* renamed from: d */
    private final C0984d f3662d;

    /* renamed from: e */
    private final C1281a f3663e;

    /* renamed from: f */
    private RelativeLayout f3664f;

    /* renamed from: g */
    private AbstractC0996i f3665g;

    public DialogC1003l(C1281a c1281a, C0984d c0984d, Activity activity, C1408l c1408l) {
        super(activity, 16973840);
        if (c1281a != null) {
            if (c0984d == null) {
                throw new IllegalArgumentException("No main view specified");
            }
            if (c1408l == null) {
                throw new IllegalArgumentException("No sdk specified");
            }
            if (activity == null) {
                throw new IllegalArgumentException("No activity specified");
            }
            this.f3660b = c1408l;
            this.f3661c = c1408l.m5542A();
            this.f3659a = activity;
            this.f3662d = c0984d;
            this.f3663e = c1281a;
            requestWindowFeature(1);
            setCancelable(false);
            return;
        }
        throw new IllegalArgumentException("No ad specified");
    }

    /* renamed from: a */
    private int m6837a(int i) {
        return AppLovinSdkUtils.dpToPx(this.f3659a, i);
    }

    /* renamed from: a */
    private void m6836a(AbstractC0996i.EnumC0997a enumC0997a) {
        if (this.f3665g != null) {
            this.f3661c.m5112d("ExpandedAdDialog", "Attempting to create duplicate close button");
            return;
        }
        AbstractC0996i m6856a = AbstractC0996i.m6856a(enumC0997a, this.f3659a);
        this.f3665g = m6856a;
        m6856a.setVisibility(8);
        this.f3665g.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.adview.l.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DialogC1003l.this.m6830d();
            }
        });
        this.f3665g.setClickable(false);
        int m6837a = m6837a(((Integer) this.f3660b.m5511a(C1314b.f4792bU)).intValue());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(m6837a, m6837a);
        layoutParams.addRule(10);
        C1408l c1408l = this.f3660b;
        C1314b<Boolean> c1314b = C1314b.f4795bX;
        layoutParams.addRule(((Boolean) c1408l.m5511a(c1314b)).booleanValue() ? 9 : 11);
        this.f3665g.mo6794a(m6837a);
        int m6837a2 = m6837a(((Integer) this.f3660b.m5511a(C1314b.f4794bW)).intValue());
        int m6837a3 = m6837a(((Integer) this.f3660b.m5511a(C1314b.f4793bV)).intValue());
        layoutParams.setMargins(m6837a3, m6837a2, m6837a3, 0);
        this.f3664f.addView(this.f3665g, layoutParams);
        this.f3665g.bringToFront();
        int m6837a4 = m6837a(((Integer) this.f3660b.m5511a(C1314b.f4796bY)).intValue());
        View view = new View(this.f3659a);
        view.setBackgroundColor(0);
        int i = m6837a + m6837a4;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i, i);
        layoutParams2.addRule(10);
        layoutParams2.addRule(((Boolean) this.f3660b.m5511a(c1314b)).booleanValue() ? 9 : 11);
        layoutParams2.setMargins(m6837a3 - m6837a(5), m6837a2 - m6837a(5), m6837a3 - m6837a(5), 0);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.adview.l.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (DialogC1003l.this.f3665g.isClickable()) {
                    DialogC1003l.this.f3665g.performClick();
                }
            }
        });
        this.f3664f.addView(view, layoutParams2);
        view.bringToFront();
    }

    /* renamed from: c */
    private void m6832c() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.f3662d.setLayoutParams(layoutParams);
        RelativeLayout relativeLayout = new RelativeLayout(this.f3659a);
        this.f3664f = relativeLayout;
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f3664f.setBackgroundColor(-1157627904);
        this.f3664f.addView(this.f3662d);
        if (!this.f3663e.m6018l()) {
            m6836a(this.f3663e.m6017m());
            m6828e();
        }
        setContentView(this.f3664f);
    }

    /* renamed from: d */
    public void m6830d() {
        this.f3662d.m6878a("javascript:al_onCloseTapped();", new Runnable() { // from class: com.applovin.impl.adview.l.1
            @Override // java.lang.Runnable
            public void run() {
                DialogC1003l.this.dismiss();
            }
        });
    }

    /* renamed from: e */
    private void m6828e() {
        this.f3659a.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.l.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (DialogC1003l.this.f3665g == null) {
                        DialogC1003l.this.m6830d();
                    }
                    DialogC1003l.this.f3665g.setVisibility(0);
                    DialogC1003l.this.f3665g.bringToFront();
                    AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                    alphaAnimation.setDuration(300L);
                    alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.applovin.impl.adview.l.6.1
                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationEnd(Animation animation) {
                            DialogC1003l.this.f3665g.setClickable(true);
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationRepeat(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationStart(Animation animation) {
                        }
                    });
                    DialogC1003l.this.f3665g.startAnimation(alphaAnimation);
                } catch (Throwable th) {
                    DialogC1003l.this.f3661c.m5115b("ExpandedAdDialog", "Unable to fade in close button", th);
                    DialogC1003l.this.m6830d();
                }
            }
        });
    }

    /* renamed from: a */
    public C1281a m6838a() {
        return this.f3663e;
    }

    /* renamed from: b */
    public C0984d m6834b() {
        return this.f3662d;
    }

    @Override // android.app.Dialog, android.content.DialogInterface, com.applovin.impl.adview.AbstractC1002k
    public void dismiss() {
        C1326d statsManagerHelper = this.f3662d.getStatsManagerHelper();
        if (statsManagerHelper != null) {
            statsManagerHelper.m5761e();
        }
        this.f3659a.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.l.3
            @Override // java.lang.Runnable
            public void run() {
                DialogC1003l.this.f3664f.removeView(DialogC1003l.this.f3662d);
                DialogC1003l.super.dismiss();
            }
        });
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        this.f3662d.m6878a("javascript:al_onBackPressed();", new Runnable() { // from class: com.applovin.impl.adview.l.2
            @Override // java.lang.Runnable
            public void run() {
                DialogC1003l.this.dismiss();
            }
        });
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m6832c();
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        try {
            Window window = getWindow();
            if (window != null) {
                window.setFlags(this.f3659a.getWindow().getAttributes().flags, this.f3659a.getWindow().getAttributes().flags);
                window.addFlags(16777216);
            } else {
                this.f3661c.m5111e("ExpandedAdDialog", "Unable to turn on hardware acceleration - window is null");
            }
        } catch (Throwable th) {
            this.f3661c.m5115b("ExpandedAdDialog", "Setting window flags failed.", th);
        }
    }
}
