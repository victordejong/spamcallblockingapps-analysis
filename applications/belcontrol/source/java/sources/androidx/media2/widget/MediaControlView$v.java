package androidx.media2.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$v.class */
public class MediaControlView$v extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1245a;

    public MediaControlView$v(MediaControlView mediaControlView) {
        this.f1245a = mediaControlView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1245a.J.setVisibility(4);
        this.f1245a.N.setVisibility(4);
    }
}
