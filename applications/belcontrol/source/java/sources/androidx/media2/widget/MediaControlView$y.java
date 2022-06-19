package androidx.media2.widget;

import android.animation.ValueAnimator;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$y.class */
public class MediaControlView$y implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1248a;

    public MediaControlView$y(MediaControlView mediaControlView) {
        this.f1248a = mediaControlView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        MediaControlView mediaControlView = this.f1248a;
        mediaControlView.Q.getThumb().setLevel((int) ((mediaControlView.q == 2 ? 0 : 10000) * floatValue));
        this.f1248a.J.setAlpha(floatValue);
        this.f1248a.N.setAlpha(floatValue);
    }
}
