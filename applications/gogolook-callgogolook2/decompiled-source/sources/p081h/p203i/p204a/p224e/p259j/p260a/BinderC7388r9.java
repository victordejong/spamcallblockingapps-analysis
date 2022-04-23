package p081h.p203i.p204a.p224e.p259j.p260a;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.r9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/r9.class */
public final class BinderC7388r9 extends AbstractBinderC7483z8 {

    /* renamed from: a */
    public final NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener f17440a;

    public BinderC7388r9(NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener) {
        this.f17440a = onCustomTemplateAdLoadedListener;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7471y8
    /* renamed from: a */
    public final void mo20466a(AbstractC7326m8 m8Var) {
        this.f17440a.onCustomTemplateAdLoaded(C7350o8.m20739a(m8Var));
    }
}
