package p193e.p194a.p195a.p258m;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.banner.BannerViewX;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.m.f */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/f.class */
public final class C6847f extends RecyclerView.AbstractC0313c0 implements AbstractC6886h1 {

    /* renamed from: a */
    public final BannerViewX f22393a;

    /* renamed from: b */
    public final C19235i0 f22394b;

    /* renamed from: c */
    public final View f22395c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6847f(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f22395c = view;
        BannerViewX m25911q = C10480a.m25911q(view, abstractC18905m, this, "ItemEvent.ACTION_CONTINUE_CONTEXT_CALL", "ItemEvent.ACTION_DISMISS_CONTEXT_CALL");
        this.f22393a = m25911q;
        Context context = m25911q.getContext();
        l.d(context, "bannerView.context");
        this.f22394b = new C19235i0(context);
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6886h1
    /* renamed from: J2 */
    public void mo30407J2() {
        BannerViewX bannerViewX = this.f22393a;
        String string = bannerViewX.getContext().getString(2131889768);
        l.d(string, "context.getString(R.stri…mo_context_call_subtitle)");
        bannerViewX.setTitle(string);
        String string2 = bannerViewX.getContext().getString(C2752R.string.promo_context_call_new_user_subtitle);
        l.d(string2, "context.getString(R.stri…t_call_new_user_subtitle)");
        bannerViewX.setSubtitle(string2);
        bannerViewX.setPrimaryButtonText(bannerViewX.getContext().getString(C2752R.string.promo_context_call_setup));
        bannerViewX.setSecondaryButtonText(bannerViewX.getContext().getString(2131887882));
        bannerViewX.setImage(this.f22394b.mo13757m(C2752R.attr.banner_context_call_new_user));
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6886h1
    /* renamed from: h2 */
    public void mo30406h2() {
        BannerViewX bannerViewX = this.f22393a;
        String string = bannerViewX.getContext().getString(2131889769);
        l.d(string, "context.getString(R.stri…promo_context_call_title)");
        bannerViewX.setTitle(string);
        String string2 = bannerViewX.getContext().getString(2131889768);
        l.d(string2, "context.getString(R.stri…mo_context_call_subtitle)");
        bannerViewX.setSubtitle(string2);
        bannerViewX.setPrimaryButtonText(bannerViewX.getContext().getString(2131887875));
        bannerViewX.setSecondaryButtonText(bannerViewX.getContext().getString(2131887882));
        bannerViewX.setImage(this.f22394b.mo13757m(C2752R.attr.banner_context_call));
    }
}
