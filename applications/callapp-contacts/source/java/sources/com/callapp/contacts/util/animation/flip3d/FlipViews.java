package com.callapp.contacts.util.animation.flip3d;

import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/animation/flip3d/FlipViews.class */
public final class FlipViews implements Runnable {

    /* renamed from: a */
    private View f28143a;

    /* renamed from: b */
    private View f28144b;

    /* renamed from: c */
    private CallappAnimationUtils.FlipDirection f28145c;

    /* renamed from: d */
    private int f28146d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.util.animation.flip3d.FlipViews$2 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/animation/flip3d/FlipViews$2.class */
    public static /* synthetic */ class C79852 {

        /* renamed from: a */
        static final /* synthetic */ int[] f28151a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[CallappAnimationUtils.FlipDirection.values().length];
            f28151a = iArr;
            try {
                iArr[CallappAnimationUtils.FlipDirection.LTR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f28151a[CallappAnimationUtils.FlipDirection.RTL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public FlipViews(View view, View view2, CallappAnimationUtils.FlipDirection flipDirection, int i) {
        this.f28143a = view;
        this.f28144b = view2;
        this.f28145c = flipDirection;
        this.f28146d = i;
    }

    /* renamed from: a */
    private static void m27168a(View view) {
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
        m27168a(this.f28143a);
        View view = this.f28143a;
        View view2 = this.f28144b;
        if (view != view2) {
            m27168a(view2);
        }
        final float width = this.f28143a.getWidth() / 2.0f;
        final float height = this.f28143a.getHeight() / 2.0f;
        float f = C79852.f28151a[this.f28145c.ordinal()] != 2 ? 90.0f : -90.0f;
        Flip3dAnimation flip3dAnimation = new Flip3dAnimation(BitmapDescriptorFactory.HUE_RED, f, width, height);
        flip3dAnimation.setDuration(this.f28146d / 2);
        flip3dAnimation.setFillAfter(false);
        flip3dAnimation.setInterpolator(new AccelerateInterpolator());
        final float f2 = f;
        flip3dAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.callapp.contacts.util.animation.flip3d.FlipViews.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                FlipViews.this.f28143a.setVisibility(8);
                FlipViews.this.f28144b.setVisibility(0);
                FlipViews.this.f28144b.requestFocus();
                Flip3dAnimation flip3dAnimation2 = new Flip3dAnimation(-f2, BitmapDescriptorFactory.HUE_RED, width, height);
                flip3dAnimation2.setDuration(FlipViews.this.f28146d / 2);
                flip3dAnimation2.setFillAfter(true);
                flip3dAnimation2.setInterpolator(new DecelerateInterpolator());
                FlipViews.this.f28144b.startAnimation(flip3dAnimation2);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        this.f28143a.startAnimation(flip3dAnimation);
    }
}
