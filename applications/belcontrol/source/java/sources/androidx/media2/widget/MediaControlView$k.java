package androidx.media2.widget;

import android.animation.ValueAnimator;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$k.class */
public class MediaControlView$k implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1234a;

    public MediaControlView$k(MediaControlView mediaControlView) {
        this.f1234a = mediaControlView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        MediaControlView mediaControlView = this.f1234a;
        mediaControlView.Q.getThumb().setLevel((int) ((mediaControlView.q == 2 ? 0 : 10000) * floatValue));
        this.f1234a.J.setAlpha(floatValue);
        this.f1234a.N.setAlpha(floatValue);
    }
}
