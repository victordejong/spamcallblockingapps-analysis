package p193e.p194a.p1193r5;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.listitem.ListItemX;
import e.m.d.y.n;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p430q.C8602m;
import s1.z.c.l;
/* renamed from: e.a.r5.y */
/* loaded from: classes8-dex2jar.jar:e/a/r5/y.class */
public final class C19995y extends RecyclerView.AbstractC0313c0 implements AbstractC19994x {

    /* renamed from: a */
    public final ListItemX f56517a;

    /* renamed from: b */
    public final C8243a f56518b;

    /* renamed from: c */
    public final View f56519c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19995y(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f56519c = view;
        ListItemX listItemX = (ListItemX) view;
        this.f56517a = listItemX;
        Context context = view.getContext();
        l.d(context, "view.context");
        C8243a c8243a = new C8243a(new C19235i0(context));
        this.f56518b = c8243a;
        n.d1(view, abstractC18905m, this, (String) null, (Object) null, 12);
        n.f1(view, abstractC18905m, this, (String) null, (Object) null, 12);
        listItemX.m35649j1(ListItemX.Action.INFO, null);
        listItemX.setAvatarPresenter(c8243a);
    }

    @Override // p193e.p194a.p1193r5.AbstractC19994x
    /* renamed from: T */
    public void mo11682T(long j) {
        ListItemX listItemX = this.f56517a;
        View view = this.itemView;
        l.d(view, "itemView");
        ListItemX.m35639v1(listItemX, C8602m.m28249i(view.getContext(), j, true).toString(), null, false, 6, null);
    }

    @Override // p193e.p194a.p1193r5.AbstractC19994x
    /* renamed from: a */
    public void mo11681a(AvatarXConfig avatarXConfig) {
        l.e(avatarXConfig, "avatar");
        C8243a.m28739ok(this.f56518b, avatarXConfig, false, 2, null);
    }

    @Override // p193e.p194a.p1193r5.AbstractC19994x
    /* renamed from: b */
    public void mo11680b(boolean z) {
        this.f56519c.setActivated(z);
    }

    @Override // p193e.p194a.p1193r5.AbstractC19994x
    public void setName(String str) {
        ListItemX listItemX = this.f56517a;
        if (str == null) {
            View view = this.itemView;
            l.d(view, "itemView");
            str = view.getResources().getString(C2752R.string.WhoViewedMeUserNameIfNull);
            l.d(str, "itemView.resources.getSt…hoViewedMeUserNameIfNull)");
        }
        ListItemX.m35637x1(listItemX, str, false, 0, 0, 14, null);
    }

    @Override // p193e.p194a.p1193r5.AbstractC19994x
    /* renamed from: w1 */
    public void mo11679w1(String str) {
        l.e(str, "address");
        ListItemX.m35644o1(this.f56517a, str, null, null, null, null, null, 0, 0, false, null, null, 2046, null);
    }
}
