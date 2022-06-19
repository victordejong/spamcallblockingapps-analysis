package p193e.p194a.p195a.p258m;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.banner.BannerViewX;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.m.y2 */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/y2.class */
public final class C6981y2 extends RecyclerView.AbstractC0313c0 implements AbstractC6839e2 {

    /* renamed from: a */
    public final BannerViewX f22574a;

    /* renamed from: b */
    public final View f22575b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6981y2(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f22575b = view;
        this.f22574a = C10480a.m25911q(view, abstractC18905m, this, "ItemEvent.ACTION_WHATSAPP_CALLER_ID_CTA_CLICKED", "ItemEvent.ACTION_WHATSAPP_CALLER_ID_DISMISS_PROMO");
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6839e2
    /* renamed from: c */
    public void mo30333c(String str) {
        l.e(str, "text");
        this.f22574a.setSubtitle(str);
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6839e2
    /* renamed from: y */
    public void mo30332y(String str) {
        l.e(str, "text");
        this.f22574a.setPrimaryButtonText(str);
    }
}
