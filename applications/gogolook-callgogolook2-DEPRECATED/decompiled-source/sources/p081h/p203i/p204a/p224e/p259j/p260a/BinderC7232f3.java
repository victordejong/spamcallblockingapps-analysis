package p081h.p203i.p204a.p224e.p259j.p260a;

import com.google.android.gms.ads.reward.AdMetadataListener;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.f3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/f3.class */
public final class BinderC7232f3 extends AbstractBinderC7395s4 {

    /* renamed from: a */
    public final AdMetadataListener f17332a;

    public BinderC7232f3(AdMetadataListener adMetadataListener) {
        this.f17332a = adMetadataListener;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7383r4
    /* renamed from: r0 */
    public final void mo20710r0() {
        AdMetadataListener adMetadataListener = this.f17332a;
        if (adMetadataListener != null) {
            adMetadataListener.onAdMetadataChanged();
        }
    }
}
