package androidx.media2.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$c0.class */
public class MediaControlView$c0 extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1217a;

    public MediaControlView$c0(MediaControlView mediaControlView) {
        this.f1217a = mediaControlView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        MediaControlView mediaControlView = this.f1217a;
        mediaControlView.r = 2;
        if (mediaControlView.D) {
            mediaControlView.post(mediaControlView.F0);
            this.f1217a.D = false;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f1217a.r = 3;
    }
}
