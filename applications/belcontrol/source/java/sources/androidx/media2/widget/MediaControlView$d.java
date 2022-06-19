package androidx.media2.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.ImageButton;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$d.class */
public class MediaControlView$d extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1218a;

    public MediaControlView$d(MediaControlView mediaControlView) {
        this.f1218a = mediaControlView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f1218a.e0.setVisibility(8);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        int i = 0;
        this.f1218a.d0.setVisibility(0);
        ImageButton h = this.f1218a.h(zw.ffwd);
        uw uwVar = this.f1218a.d;
        if (uwVar == null || !uwVar.d()) {
            i = 8;
        }
        h.setVisibility(i);
    }
}
