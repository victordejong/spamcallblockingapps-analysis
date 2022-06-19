package p1727n3.p1859r.p1860a;

import android.animation.Animator;
import android.view.View;
import androidx.fragment.app.Fragment;
import p1727n3.p1807k.p1816e.C26508a;
/* renamed from: n3.r.a.m */
/* loaded from: classes-dex2jar.jar:n3/r/a/m.class */
public class C26936m implements C26508a.AbstractC26509a {

    /* renamed from: a */
    public final /* synthetic */ Fragment f75392a;

    public C26936m(Fragment fragment) {
        this.f75392a = fragment;
    }

    @Override // p1727n3.p1807k.p1816e.C26508a.AbstractC26509a
    /* renamed from: f0 */
    public void mo1049f0() {
        if (this.f75392a.getAnimatingAway() != null) {
            View animatingAway = this.f75392a.getAnimatingAway();
            this.f75392a.setAnimatingAway((View) null);
            animatingAway.clearAnimation();
        }
        this.f75392a.setAnimator((Animator) null);
    }
}
