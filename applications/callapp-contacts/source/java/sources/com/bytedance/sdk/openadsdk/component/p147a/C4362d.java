package com.bytedance.sdk.openadsdk.component.p147a;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.dislike.C4852b;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: com.bytedance.sdk.openadsdk.component.a.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/a/d.class */
public class C4362d extends FrameLayout {

    /* renamed from: a */
    private final Context f16023a;

    /* renamed from: b */
    private C4361c f16024b;

    /* renamed from: c */
    private C4361c f16025c;

    /* renamed from: d */
    private ImageView f16026d;

    /* renamed from: e */
    private ImageView f16027e;

    /* renamed from: f */
    private C4852b f16028f;

    /* renamed from: g */
    private int f16029g;

    /* renamed from: h */
    private boolean f16030h;

    /* renamed from: i */
    private boolean f16031i = false;

    /* renamed from: j */
    private boolean f16032j = false;

    public C4362d(Context context) {
        super(context);
        this.f16023a = context;
        m35705g();
    }

    /* renamed from: a */
    private ObjectAnimator m35718a(C4361c c4361c) {
        return ObjectAnimator.ofFloat(c4361c, "translationX", BitmapDescriptorFactory.HUE_RED, -getWidth());
    }

    /* renamed from: a */
    public void m35714a(C4557i c4557i) {
        C4852b c4852b = this.f16028f;
        if (c4852b == null || c4557i == null) {
            return;
        }
        c4852b.m33737a(c4557i);
    }

    /* renamed from: b */
    private ObjectAnimator m35711b(final C4361c c4361c) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(c4361c, "translationX", getWidth(), BitmapDescriptorFactory.HUE_RED);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.openadsdk.component.a.d.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                C4362d.this.f16030h = false;
                C4362d.this.m35701k();
                C4361c c4361c2 = c4361c;
                if (c4361c2 != null) {
                    C4362d.this.m35714a(c4361c2.m35725a());
                }
                C5478q.m32112b("TTBannerAd", "SLIDE END");
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                C5478q.m32112b("TTBannerAd", "SLIDE START");
            }
        });
        return ofFloat;
    }

    /* renamed from: g */
    private void m35705g() {
        C4361c c4361c = new C4361c(this.f16023a);
        this.f16024b = c4361c;
        addView(c4361c, new FrameLayout.LayoutParams(-1, -1));
        m35703i();
        m35704h();
    }

    /* renamed from: h */
    private void m35704h() {
        if (this.f16032j) {
            return;
        }
        this.f16032j = true;
        ImageView imageView = new ImageView(this.f16023a);
        this.f16026d = imageView;
        imageView.setImageResource(C5486x.m32067d(C4600n.m34815a(), "tt_dislike_icon"));
        this.f16026d.setScaleType(ImageView.ScaleType.FIT_XY);
        this.f16026d.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.a.d.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (C4362d.this.f16028f != null) {
                    C4362d.this.f16028f.showDislikeDialog();
                }
            }
        });
        int m32232a = (int) C5443ag.m32232a(this.f16023a, 15.0f);
        int m32232a2 = (int) C5443ag.m32232a(this.f16023a, 10.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(m32232a, m32232a);
        layoutParams.gravity = 8388661;
        layoutParams.topMargin = m32232a2;
        layoutParams.rightMargin = m32232a2;
        addView(this.f16026d, layoutParams);
        C5443ag.m32227a(this.f16026d, m32232a, m32232a, m32232a, m32232a);
    }

    /* renamed from: i */
    private void m35703i() {
        if (this.f16031i) {
            return;
        }
        this.f16031i = true;
        ImageView imageView = new ImageView(this.f16023a);
        this.f16027e = imageView;
        imageView.setImageResource(C5486x.m32067d(C4600n.m34815a(), "tt_ad_logo_small"));
        this.f16027e.setScaleType(ImageView.ScaleType.FIT_XY);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(20, 20);
        layoutParams.gravity = 8388693;
        addView(this.f16027e, layoutParams);
    }

    /* renamed from: j */
    private void m35702j() {
        ImageView imageView = this.f16027e;
        if (imageView != null) {
            bringChildToFront(imageView);
        }
        ImageView imageView2 = this.f16026d;
        if (imageView2 != null) {
            bringChildToFront(imageView2);
        }
    }

    /* renamed from: k */
    public void m35701k() {
        C4361c c4361c = this.f16024b;
        this.f16024b = this.f16025c;
        this.f16025c = c4361c;
        c4361c.m35722b();
    }

    /* renamed from: a */
    public void m35720a() {
        C4361c c4361c = new C4361c(this.f16023a);
        this.f16025c = c4361c;
        c4361c.setVisibility(8);
        addView(this.f16025c, new FrameLayout.LayoutParams(-1, -1));
    }

    /* renamed from: a */
    public void m35719a(int i) {
        this.f16029g = i;
    }

    /* renamed from: a */
    public void m35713a(C4852b c4852b) {
        this.f16028f = c4852b;
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        super.addView(view);
        m35702j();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i) {
        super.addView(view, i);
        m35702j();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, int i2) {
        super.addView(view, i, i2);
        m35702j();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        m35702j();
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, layoutParams);
        m35702j();
    }

    /* renamed from: b */
    public C4361c m35712b() {
        return this.f16024b;
    }

    /* renamed from: c */
    public C4361c m35709c() {
        return this.f16025c;
    }

    /* renamed from: d */
    public View m35708d() {
        return this.f16026d;
    }

    /* renamed from: e */
    public void m35707e() {
        if (!this.f16030h) {
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.play(m35718a(this.f16024b)).with(m35711b(this.f16025c));
            animatorSet.setDuration(this.f16029g).start();
            this.f16025c.setVisibility(0);
            this.f16030h = true;
        }
    }

    /* renamed from: f */
    public boolean m35706f() {
        C4361c c4361c = this.f16025c;
        return (c4361c == null || c4361c.m35725a() == null) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f16031i = false;
        this.f16032j = false;
    }
}
