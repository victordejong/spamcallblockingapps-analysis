package p193e.p194a.p195a.p258m;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.banner.BannerViewX;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.m.a3 */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/a3.class */
public final class C6781a3 extends RecyclerView.AbstractC0313c0 implements AbstractC6872g2 {

    /* renamed from: a */
    public final BannerViewX f22326a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6781a3(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        BannerViewX m25911q = C10480a.m25911q(view, abstractC18905m, this, "ItemEvent.ACTION_OPEN_WHO_VIEWED_ME", "ItemEvent.ACTION_DISMISS_WHO_VIEWED_ME_PROMO");
        Context context = m25911q.getContext();
        Object obj = C26467a.f74235a;
        m25911q.setImage(C26467a.C26470c.m1789b(context, C2752R.C2753drawable.wvm_image_large));
        this.f22326a = m25911q;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6872g2
    /* renamed from: c */
    public void mo30412c(String str) {
        l.e(str, "text");
        this.f22326a.setSubtitle(str);
    }
}
