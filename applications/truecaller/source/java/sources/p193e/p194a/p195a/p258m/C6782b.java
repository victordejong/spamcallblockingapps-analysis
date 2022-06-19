package p193e.p194a.p195a.p258m;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.banner.BannerViewX;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.m.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/b.class */
public final class C6782b extends RecyclerView.AbstractC0313c0 implements AbstractC6837e1 {

    /* renamed from: a */
    public final BannerViewX f22327a;

    /* renamed from: b */
    public final View f22328b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6782b(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f22328b = view;
        this.f22327a = C10480a.m25911q(view, abstractC18905m, this, "ItemEvent.ACTION_ANNOUNCE_CALLER_ID_CTA_CLICKED", "ItemEvent.ACTION_ANNOUNCE_CALLER_ID_DISMISS_PROMO");
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6837e1
    /* renamed from: N */
    public void mo30429N() {
        BannerViewX bannerViewX = this.f22327a;
        String string = bannerViewX.getContext().getString(C2752R.string.PremiumFeatureAnnounceCallerIdShortDescription);
        l.d(string, "context.getString(R.stri…CallerIdShortDescription)");
        bannerViewX.setSubtitle(string);
        bannerViewX.setPrimaryButtonText(bannerViewX.getContext().getString(C2752R.string.NewFeaturePromoBannerUpgradeNowCta));
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6837e1
    /* renamed from: P */
    public void mo30428P() {
        BannerViewX bannerViewX = this.f22327a;
        String string = bannerViewX.getContext().getString(C2752R.string.PremiumFeatureAnnounceCallerIdShortDescription);
        l.d(string, "context.getString(R.stri…CallerIdShortDescription)");
        bannerViewX.setSubtitle(string);
        bannerViewX.setPrimaryButtonText(bannerViewX.getContext().getString(C2752R.string.NewFeaturePromoBannerTryNowCta));
    }
}
