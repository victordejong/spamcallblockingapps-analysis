package p193e.p194a.p195a.p258m;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.banner.BannerViewX;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.m.i */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/i.class */
public final class C6890i extends RecyclerView.AbstractC0313c0 implements AbstractC6906k1 {

    /* renamed from: a */
    public final BannerViewX f22483a;

    /* renamed from: b */
    public final View f22484b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6890i(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f22484b = view;
        this.f22483a = C10480a.m25911q(view, abstractC18905m, this, "ItemEvent.ACTION_PRETEND_CALL_CTA_CLICKED", "ItemEvent.ACTION_PRETEND_CALL_DISMISS_PROMO");
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6906k1
    /* renamed from: N */
    public void mo30395N() {
        BannerViewX bannerViewX = this.f22483a;
        String string = bannerViewX.getContext().getString(C2752R.string.PretendCallPromoBannerDescriptionNonPremiumUser);
        l.d(string, "context.getString(R.stri…escriptionNonPremiumUser)");
        bannerViewX.setSubtitle(string);
        bannerViewX.setPrimaryButtonText(bannerViewX.getContext().getString(C2752R.string.NewFeaturePromoBannerTryNowCta));
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6906k1
    /* renamed from: P */
    public void mo30394P() {
        BannerViewX bannerViewX = this.f22483a;
        String string = bannerViewX.getContext().getString(C2752R.string.PretendCallPromoBannerDescriptionPremiumUser);
        l.d(string, "context.getString(R.stri…erDescriptionPremiumUser)");
        bannerViewX.setSubtitle(string);
        bannerViewX.setPrimaryButtonText(bannerViewX.getContext().getString(C2752R.string.NewFeaturePromoBannerTryNowCta));
    }
}
