package p081h.p203i.p204a.p224e.p259j.p260a;

import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.m7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/m7.class */
public final class BinderC7325m7 extends AbstractBinderC7301k7 {

    /* renamed from: a */
    public final OnCustomRenderedAdLoadedListener f17393a;

    public BinderC7325m7(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.f17393a = onCustomRenderedAdLoadedListener;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7288j7
    /* renamed from: a */
    public final void mo20793a(AbstractC7262h7 h7Var) {
        this.f17393a.onCustomRenderedAdLoaded(new C7249g7(h7Var));
    }
}
