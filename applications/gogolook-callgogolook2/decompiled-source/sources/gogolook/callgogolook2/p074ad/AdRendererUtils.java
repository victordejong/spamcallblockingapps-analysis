package gogolook.callgogolook2.p074ad;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import kotlin.Metadata;
import p081h.p160h.p161a.p170p.C6272d;
import p081h.p160h.p161a.p171q.C6287a;
import p459j.p460a.p582w0.C14217x3;
import p626l.C14986p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0004H\u0007J\u0018\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0006\u0010\u0011\u001a\u00020\u0012J\u0018\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J\u0018\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0006H\u0002J\u0012\u0010\u001c\u001a\u00020\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0007J\u0012\u0010\u001d\u001a\u00020\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u001e"}, m815d2 = {"Lgogolook/callgogolook2/ad/AdRendererUtils;", "", "()V", "LOG_STICKY_AD_ANIMATION_DURATION", "", "LOG_STICKY_AD_HEIGHT", "", "expandAdVertically", "", "rlAd", "Landroid/view/ViewGroup;", "maxHeightInDp", "animationDuration", "findAndSetAdVisibility", "viewGroup", "show", "", "logStickyAdslideDownAnimation", "Landroid/view/animation/TranslateAnimation;", "setCloseButton", "viewHolder", "Lcom/gogolook/adsdk/view/NativeViewHolder;", "adUISettings", "Lgogolook/callgogolook2/ad/AdUISettings;", "setCloseButtonPadding", "view", "Landroid/view/View;", "padding", "slideViewDown", "slideViewUp", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.ad.AdRendererUtils */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdRendererUtils.class */
public final class AdRendererUtils {
    public static final long LOG_STICKY_AD_ANIMATION_DURATION = 400;
    public static final AdRendererUtils INSTANCE = new AdRendererUtils();
    public static final int LOG_STICKY_AD_HEIGHT = C14217x3.m2201a(88.0f);

    /* renamed from: a */
    public static final void m28852a(final View view) {
        if (view != null) {
            final int measuredHeight = view.getMeasuredHeight();
            Animation adRendererUtils$slideViewDown$1$collapseAnimation$1 = new Animation() { // from class: gogolook.callgogolook2.ad.AdRendererUtils$slideViewDown$1$collapseAnimation$1
                @Override // android.view.animation.Animation
                public void applyTransformation(float f, Transformation transformation) {
                    C15149k.m377b(transformation, "t");
                    if (f >= 1.0f) {
                        view.setVisibility(8);
                        return;
                    }
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    int i = measuredHeight;
                    layoutParams.height = i - ((int) (i * f));
                    view.requestLayout();
                }

                @Override // android.view.animation.Animation
                public boolean willChangeBounds() {
                    return true;
                }
            };
            adRendererUtils$slideViewDown$1$collapseAnimation$1.setDuration(C14217x3.m2169b(measuredHeight));
            view.startAnimation(adRendererUtils$slideViewDown$1$collapseAnimation$1);
        }
    }

    /* renamed from: a */
    public static final void m28850a(final ViewGroup viewGroup, final int i, final long j) {
        if (viewGroup != null) {
            ValueAnimator ofInt = ValueAnimator.ofInt(0, i);
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: gogolook.callgogolook2.ad.AdRendererUtils$expandAdVertically$$inlined$apply$lambda$1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
                    C15149k.m383a((Object) valueAnimator, "valueAnimator");
                    Object animatedValue = valueAnimator.getAnimatedValue();
                    if (animatedValue != null) {
                        layoutParams.height = ((Integer) animatedValue).intValue();
                        viewGroup.requestLayout();
                        return;
                    }
                    throw new C14986p("null cannot be cast to non-null type kotlin.Int");
                }
            });
            ofInt.addListener(new AnimatorListenerAdapter() { // from class: gogolook.callgogolook2.ad.AdRendererUtils$expandAdVertically$$inlined$apply$lambda$2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    C15149k.m377b(animator, "animation");
                    viewGroup.setVisibility(0);
                }
            });
            C15149k.m383a((Object) ofInt, "it");
            ofInt.setDuration(j);
            ofInt.start();
        }
    }

    /* renamed from: a */
    public static final void m28849a(C6287a aVar, AdUISettings adUISettings) {
        C15149k.m377b(aVar, "viewHolder");
        C15149k.m377b(adUISettings, "adUISettings");
        int b = adUISettings.m28823b();
        int i = 0;
        int i2 = 8;
        if (b == C6272d.f15547h) {
            i = 8;
            i2 = 0;
        } else if (b != C6272d.f15548i) {
            i = 8;
        }
        ImageView imageView = aVar.f15573h;
        if (imageView != null) {
            if (i2 == 0) {
                INSTANCE.m28851a(imageView, adUISettings.m28825a());
            }
            imageView.setVisibility(i2);
        }
        ImageView imageView2 = aVar.f15574i;
        if (imageView2 != null) {
            if (i == 0) {
                INSTANCE.m28851a(imageView2, adUISettings.m28825a());
            }
            imageView2.setVisibility(i);
        }
    }

    /* renamed from: b */
    public static final void m28848b(final View view) {
        if (view != null) {
            view.measure(-1, -2);
            view.getLayoutParams().height = 1;
            view.setVisibility(0);
            final int measuredHeight = view.getMeasuredHeight();
            Animation adRendererUtils$slideViewUp$1$animation$1 = new Animation() { // from class: gogolook.callgogolook2.ad.AdRendererUtils$slideViewUp$1$animation$1
                @Override // android.view.animation.Animation
                public void applyTransformation(float f, Transformation transformation) {
                    C15149k.m377b(transformation, "t");
                    view.getLayoutParams().height = f >= 1.0f ? -2 : (int) (measuredHeight * f);
                    view.requestLayout();
                }

                @Override // android.view.animation.Animation
                public boolean willChangeBounds() {
                    return true;
                }
            };
            adRendererUtils$slideViewUp$1$animation$1.setDuration(C14217x3.m2169b(measuredHeight));
            view.startAnimation(adRendererUtils$slideViewUp$1$animation$1);
        }
    }

    /* renamed from: a */
    public final TranslateAnimation m28853a() {
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, -LOG_STICKY_AD_HEIGHT, 0.0f);
        translateAnimation.setDuration(400L);
        return translateAnimation;
    }

    /* renamed from: a */
    public final void m28851a(View view, int i) {
        view.setPadding(i, i, i, i);
    }
}
