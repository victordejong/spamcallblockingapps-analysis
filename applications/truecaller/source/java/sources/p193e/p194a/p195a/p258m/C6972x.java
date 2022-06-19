package p193e.p194a.p195a.p258m;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.m.x */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/x.class */
public final class C6972x extends RecyclerView.AbstractC0313c0 implements AbstractC6959u1 {

    /* renamed from: a */
    public final View f22572a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6972x(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f22572a = view;
        C10480a.m25911q(view, abstractC18905m, this, "ItemEvent.ACTION_VIEW_PRIORITY_CALL_AWARENESS", "ItemEvent.ACTION_DISMISS_PRIORITY_CALL_AWARENESS");
    }
}
