package com.callapp.contacts.util.animation;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.animation.IntEvaluator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.flip3d.FlipViews;
import com.callapp.contacts.widget.DualCirclesCheckBox;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/animation/CallappAnimationUtils.class */
public class CallappAnimationUtils {

    /* renamed from: a  reason: collision with root package name */
    public static final Interpolator f16116a = new AccelerateDecelerateInterpolator(2);

    /* renamed from: b  reason: collision with root package name */
    public static final Interpolator f16117b = new AccelerateDecelerateInterpolator(2);

    /* renamed from: c  reason: collision with root package name */
    public static final float f16118c = Activities.a(40.0f);

    /* renamed from: d  reason: collision with root package name */
    public static final float f16119d = Activities.a(120.0f);
    public static final float e = Activities.a(240.0f);
    private static HashMap<Drawable, MultiTimesRunnable> f = new HashMap<>();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/animation/CallappAnimationUtils$AccelerateDecelerateInterpolator.class */
    static class AccelerateDecelerateInterpolator implements Interpolator {

        /* renamed from: a  reason: collision with root package name */
        private final int f16154a;

        AccelerateDecelerateInterpolator(int i) {
            this.f16154a = i;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return (float) (f < 0.5f ? Math.pow(f * 2.0f, this.f16154a) * 0.5d : (Math.pow(((f - 0.5f) * 2.0f) - 1.0f, this.f16154a) * 0.5d) + 1.0d);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection.class */
    public enum FlipDirection {
        LTR,
        RTL
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/animation/CallappAnimationUtils$MultiTimesRunnable.class */
    public static class MultiTimesRunnable implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Drawable f16155a;

        /* renamed from: b  reason: collision with root package name */
        private int f16156b;

        /* renamed from: c  reason: collision with root package name */
        private final int f16157c;

        /* renamed from: d  reason: collision with root package name */
        private final Runnable f16158d;

        private MultiTimesRunnable(Drawable drawable, int i, int i2, Runnable runnable) {
            this.f16155a = drawable;
            this.f16156b = i2;
            this.f16157c = i;
            this.f16158d = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable = this.f16158d;
            if (runnable != null) {
                runnable.run();
            }
            int i = this.f16156b - 1;
            this.f16156b = i;
            if (i == 0) {
                CallappAnimationUtils.f.remove(this.f16155a);
            } else {
                CallAppApplication.get().a(this, this.f16157c);
            }
        }
    }

    public static int a(int i, int i2, float f2) {
        return (int) (i - ((i - i2) * f2));
    }

    public static ObjectAnimator a(View view, int i, int i2, int i3) {
        return a(view, i, i2, i3, (Animator.AnimatorListener) null);
    }

    public static ObjectAnimator a(final View view, int i, int i2, final int i3, final Animator.AnimatorListener animatorListener) {
        ObjectAnimator objectAnimator;
        if (view != null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", view.getAlpha(), BitmapDescriptorFactory.HUE_RED);
            ofFloat.setDuration(i);
            ofFloat.setStartDelay(i2);
            objectAnimator = ofFloat;
            if (i3 != view.getVisibility()) {
                ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.3
                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationCancel(Animator animator) {
                        view.setAlpha(1.0f);
                        Animator.AnimatorListener animatorListener2 = animatorListener;
                        if (animatorListener2 != null) {
                            animatorListener2.onAnimationCancel(animator);
                        }
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        view.setVisibility(i3);
                        Animator.AnimatorListener animatorListener2 = animatorListener;
                        if (animatorListener2 != null) {
                            animatorListener2.onAnimationEnd(animator);
                        }
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationRepeat(Animator animator) {
                        Animator.AnimatorListener animatorListener2 = animatorListener;
                        if (animatorListener2 != null) {
                            animatorListener2.onAnimationRepeat(animator);
                        }
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                        Animator.AnimatorListener animatorListener2 = animatorListener;
                        if (animatorListener2 != null) {
                            animatorListener2.onAnimationStart(animator);
                        }
                    }
                });
                objectAnimator = ofFloat;
            }
        } else {
            objectAnimator = null;
        }
        return objectAnimator;
    }

