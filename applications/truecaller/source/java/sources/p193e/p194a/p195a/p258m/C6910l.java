package p193e.p194a.p195a.p258m;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.banner.BannerViewX;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.m.l */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/l.class */
public final class C6910l extends RecyclerView.AbstractC0313c0 implements AbstractC6923n1 {

    /* renamed from: a */
    public final BannerViewX f22514a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6910l(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f22514a = C10480a.m25911q(view, abstractC18905m, this, "ItemEvent.ACTION_TRY_INBOX_CLEANER", "ItemEvent.ACTION_DISMISS_INBOX_CLEANER");
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6923n1
    public void setTitle(String str) {
        l.e(str, "text");
        this.f22514a.setTitle(str);
    }
}
