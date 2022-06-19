package p193e.p194a.p195a.p258m;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.banner.BannerViewX;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.m.t2 */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/t2.class */
public final class C6956t2 extends RecyclerView.AbstractC0313c0 implements AbstractC6984z1 {

    /* renamed from: a */
    public final BannerViewX f22560a;

    /* renamed from: b */
    public final View f22561b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6956t2(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f22561b = view;
        this.f22560a = C10480a.m25911q(view, abstractC18905m, this, "ItemEvent.ACTION_UPDATE_MOBILE_SERVICES_CLICKED", "ItemEvent.ACTION_DISMISS_UPDATE_MOBILE_SERVICES_PROMO");
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6984z1
    /* renamed from: c */
    public void mo30331c(String str) {
        l.e(str, "subtitle");
        this.f22560a.setSubtitle(str);
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6984z1
    public void setTitle(String str) {
        l.e(str, "title");
        this.f22560a.setTitle(str);
    }
}
