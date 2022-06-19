package androidx.media2.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$d0.class */
public class MediaControlView$d0 extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1219a;

    public MediaControlView$d0(MediaControlView mediaControlView) {
        this.f1219a = mediaControlView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1219a.r = 0;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f1219a.r = 3;
    }
}
