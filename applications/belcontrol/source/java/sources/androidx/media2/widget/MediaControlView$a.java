package androidx.media2.widget;

import android.animation.ValueAnimator;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$a.class */
public class MediaControlView$a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1212a;

    public MediaControlView$a(MediaControlView mediaControlView) {
        this.f1212a = mediaControlView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f1212a.c(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
