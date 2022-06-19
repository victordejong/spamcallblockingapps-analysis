package p193e.p194a.p195a.p258m;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.banner.BannerViewX;
import com.truecaller.premium.PremiumLaunchContext;
import p193e.p194a.p1111o2.AbstractC18905m;
import s1.z.c.l;
/* renamed from: e.a.a.m.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/a.class */
public final class C6776a extends RecyclerView.AbstractC0313c0 {

    /* renamed from: a */
    public final View f22323a;

    /* renamed from: b */
    public final AbstractC18905m f22324b;

    /* renamed from: c */
    public final PremiumLaunchContext f22325c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6776a(View view, AbstractC18905m abstractC18905m, PremiumLaunchContext premiumLaunchContext) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        l.e(premiumLaunchContext, "launchContext");
        this.f22323a = view;
        this.f22324b = abstractC18905m;
        this.f22325c = premiumLaunchContext;
        if (premiumLaunchContext == PremiumLaunchContext.SPAM_TAB_PROMO) {
            view.setBackgroundResource(C2752R.C2753drawable.background_tcx_promo_banner);
        }
        BannerViewX bannerViewX = (BannerViewX) view.findViewById(2131362284);
        bannerViewX.setPrimaryButtonCLickListener(new a(0, bannerViewX, this));
        bannerViewX.setSecondaryButtonCLickListener(new a(1, bannerViewX, this));
    }
}
