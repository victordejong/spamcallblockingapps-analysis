package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bytedance.sdk.openadsdk.core.bannerexpress.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/bannerexpress/a.class */
public class C4507a extends FrameLayout {

    /* renamed from: a */
    protected final Context f16370a;

    /* renamed from: b */
    protected NativeExpressView f16371b;

    /* renamed from: c */
    protected NativeExpressView f16372c;

    /* renamed from: d */
    protected C4557i f16373d;

    /* renamed from: e */
    protected AdSlot f16374e;

    /* renamed from: f */
    protected TTNativeExpressAd.ExpressAdInteractionListener f16375f;

    /* renamed from: g */
    protected TTNativeExpressAd.ExpressVideoAdListener f16376g;

    /* renamed from: h */
    protected int f16377h;

    /* renamed from: i */
    protected boolean f16378i;

    /* renamed from: j */
    protected String f16379j = "banner_ad";

    public C4507a(Context context, C4557i c4557i, AdSlot adSlot) {
        super(context);
        this.f16370a = context;
        this.f16373d = c4557i;
        this.f16374e = adSlot;
        mo35451a();
    }

    /* renamed from: a */
    private ObjectAnimator m35447a(NativeExpressView nativeExpressView) {
        return ObjectAnimator.ofFloat(nativeExpressView, "translationX", BitmapDescriptorFactory.HUE_RED, -getWidth());
    }

    /* renamed from: b */
    private ObjectAnimator m35445b(NativeExpressView nativeExpressView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(nativeExpressView, "translationX", getWidth(), BitmapDescriptorFactory.HUE_RED);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.a.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                C4507a.this.f16378i = false;
                C4507a.this.m35440g();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        return ofFloat;
    }

    /* renamed from: g */
    public void m35440g() {
        NativeExpressView nativeExpressView = this.f16371b;
        this.f16371b = this.f16372c;
        this.f16372c = nativeExpressView;
        if (nativeExpressView != null) {
            removeView(nativeExpressView);
            this.f16372c.m34764l();
            this.f16372c = null;
        }
    }

    /* renamed from: a */
    protected void mo35451a() {
        NativeExpressView nativeExpressView = new NativeExpressView(this.f16370a, this.f16373d, this.f16374e, this.f16379j);
        this.f16371b = nativeExpressView;
        addView(nativeExpressView, new ViewGroup.LayoutParams(-1, -1));
    }

    /* renamed from: a */
    public void m35450a(float f, float f2) {
        int m32232a = (int) C5443ag.m32232a(this.f16370a, f);
        int m32232a2 = (int) C5443ag.m32232a(this.f16370a, f2);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (layoutParams == null) {
            layoutParams2 = new ViewGroup.LayoutParams(m32232a, m32232a2);
        }
        layoutParams2.width = m32232a;
        layoutParams2.height = m32232a2;
        setLayoutParams(layoutParams2);
    }

    /* renamed from: a */
    public void mo35448a(C4557i c4557i, AdSlot adSlot) {
        NativeExpressView nativeExpressView = new NativeExpressView(this.f16370a, c4557i, adSlot, this.f16379j);
        this.f16372c = nativeExpressView;
        nativeExpressView.setExpressInteractionListener(new TTNativeExpressAd.ExpressAdInteractionListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.a.1
            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onAdClicked(View view, int i) {
                if (C4507a.this.f16375f != null) {
                    C4507a.this.f16375f.onAdClicked(C4507a.this, i);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onAdShow(View view, int i) {
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onRenderFail(View view, String str, int i) {
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onRenderSuccess(View view, float f, float f2) {
                C4507a.this.m35450a(f, f2);
                C4507a.this.m35441f();
            }
        });
        C5443ag.m32228a((View) this.f16372c, 8);
        addView(this.f16372c, new ViewGroup.LayoutParams(-1, -1));
    }

    /* renamed from: b */
    public boolean mo35446b() {
        return this.f16372c != null;
    }

    /* renamed from: c */
    public void mo35444c() {
        NativeExpressView nativeExpressView = this.f16372c;
        if (nativeExpressView != null) {
            nativeExpressView.m34767i();
        }
    }

    /* renamed from: d */
    public void mo35443d() {
        NativeExpressView nativeExpressView = this.f16371b;
        if (nativeExpressView != null) {
            removeView(nativeExpressView);
            this.f16371b.m34764l();
            this.f16371b = null;
        }
        NativeExpressView nativeExpressView2 = this.f16372c;
        if (nativeExpressView2 != null) {
            removeView(nativeExpressView2);
            this.f16372c.m34764l();
            this.f16372c = null;
        }
    }

    /* renamed from: e */
    public void mo35442e() {
        NativeExpressView nativeExpressView = this.f16371b;
        if (nativeExpressView != null) {
            nativeExpressView.m34767i();
        }
    }

    /* renamed from: f */
    public void m35441f() {
        try {
            if (this.f16378i || this.f16372c == null) {
                return;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.play(m35447a(this.f16371b)).with(m35445b(this.f16372c));
            animatorSet.setDuration(this.f16377h).start();
            C5443ag.m32228a((View) this.f16372c, 0);
            this.f16378i = true;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public NativeExpressView getCurView() {
        return this.f16371b;
    }

    public NativeExpressView getNextView() {
        return this.f16372c;
    }

    public void setDuration(int i) {
        this.f16377h = i;
    }

    public void setExpressInteractionListener(TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener) {
        this.f16375f = expressAdInteractionListener;
        this.f16371b.setExpressInteractionListener(new TTNativeExpressAd.ExpressAdInteractionListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.a.2
            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onAdClicked(View view, int i) {
                if (C4507a.this.f16375f != null) {
                    C4507a.this.f16375f.onAdClicked(C4507a.this, i);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onAdShow(View view, int i) {
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onRenderFail(View view, String str, int i) {
                if (C4507a.this.f16375f != null) {
                    C4507a.this.f16375f.onRenderFail(C4507a.this, str, i);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onRenderSuccess(View view, float f, float f2) {
                if (!(view instanceof NativeExpressView) || !((NativeExpressView) view).m34762n()) {
                    C4507a.this.m35450a(f, f2);
                }
                if (C4507a.this.f16375f != null) {
                    C4507a.this.f16375f.onRenderSuccess(C4507a.this, f, f2);
                }
            }
        });
    }

    public void setVideoAdListener(TTNativeExpressAd.ExpressVideoAdListener expressVideoAdListener) {
        this.f16376g = expressVideoAdListener;
    }
}
