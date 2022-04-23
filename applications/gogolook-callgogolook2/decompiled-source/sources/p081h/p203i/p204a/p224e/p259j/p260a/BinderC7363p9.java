package p081h.p203i.p204a.p224e.p259j.p260a;

import com.google.android.gms.ads.formats.NativeContentAd;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.p9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/p9.class */
public final class BinderC7363p9 extends AbstractBinderC7411t8 {

    /* renamed from: a */
    public final NativeContentAd.OnContentAdLoadedListener f17426a;

    public BinderC7363p9(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
        this.f17426a = onContentAdLoadedListener;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7399s8
    /* renamed from: a */
    public final void mo20678a(AbstractC7289j8 j8Var) {
        this.f17426a.onContentAdLoaded(new C7314l8(j8Var));
    }
}
