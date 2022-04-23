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
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/bannerexpress/a.class */
class a extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    protected final Context f8809a;

    /* renamed from: b  reason: collision with root package name */
    protected NativeExpressView f8810b;

    /* renamed from: c  reason: collision with root package name */
    protected NativeExpressView f8811c;

    /* renamed from: d  reason: collision with root package name */
    protected i f8812d;
    protected AdSlot e;
    protected TTNativeExpressAd.ExpressAdInteractionListener f;
    protected TTNativeExpressAd.ExpressVideoAdListener g;
    protected int h;
    protected boolean i;
    protected String j = "banner_ad";

    public a(Context context, i iVar, AdSlot adSlot) {
        super(context);
        this.f8809a = context;
        this.f8812d = iVar;
        this.e = adSlot;
        a();
    }

    private ObjectAnimator a(NativeExpressView nativeExpressView) {
        return ObjectAnimator.ofFloat(nativeExpressView, "translationX", BitmapDescriptorFactory.HUE_RED, -getWidth());
    }

    private ObjectAnimator b(NativeExpressView nativeExpressView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(nativeExpressView, "translationX", getWidth(), BitmapDescriptorFactory.HUE_RED);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.a.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                a.this.i = false;
                a.this.g();
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

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        NativeExpressView nativeExpressView = this.f8810b;
        this.f8810b = this.f8811c;
        this.f8811c = nativeExpressView;
        if (nativeExpressView != null) {
            removeView(nativeExpressView);
            this.f8811c.l();
            this.f8811c = null;
        }
    }

    protected void a() {
        NativeExpressView nativeExpressView = new NativeExpressView(this.f8809a, this.f8812d, this.e, this.j);
        this.f8810b = nativeExpressView;
        addView(nativeExpressView, new ViewGroup.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(float f, float f2) {
        int a2 = (int) ag.a(this.f8809a, f);
        int a3 = (int) ag.a(this.f8809a, f2);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (layoutParams == null) {
            layoutParams2 = new ViewGroup.LayoutParams(a2, a3);
        }
        layoutParams2.width = a2;
        layoutParams2.height = a3;
        setLayoutParams(layoutParams2);
    }

    public void a(i iVar, AdSlot adSlot) {
        NativeExpressView nativeExpressView = new NativeExpressView(this.f8809a, iVar, adSlot, this.j);
        this.f8811c = nativeExpressView;
        nativeExpressView.setExpressInteractionListener(new TTNativeExpressAd.ExpressAdInteractionListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.a.1
            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onAdClicked(View view, int i) {
                if (a.this.f != null) {
                    a.this.f.onAdClicked(a.this, i);
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
                a.this.a(f, f2);
                a.this.f();
            }
        });
        ag.a((View) this.f8811c, 8);
        addView(this.f8811c, new ViewGroup.LayoutParams(-1, -1));
    }

    public boolean b() {
        return this.f8811c != null;
    }

    public void c() {
        NativeExpressView nativeExpressView = this.f8811c;
        if (nativeExpressView != null) {
            nativeExpressView.i();
        }
    }

    public void d() {
        NativeExpressView nativeExpressView = this.f8810b;
        if (nativeExpressView != null) {
            removeView(nativeExpressView);
            this.f8810b.l();
            this.f8810b = null;
        }
        NativeExpressView nativeExpressView2 = this.f8811c;
        if (nativeExpressView2 != null) {
            removeView(nativeExpressView2);
            this.f8811c.l();
            this.f8811c = null;
        }
    }

    public void e() {
        NativeExpressView nativeExpressView = this.f8810b;
        if (nativeExpressView != null) {
            nativeExpressView.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void f() {
        try {
            if (!this.i && this.f8811c != null) {
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.play(a(this.f8810b)).with(b(this.f8811c));
                animatorSet.setDuration(this.h).start();
                ag.a((View) this.f8811c, 0);
                this.i = true;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public NativeExpressView getCurView() {
        return this.f8810b;
    }

    public NativeExpressView getNextView() {
        return this.f8811c;
    }

    public void setDuration(int i) {
        this.h = i;
    }

    public void setExpressInteractionListener(TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener) {
        this.f = expressAdInteractionListener;
        this.f8810b.setExpressInteractionListener(new TTNativeExpressAd.ExpressAdInteractionListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.a.2
            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onAdClicked(View view, int i) {
                if (a.this.f != null) {
                    a.this.f.onAdClicked(a.this, i);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onAdShow(View view, int i) {
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onRenderFail(View view, String str, int i) {
                if (a.this.f != null) {
                    a.this.f.onRenderFail(a.this, str, i);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.TTNativeExpressAd.ExpressAdInteractionListener
            public void onRenderSuccess(View view, float f, float f2) {
                if (!(view instanceof NativeExpressView) || !((NativeExpressView) view).n()) {
                    a.this.a(f, f2);
                }
                if (a.this.f != null) {
                    a.this.f.onRenderSuccess(a.this, f, f2);
                }
            }
        });
    }

    public void setVideoAdListener(TTNativeExpressAd.ExpressVideoAdListener expressVideoAdListener) {
        this.g = expressVideoAdListener;
    }
}
