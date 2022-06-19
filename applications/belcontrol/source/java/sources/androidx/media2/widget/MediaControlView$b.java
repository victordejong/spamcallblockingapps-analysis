package androidx.media2.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.ImageButton;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$b.class */
public class MediaControlView$b extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ MediaControlView f1214a;

    public MediaControlView$b(MediaControlView mediaControlView) {
        this.f1214a = mediaControlView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        int i = 4;
        this.f1214a.d0.setVisibility(4);
        ImageButton h = this.f1214a.h(zw.ffwd);
        uw uwVar = this.f1214a.d;
        if (uwVar == null || !uwVar.d()) {
            i = 8;
        }
        h.setVisibility(i);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f1214a.e0.setVisibility(0);
    }
}
