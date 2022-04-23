package p081h.p203i.p204a.p224e.p259j.p260a;

import com.google.android.gms.ads.AdListener;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.c3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/c3.class */
public final class BinderC7193c3 extends AbstractBinderC7194c4 {

    /* renamed from: a */
    public final AdListener f17309a;

    public BinderC7193c3(AdListener adListener) {
        this.f17309a = adListener;
    }

    /* renamed from: G0 */
    public final AdListener m20966G0() {
        return this.f17309a;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7181b4
    public final void onAdClicked() {
        this.f17309a.onAdClicked();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7181b4
    public final void onAdClosed() {
        this.f17309a.onAdClosed();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7181b4
    public final void onAdFailedToLoad(int i) {
        this.f17309a.onAdFailedToLoad(i);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7181b4
    public final void onAdImpression() {
        this.f17309a.onAdImpression();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7181b4
    public final void onAdLeftApplication() {
        this.f17309a.onAdLeftApplication();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7181b4
    public final void onAdLoaded() {
        this.f17309a.onAdLoaded();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7181b4
    public final void onAdOpened() {
        this.f17309a.onAdOpened();
    }
}
