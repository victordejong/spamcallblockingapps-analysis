package p193e.p194a.p195a.p258m;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.banner.BannerViewX;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.m.j */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/j.class */
public final class C6896j extends RecyclerView.AbstractC0313c0 implements AbstractC6912l1 {

    /* renamed from: a */
    public final BannerViewX f22489a;

    /* renamed from: b */
    public final View f22490b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6896j(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f22490b = view;
        this.f22489a = C10480a.m25911q(view, abstractC18905m, this, "ItemEvent.ACTION_DISMISS_GROUP_VOICE_PROMO", "ItemEvent.ACTION_OPEN_GROUP_VOICE_PROMO");
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6912l1
    public void setTitle(String str) {
        l.e(str, "text");
        this.f22489a.setTitle(str);
    }
}
