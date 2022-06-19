package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$d.class */
public class SwipeRefreshLayout$d implements Animation.AnimationListener {

    /* renamed from: a */
    public final /* synthetic */ SwipeRefreshLayout f1431a;

    public SwipeRefreshLayout$d(SwipeRefreshLayout swipeRefreshLayout) {
        this.f1431a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        Objects.requireNonNull(this.f1431a);
        this.f1431a.l((Animation.AnimationListener) null);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
