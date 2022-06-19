package p193e.p194a.p195a.p258m;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.banner.BannerViewX;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.m.v2 */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/v2.class */
public final class C6965v2 extends RecyclerView.AbstractC0313c0 implements AbstractC6785b2 {

    /* renamed from: a */
    public final BannerViewX f22565a;

    /* renamed from: b */
    public final View f22566b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6965v2(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f22566b = view;
        this.f22565a = C10480a.m25911q(view, abstractC18905m, this, "ItemEvent.ACTION_OPEN_VIDEO_CALLER_ID_PROMO", "ItemEvent.ACTION_DISMISS_VIDEO_CALLER_ID_PROMO");
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6785b2
    public void setTitle(String str) {
        l.e(str, "text");
        this.f22565a.setTitle(str);
    }
}