    public static ObjectAnimator a(final View view, Property<View, Float> property, int i, int i2, int i3) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, property, i, i2);
        final float alpha = view.getAlpha();
        view.setAlpha(BitmapDescriptorFactory.HUE_RED);
        view.setVisibility(0);
        ofFloat.setInterpolator(new DecelerateInterpolator(3.0f));
        ofFloat.setDuration(2000L);
        ofFloat.setStartDelay(i3);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.2
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                view.setAlpha(alpha);
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                view.setAlpha(1.0f);
            }
        });
        return ofFloat;
    }

    public static ValueAnimator a(int i, int i2, float f2, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        ValueAnimator ofObject = ValueAnimator.ofObject(new IntEvaluator(), Integer.valueOf(i), Integer.valueOf(i2));
        ofObject.setDuration(b(i, i2, f2));
        ofObject.addUpdateListener(animatorUpdateListener);
        return ofObject;
    }

    public static ValueAnimator a(final View view, int i, int i2, float f2, final ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        return a(i, i2, f2, new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewUtils.a(view, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, ((Integer) valueAnimator.getAnimatedValue()).intValue());
                ValueAnimator.AnimatorUpdateListener animatorUpdateListener2 = animatorUpdateListener;
                if (animatorUpdateListener2 != null) {
                    animatorUpdateListener2.onAnimationUpdate(valueAnimator);
                }
            }
        });
    }

    public static ValueAnimator a(final Object obj, int i, int i2, int i3) {
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(i2), Integer.valueOf(i3));
        switch (i) {
            case 0:
                ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.7
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ThemeUtils.a((Window) obj, ((Integer) valueAnimator.getAnimatedValue()).intValue());
                    }
                });
                break;
            case 1:
                ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.8

                    /* renamed from: a  reason: collision with root package name */
                    ColorDrawable f16151a = new ColorDrawable();

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        if (obj != null) {
                            this.f16151a.setColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
                            ((ActionBar) obj).a(this.f16151a);
                        }
                    }
                });
                break;
            case 2:
                ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.9
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ((View) obj).setBackgroundColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
                    }
                });
                break;
            case 3:
                ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.10
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ((ImageView) obj).setColorFilter(new PorterDuffColorFilter(((Integer) valueAnimator.getAnimatedValue()).intValue(), PorterDuff.Mode.SRC_IN));
                    }
                });
                break;
            case 4:
                ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.11
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ((DualCirclesCheckBox) obj).b(((Integer) valueAnimator.getAnimatedValue()).intValue()).invalidate();
                    }
                });
                break;
            case 5:
                ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.12
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ((DualCirclesCheckBox) obj).a(((Integer) valueAnimator.getAnimatedValue()).intValue()).invalidate();
                    }
                });
                break;
            case 6:
                ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.13
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ((TextView) obj).setTextColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
                    }
                });
                break;
            case 7:
                ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.14
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ((Drawable) obj).setColorFilter(((Integer) valueAnimator.getAnimatedValue()).intValue(), PorterDuff.Mode.SRC_IN);
                    }
                });
                break;
            case 8:
                ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.15
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ((GradientDrawable) obj).setColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
                    }
                });
                break;
            case 9:
                ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.16
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ((GradientDrawable) obj).setStroke((int) CallAppApplication.get().getResources().getDimension(2131166052), ((Integer) valueAnimator.getAnimatedValue()).intValue());
                    }
                });
                break;
            case 10:
                ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.17
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ((CardView) obj).setCardBackgroundColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
                    }
                });
                break;
        }
        return ofObject;
    }

    public static void a(View view) {
        view.startAnimation(AnimationUtils.loadAnimation(CallAppApplication.get(), 2130772015));
    }

    public static void a(final View view, final float f2, final float f3, final float f4, Animator.AnimatorListener animatorListener) {
        final ValueAnimator ofFloat = ValueAnimator.ofFloat(f2, f3);
        final boolean z = f3 > f2;
        final long nanoTime = System.nanoTime();
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float interpolation = valueAnimator.getInterpolator().getInterpolation(((float) valueAnimator.getCurrentPlayTime()) / 300.0f);
                float f5 = f4;
                float f6 = BitmapDescriptorFactory.HUE_RED;
                if (f5 != BitmapDescriptorFactory.HUE_RED) {
                    f6 = (f5 * ((float) (System.nanoTime() - nanoTime))) / 1.0E9f;
                }
                float f7 = f2;
                float f8 = f3;
                float f9 = f6 + f7 + ((f8 - f7) * interpolation);
                boolean z2 = z;
                if ((z2 && f9 > f8) || (!z2 && f9 < f8)) {
                    view.setX(f8);
                    ofFloat.cancel();
                    return;
                }
                view.setX(f9);
            }
        });
        ofFloat.setDuration(300L);
        ofFloat.setDuration(300L);
        ofFloat.setInterpolator(new AccelerateInterpolator(2.0f));
        ofFloat.addListener(animatorListener);
        ofFloat.start();
    }

    static /* synthetic */ void a(View view, float f2, float f3, int i) {
        final Drawable background = view.getBackground();
        if (background != null) {
            background.setState(new int[]{16842919, 16842910});
            background.setVisible(true, true);
            if (Build.VERSION.SDK_INT >= 21 && (background instanceof RippleDrawable)) {
                ((RippleDrawable) background).setHotspot(view.getWidth() * f2, view.getHeight() * f3);
            }
            view.invalidate();
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.6
                @Override // java.lang.Runnable
                public final void run() {
                    background.setState(new int[0]);
                }
            }, i);
        }
    }

    public static void a(final View view, final float f2, float f3, int i, int i2) {
        Drawable background;
        if (view != null && (background = view.getBackground()) != null) {
            MultiTimesRunnable multiTimesRunnable = new MultiTimesRunnable(view.getBackground(), i + 400, i2, new Runnable() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.5
                @Override // java.lang.Runnable
                public final void run() {
                    CallappAnimationUtils.a(view, f2, r6, r7);
                }
            });
            f.put(background, multiTimesRunnable);
            CallAppApplication.get().b(multiTimesRunnable);
        }
    }

    public static void a(View view, int i) {
        TranslateAnimation translateAnimation = new TranslateAnimation(i, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        translateAnimation.setDuration(500L);
        translateAnimation.setFillAfter(false);
        view.startAnimation(translateAnimation);
    }

    public static void a(View view, int i, int i2) {
        a(view, i, i2, (Math.abs(i2 - i) * 1000) / 540.0f);
    }

    public static void a(View view, int i, int i2, long j) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "rotation", i, i2);
        ofFloat.setDuration(j);
        ofFloat.setInterpolator(new AccelerateInterpolator());
        ofFloat.start();
    }

    public static void a(View view, View view2, FlipDirection flipDirection, int i) {
        new FlipViews(view, view2, flipDirection, i).run();
    }

    public static void a(View view, boolean z) {
        if (z) {
            ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.TRANSLATION_X, 10.0f));
            ofPropertyValuesHolder.setRepeatCount(-1);
            ofPropertyValuesHolder.setRepeatMode(2);
            ofPropertyValuesHolder.setDuration(500L);
            ofPropertyValuesHolder.start();
            return;
        }
        Animation animation = view.getAnimation();
        if (animation != null) {
            animation.cancel();
        }
    }

    private static int b(int i, int i2, float f2) {
        return (int) (Math.abs((i - i2) / f2) * 1000.0f);
    }

    public static Animator b(final View view, int i) {
        ValueAnimator ofInt = ValueAnimator.ofInt(0, i);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.18

            /* renamed from: a  reason: collision with root package name */
            int f16132a = 0;

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                int i2 = this.f16132a;
                this.f16132a = intValue;
                View view2 = view;
                if (view2 != null) {
                    view2.scrollBy(intValue - i2, 0);
                }
            }
        });
        ofInt.setStartDelay(200L);
        ofInt.setDuration(800L);
        return ofInt;
    }

    public static ObjectAnimator b(View view, int i, int i2) {
        ObjectAnimator objectAnimator;
        if (view != null) {
            view.setVisibility(0);
            objectAnimator = ObjectAnimator.ofFloat(view, "alpha", view.getAlpha(), 1.0f);
            objectAnimator.setDuration(i);
            objectAnimator.setStartDelay(i2);
        } else {
            objectAnimator = null;
        }
        return objectAnimator;
    }

    public static ValueAnimator b(final View view, int i, int i2, int i3) {
        ValueAnimator valueAnimator;
        if (view != null) {
            ValueAnimator valueAnimator2 = new ValueAnimator();
            valueAnimator2.setIntValues(i, i2);
            valueAnimator2.setEvaluator(new ArgbEvaluator());
            valueAnimator2.setDuration(i3);
            valueAnimator2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.21
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                    view.setBackgroundColor(((Integer) valueAnimator3.getAnimatedValue()).intValue());
                }
            });
            valueAnimator = valueAnimator2;
        } else {
            valueAnimator = null;
        }
        return valueAnimator;
    }

    public static void b(View view) {
        a(view, 0.5f, 0.5f, (int) ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED, 7);
    }

    public static Animator c(final View view, int i) {
        ValueAnimator ofInt = ValueAnimator.ofInt(0, i);
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.19

            /* renamed from: a  reason: collision with root package name */
            int f16134a = 0;

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                int i2 = this.f16134a;
                this.f16134a = intValue;
                View view2 = view;
                if (view2 != null) {
                    view2.scrollBy(-(intValue - i2), 0);
                }
            }
        };
        ofInt.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.20
            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                animator.removeAllListeners();
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                View view2 = view;
                if (view2 instanceof ViewPager) {
                    ((ViewPager) view2).setCurrentItem(0);
                } else if (view2 instanceof RecyclerView) {
                    ((RecyclerView) view2).b(0);
                }
                animator.removeAllListeners();
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
            }
        });
        ofInt.addUpdateListener(animatorUpdateListener);
        ofInt.setDuration(800L);
        return ofInt;
    }

    public static ObjectAnimator c(View view, int i, int i2) {
        return a(view, i, i2, view.getVisibility());
    }

    public static void c(View view) {
        Drawable background;
        MultiTimesRunnable multiTimesRunnable;
        if (view != null && (multiTimesRunnable = f.get((background = view.getBackground()))) != null) {
            CallAppApplication.get().c(multiTimesRunnable);
            f.remove(background);
            if (background != null) {
                background.setState(new int[0]);
                background.setVisible(true, true);
                view.invalidate();
            }
        }
    }
}
