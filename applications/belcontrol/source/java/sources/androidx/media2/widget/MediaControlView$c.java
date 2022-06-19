package androidx.media2.widget;

import android.animation.ValueAnimator;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$c.class */
public class MediaControlView$c implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1216a;

    public MediaControlView$c(MediaControlView mediaControlView) {
        this.f1216a = mediaControlView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f1216a.c(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
