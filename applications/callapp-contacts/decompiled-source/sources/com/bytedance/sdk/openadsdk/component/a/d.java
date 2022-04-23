package com.bytedance.sdk.openadsdk.component.a;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.dislike.b;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.x;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/a/d.class */
public class d extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final Context f8563a;

    /* renamed from: b  reason: collision with root package name */
    private c f8564b;

    /* renamed from: c  reason: collision with root package name */
    private c f8565c;

    /* renamed from: d  reason: collision with root package name */
    private ImageView f8566d;
    private ImageView e;
    private b f;
    private int g;
    private boolean h;
    private boolean i = false;
    private boolean j = false;

    public d(Context context) {
        super(context);
        this.f8563a = context;
        g();
    }

    private ObjectAnimator a(c cVar) {
        return ObjectAnimator.ofFloat(cVar, "translationX", BitmapDescriptorFactory.HUE_RED, -getWidth());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(i iVar) {
        b bVar = this.f;
        if (bVar != null && iVar != null) {
            bVar.a(iVar);
        }
    }

    private ObjectAnimator b(final c cVar) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(cVar, "translationX", getWidth(), BitmapDescriptorFactory.HUE_RED);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.openadsdk.component.a.d.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                d.this.h = false;
                d.this.k();
                c cVar2 = cVar;
                if (cVar2 != null) {
                    d.this.a(cVar2.a());
                }
                q.b("TTBannerAd", "SLIDE END");
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                q.b("TTBannerAd", "SLIDE START");
            }
        });
        return ofFloat;
    }

    private void g() {
        c cVar = new c(this.f8563a);
        this.f8564b = cVar;
        addView(cVar, new FrameLayout.LayoutParams(-1, -1));
        i();
        h();
    }

    private void h() {
        if (!this.j) {
            this.j = true;
            ImageView imageView = new ImageView(this.f8563a);
            this.f8566d = imageView;
            imageView.setImageResource(x.d(n.a(), "tt_dislike_icon"));
            this.f8566d.setScaleType(ImageView.ScaleType.FIT_XY);
            this.f8566d.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.a.d.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (d.this.f != null) {
                        d.this.f.showDislikeDialog();
                    }
                }
            });
            int a2 = (int) ag.a(this.f8563a, 15.0f);
            int a3 = (int) ag.a(this.f8563a, 10.0f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(a2, a2);
            layoutParams.gravity = 8388661;
            layoutParams.topMargin = a3;
            layoutParams.rightMargin = a3;
            addView(this.f8566d, layoutParams);
            ag.a(this.f8566d, a2, a2, a2, a2);
        }
    }

    private void i() {
        if (!this.i) {
            this.i = true;
            ImageView imageView = new ImageView(this.f8563a);
            this.e = imageView;
            imageView.setImageResource(x.d(n.a(), "tt_ad_logo_small"));
            this.e.setScaleType(ImageView.ScaleType.FIT_XY);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(20, 20);
            layoutParams.gravity = 8388693;
            addView(this.e, layoutParams);
        }
    }

    private void j() {
        ImageView imageView = this.e;
        if (imageView != null) {
            bringChildToFront(imageView);
        }
        ImageView imageView2 = this.f8566d;
        if (imageView2 != null) {
            bringChildToFront(imageView2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        c cVar = this.f8564b;
        this.f8564b = this.f8565c;
        this.f8565c = cVar;
        cVar.b();
    }

    public void a() {
        c cVar = new c(this.f8563a);
        this.f8565c = cVar;
        cVar.setVisibility(8);
        addView(this.f8565c, new FrameLayout.LayoutParams(-1, -1));
    }

    public void a(int i) {
        this.g = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(b bVar) {
        this.f = bVar;
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        super.addView(view);
        j();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i) {
        super.addView(view, i);
        j();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, int i2) {
        super.addView(view, i, i2);
        j();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        j();
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, layoutParams);
        j();
    }

    public c b() {
        return this.f8564b;
    }

    public c c() {
        return this.f8565c;
    }

    public View d() {
        return this.f8566d;
    }

    public void e() {
        if (!this.h) {
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.play(a(this.f8564b)).with(b(this.f8565c));
            animatorSet.setDuration(this.g).start();
            this.f8565c.setVisibility(0);
            this.h = true;
        }
    }

    public boolean f() {
        c cVar = this.f8565c;
        return (cVar == null || cVar.a() == null) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.i = false;
        this.j = false;
    }
}
