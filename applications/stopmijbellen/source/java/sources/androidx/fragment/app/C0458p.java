package androidx.fragment.app;

import android.view.View;
import p120i0.C3056b;
/* renamed from: androidx.fragment.app.p */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/p.class */
public class C0458p implements C3056b.AbstractC3057a {

    /* renamed from: a */
    public final /* synthetic */ Fragment f1896a;

    public C0458p(Fragment fragment) {
        this.f1896a = fragment;
    }

    @Override // p120i0.C3056b.AbstractC3057a
    /* renamed from: a */
    public void mo2665a() {
        if (this.f1896a.getAnimatingAway() != null) {
            View animatingAway = this.f1896a.getAnimatingAway();
            this.f1896a.setAnimatingAway(null);
            animatingAway.clearAnimation();
        }
        this.f1896a.setAnimator(null);
    }
}
