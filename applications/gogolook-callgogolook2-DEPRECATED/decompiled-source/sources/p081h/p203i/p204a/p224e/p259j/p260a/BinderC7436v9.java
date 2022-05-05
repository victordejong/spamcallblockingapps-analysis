package p081h.p203i.p204a.p224e.p259j.p260a;

import com.google.android.gms.ads.formats.UnifiedNativeAd;
/* renamed from: h.i.a.e.j.a.v9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/v9.class */
public final class BinderC7436v9 extends AbstractBinderC7277i9 {

    /* renamed from: a */
    public final UnifiedNativeAd.UnconfirmedClickListener f17502a;

    public BinderC7436v9(UnifiedNativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        this.f17502a = unconfirmedClickListener;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7264h9
    public final void onUnconfirmedClickCancelled() {
        this.f17502a.onUnconfirmedClickCancelled();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7264h9
    public final void onUnconfirmedClickReceived(String str) {
        this.f17502a.onUnconfirmedClickReceived(str);
    }
}
