package androidx.media2.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$z.class */
public class MediaControlView$z extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1249a;

    public MediaControlView$z(MediaControlView mediaControlView) {
        this.f1249a = mediaControlView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f1249a.J.setVisibility(0);
        this.f1249a.N.setVisibility(0);
    }
}
