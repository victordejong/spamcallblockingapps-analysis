package com.callapp.contacts.util.animation.flip3d;

import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/animation/flip3d/FlipViews.class */
public final class FlipViews implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private View f16163a;

    /* renamed from: b  reason: collision with root package name */
    private View f16164b;

    /* renamed from: c  reason: collision with root package name */
    private CallappAnimationUtils.FlipDirection f16165c;

    /* renamed from: d  reason: collision with root package name */
    private int f16166d;

    /* renamed from: com.callapp.contacts.util.animation.flip3d.FlipViews$2  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/animation/flip3d/FlipViews$2.class */
    static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f16171a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[CallappAnimationUtils.FlipDirection.values().length];
            f16171a = iArr;
            try {
                iArr[CallappAnimationUtils.FlipDirection.LTR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f16171a[CallappAnimationUtils.FlipDirection.RTL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public FlipViews(View view, View view2, CallappAnimationUtils.FlipDirection flipDirection, int i) {
        this.f16163a = view;
        this.f16164b = view2;
        this.f16165c = flipDirection;
        this.f16166d = i;
    }

    private static void a(View view) {
        Animation animation = view.getAnimation();
        if (animation != null) {
            animation.cancel();
            view.clearAnimation();
            animation.setAnimationListener(null);
            view.setAnimation(null);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        a(this.f16163a);
        View view = this.f16163a;
        View view2 = this.f16164b;
        if (view != view2) {
            a(view2);
        }
        final float width = this.f16163a.getWidth() / 2.0f;
        final float height = this.f16163a.getHeight() / 2.0f;
        final float f = AnonymousClass2.f16171a[this.f16165c.ordinal()] != 2 ? 90.0f : -90.0f;
        Flip3dAnimation flip3dAnimation = new Flip3dAnimation(BitmapDescriptorFactory.HUE_RED, f, width, height);
        flip3dAnimation.setDuration(this.f16166d / 2);
        flip3dAnimation.setFillAfter(false);
        flip3dAnimation.setInterpolator(new AccelerateInterpolator());
        flip3dAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.callapp.contacts.util.animation.flip3d.FlipViews.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                FlipViews.this.f16163a.setVisibility(8);
                FlipViews.this.f16164b.setVisibility(0);
                FlipViews.this.f16164b.requestFocus();
                Flip3dAnimation flip3dAnimation2 = new Flip3dAnimation(-f, BitmapDescriptorFactory.HUE_RED, width, height);
                flip3dAnimation2.setDuration(FlipViews.this.f16166d / 2);
                flip3dAnimation2.setFillAfter(true);
                flip3dAnimation2.setInterpolator(new DecelerateInterpolator());
                FlipViews.this.f16164b.startAnimation(flip3dAnimation2);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        this.f16163a.startAnimation(flip3dAnimation);
    }
}
