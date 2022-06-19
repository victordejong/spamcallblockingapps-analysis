package androidx.media2.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$a0.class */
public class MediaControlView$a0 extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1213a;

    public MediaControlView$a0(MediaControlView mediaControlView) {
        this.f1213a = mediaControlView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        MediaControlView mediaControlView = this.f1213a;
        mediaControlView.r = 1;
        if (mediaControlView.D) {
            mediaControlView.post(mediaControlView.F0);
            this.f1213a.D = false;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f1213a.r = 3;
    }
}
