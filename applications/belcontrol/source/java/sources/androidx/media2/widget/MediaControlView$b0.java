package androidx.media2.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$b0.class */
public class MediaControlView$b0 extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1215a;

    public MediaControlView$b0(MediaControlView mediaControlView) {
        this.f1215a = mediaControlView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        MediaControlView mediaControlView = this.f1215a;
        mediaControlView.r = 2;
        if (mediaControlView.D) {
            mediaControlView.post(mediaControlView.F0);
            this.f1215a.D = false;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f1215a.r = 3;
    }
}
