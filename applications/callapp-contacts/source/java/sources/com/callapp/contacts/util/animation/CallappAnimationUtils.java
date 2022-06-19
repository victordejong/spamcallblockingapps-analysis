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

    /* renamed from: a */
    public static final Interpolator f28090a = new AccelerateDecelerateInterpolator(2);

    /* renamed from: b */
    public static final Interpolator f28091b = new AccelerateDecelerateInterpolator(2);

    /* renamed from: c */
    public static final float f28092c = Activities.m27699a(40.0f);

    /* renamed from: d */
    public static final float f28093d = Activities.m27699a(120.0f);

    /* renamed from: e */
    public static final float f28094e = Activities.m27699a(240.0f);

    /* renamed from: f */
    private static HashMap<Drawable, MultiTimesRunnable> f28095f = new HashMap<>();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/animation/CallappAnimationUtils$AccelerateDecelerateInterpolator.class */
    static class AccelerateDecelerateInterpolator implements Interpolator {

        /* renamed from: a */
        private final int f28133a;

        AccelerateDecelerateInterpolator(int i) {
            this.f28133a = i;
        }

        /* JADX WARN: Type inference failed for: r0v16, types: [double] */
        /* JADX WARN: Type inference failed for: r0v9, types: [double] */
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return f < 0.5f ? Math.pow(f * 2.0f, this.f28133a) * 0.5d : (Math.pow(((f - 0.5f) * 2.0f) - 1.0f, this.f28133a) * 0.5d) + 1.0d;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/animation/CallappAnimationUtils$FlipDirection.class */
    public enum FlipDirection {
        LTR,
        RTL
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/animation/CallappAnimationUtils$MultiTimesRunnable.class */
    public static class MultiTimesRunnable implements Runnable {

        /* renamed from: a */
        private final Drawable f28134a;

        /* renamed from: b */
        private int f28135b;

        /* renamed from: c */
        private final int f28136c;

        /* renamed from: d */
        private final Runnable f28137d;

        private MultiTimesRunnable(Drawable drawable, int i, int i2, Runnable runnable) {
            this.f28134a = drawable;
            this.f28135b = i2;
            this.f28136c = i;
            this.f28137d = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable = this.f28137d;
            if (runnable != null) {
                runnable.run();
            }
            int i = this.f28135b - 1;
            this.f28135b = i;
            if (i == 0) {
                CallappAnimationUtils.f28095f.remove(this.f28134a);
            } else {
                CallAppApplication.get().m31869a(this, this.f28136c);
            }
        }
    }

    /* renamed from: a */
    public static int m27192a(int i, int i2, float f) {
        return (int) (i - ((i - i2) * f));
    }

    /* renamed from: a */
    public static ObjectAnimator m27183a(View view, int i, int i2, int i3) {
        return m27182a(view, i, i2, i3, (Animator.AnimatorListener) null);
    }

    /* renamed from: a */
    public static ObjectAnimator m27182a(final View view, int i, int i2, final int i3, final Animator.AnimatorListener animatorListener) {
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

    /* renamed from: a */
    public static ObjectAnimator m27180a(final View view, Property<View, Float> property, int i, int i2, int i3) {
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

    /* renamed from: a */
    public static ValueAnimator m27191a(int i, int i2, float f, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        ValueAnimator ofObject = ValueAnimator.ofObject(new IntEvaluator(), Integer.valueOf(i), Integer.valueOf(i2));
        ofObject.setDuration(m27176b(i, i2, f));
        ofObject.addUpdateListener(animatorUpdateListener);
        return ofObject;
    }

    /* renamed from: a */
    public static ValueAnimator m27184a(final View view, int i, int i2, float f, final ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        return m27191a(i, i2, f, new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewUtils.m27326a(view, (int) BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW, ((Integer) valueAnimator.getAnimatedValue()).intValue());
                ValueAnimator.AnimatorUpdateListener animatorUpdateListener2 = animatorUpdateListener;
                if (animatorUpdateListener2 != null) {
                    animatorUpdateListener2.onAnimationUpdate(valueAnimator);
                }
            }
        });
    }

    /* renamed from: a */
    public static ValueAnimator m27177a(final Object obj, int i, int i2, int i3) {
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(i2), Integer.valueOf(i3));
        switch (i) {
            case 0:
                ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.7
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ThemeUtils.m27384a((Window) obj, ((Integer) valueAnimator.getAnimatedValue()).intValue());
                    }
                });
                break;
            case 1:
                ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.8

                    /* renamed from: a */
                    ColorDrawable f28130a = new ColorDrawable();

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        if (obj != null) {
                            this.f28130a.setColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
                            ((ActionBar) obj).mo46241a(this.f28130a);
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
                        ((DualCirclesCheckBox) obj).m26747b(((Integer) valueAnimator.getAnimatedValue()).intValue()).invalidate();
                    }
                });
                break;
            case 5:
                ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.12
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ((DualCirclesCheckBox) obj).m26750a(((Integer) valueAnimator.getAnimatedValue()).intValue()).invalidate();
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

    /* renamed from: a */
    public static void m27190a(View view) {
        view.startAnimation(AnimationUtils.loadAnimation(CallAppApplication.get(), 2130772015));
    }

    /* renamed from: a */
    public static void m27189a(final View view, final float f, final float f2, final float f3, Animator.AnimatorListener animatorListener) {
        final ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
        boolean z = f2 > f;
        final long nanoTime = System.nanoTime();
        final boolean z2 = z;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float interpolation = valueAnimator.getInterpolator().getInterpolation(((float) valueAnimator.getCurrentPlayTime()) / 300.0f);
                float f4 = f3;
                float f5 = 0.0f;
                if (f4 != BitmapDescriptorFactory.HUE_RED) {
                    f5 = (f4 * ((float) (System.nanoTime() - nanoTime))) / 1.0E9f;
                }
                float f6 = f;
                float f7 = f2;
                float f8 = f5 + f6 + ((f7 - f6) * interpolation);
                boolean z3 = z2;
                if (!((z3 && f8 > f7) || (!z3 && f8 < f7))) {
                    view.setX(f8);
                    return;
                }
                view.setX(f7);
                ofFloat.cancel();
            }
        });
        ofFloat.setDuration(300L);
        ofFloat.setDuration(300L);
        ofFloat.setInterpolator(new AccelerateInterpolator(2.0f));
        ofFloat.addListener(animatorListener);
        ofFloat.start();
    }

    /* renamed from: a */
    static /* synthetic */ void m27188a(View view, float f, float f2, int i) {
        final Drawable background = view.getBackground();
        if (background != null) {
            background.setState(new int[]{16842919, 16842910});
            background.setVisible(true, true);
            if (Build.VERSION.SDK_INT >= 21 && (background instanceof RippleDrawable)) {
                ((RippleDrawable) background).setHotspot(view.getWidth() * f, view.getHeight() * f2);
            }
            view.invalidate();
            CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.6
                @Override // java.lang.Runnable
                public final void run() {
                    background.setState(new int[0]);
                }
            }, i);
        }
    }

    /* renamed from: a */
    public static void m27187a(final View view, final float f, float f2, int i, int i2) {
        Drawable background;
        if (view == null || (background = view.getBackground()) == null) {
            return;
        }
        MultiTimesRunnable multiTimesRunnable = new MultiTimesRunnable(view.getBackground(), i + 400, i2, new Runnable() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.5
            @Override // java.lang.Runnable
            public final void run() {
                CallappAnimationUtils.m27188a(view, f, r6, r7);
            }
        });
        f28095f.put(background, multiTimesRunnable);
        CallAppApplication.get().m31864b(multiTimesRunnable);
    }

    /* renamed from: a */
    public static void m27186a(View view, int i) {
        TranslateAnimation translateAnimation = new TranslateAnimation(i, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        translateAnimation.setDuration(500L);
        translateAnimation.setFillAfter(false);
        view.startAnimation(translateAnimation);
    }

    /* renamed from: a */
    public static void m27185a(View view, int i, int i2) {
        m27181a(view, i, i2, (Math.abs(i2 - i) * 1000) / 540.0f);
    }

    /* renamed from: a */
    public static void m27181a(View view, int i, int i2, long j) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "rotation", i, i2);
        ofFloat.setDuration(j);
        ofFloat.setInterpolator(new AccelerateInterpolator());
        ofFloat.start();
    }

    /* renamed from: a */
    public static void m27179a(View view, View view2, FlipDirection flipDirection, int i) {
        new FlipViews(view, view2, flipDirection, i).run();
    }

    /* renamed from: a */
    public static void m27178a(View view, boolean z) {
        if (!z) {
            Animation animation = view.getAnimation();
            if (animation == null) {
                return;
            }
            animation.cancel();
            return;
        }
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.TRANSLATION_X, 10.0f));
        ofPropertyValuesHolder.setRepeatCount(-1);
        ofPropertyValuesHolder.setRepeatMode(2);
        ofPropertyValuesHolder.setDuration(500L);
        ofPropertyValuesHolder.start();
    }

    /* renamed from: b */
    private static int m27176b(int i, int i2, float f) {
        return (int) (Math.abs((i - i2) / f) * 1000.0f);
    }

    /* renamed from: b */
    public static Animator m27174b(final View view, int i) {
        ValueAnimator ofInt = ValueAnimator.ofInt(0, i);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.18

            /* renamed from: a */
            int f28111a = 0;

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                int i2 = this.f28111a;
                this.f28111a = intValue;
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

    /* renamed from: b */
    public static ObjectAnimator m27173b(View view, int i, int i2) {
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

    /* renamed from: b */
    public static ValueAnimator m27172b(final View view, int i, int i2, int i3) {
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

    /* renamed from: b */
    public static void m27175b(View view) {
        m27187a(view, 0.5f, 0.5f, (int) ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED, 7);
    }

    /* renamed from: c */
    public static Animator m27170c(final View view, int i) {
        ValueAnimator ofInt = ValueAnimator.ofInt(0, i);
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.callapp.contacts.util.animation.CallappAnimationUtils.19

            /* renamed from: a */
            int f28113a = 0;

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                int i2 = this.f28113a;
                this.f28113a = intValue;
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
                    ((RecyclerView) view2).m40464b(0);
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

    /* renamed from: c */
    public static ObjectAnimator m27169c(View view, int i, int i2) {
        return m27183a(view, i, i2, view.getVisibility());
    }

    /* renamed from: c */
    public static void m27171c(View view) {
        Drawable background;
        MultiTimesRunnable multiTimesRunnable;
        if (view == null || (multiTimesRunnable = f28095f.get((background = view.getBackground()))) == null) {
            return;
        }
        CallAppApplication.get().m31861c(multiTimesRunnable);
        f28095f.remove(background);
        if (background == null) {
            return;
        }
        background.setState(new int[0]);
        background.setVisible(true, true);
        view.invalidate();
    }
}
