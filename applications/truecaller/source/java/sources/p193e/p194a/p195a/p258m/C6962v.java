package p193e.p194a.p195a.p258m;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.banner.BannerViewX;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.m.v */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/v.class */
public final class C6962v extends RecyclerView.AbstractC0313c0 implements AbstractC6944r1 {

    /* renamed from: a */
    public final BannerViewX f22563a;

    /* renamed from: b */
    public final View f22564b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6962v(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f22564b = view;
        this.f22563a = C10480a.m25911q(view, abstractC18905m, this, "ItemEvent.ACTION_PERSONAL_SAFETY_GET_IT_NOW", "ItemEvent.ACTION_DISMISS_PERSONAL_SAFETY_PROMO");
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6944r1
    /* renamed from: k */
    public void mo30351k(String str) {
        l.e(str, "text");
        this.f22563a.setSubtitle(str);
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6944r1
    public void setTitle(String str) {
        l.e(str, "text");
        this.f22563a.setTitle(str);
    }
}
