package p193e.p194a.p195a.p269n.p270j;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.common.p156ui.listitem.ListItemX;
import e.m.d.y.n;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.z.c.l;
/* renamed from: e.a.a.n.j.b */
/* loaded from: classes7-dex2jar.jar:e/a/a/n/j/b.class */
public final class C7008b extends RecyclerView.AbstractC0313c0 implements AbstractC7032m {

    /* renamed from: a */
    public final ListItemX f22628a;

    /* renamed from: b */
    public final AvatarXView f22629b;

    /* renamed from: c */
    public final C8243a f22630c;

    /* renamed from: d */
    public final View f22631d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7008b(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f22631d = view;
        ListItemX listItemX = (ListItemX) view;
        this.f22628a = listItemX;
        View findViewById = view.findViewById(2131362231);
        l.d(findViewById, "view.findViewById(R.id.avatar)");
        AvatarXView avatarXView = (AvatarXView) findViewById;
        this.f22629b = avatarXView;
        Context context = view.getContext();
        l.d(context, "view.context");
        C8243a c8243a = new C8243a(new C19235i0(context));
        this.f22630c = c8243a;
        n.d1(listItemX, abstractC18905m, this, (String) null, (Object) null, 12);
        n.f1(listItemX, abstractC18905m, this, (String) null, (Object) null, 12);
        avatarXView.setPresenter(c8243a);
        c8243a.f25434f = Integer.valueOf(C19291g.m13612L(view.getContext(), 2130970017));
        c8243a.mo28721Wj(Integer.valueOf(C19291g.m13612L(view.getContext(), 2130970017)));
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7032m
    /* renamed from: b */
    public void mo30294b(boolean z) {
        this.f22628a.setActivated(z);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7032m
    /* renamed from: c */
    public void mo30293c(String str) {
        l.e(str, "subtitle");
        ListItemX.m35644o1(this.f22628a, str, null, null, null, null, null, 0, 0, false, null, null, 2046, null);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7032m
    /* renamed from: g */
    public void mo30292g(boolean z) {
        this.f22628a.setTitleIcon(z ? C19291g.m13535l0(this.f22631d.getContext(), 2131232673, 2130970255) : null);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7032m
    /* renamed from: h */
    public void mo30291h(boolean z) {
        this.f22630c.m28738pk(z);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7032m
    public void setIcon(int i) {
        Drawable drawable;
        C8243a c8243a = this.f22630c;
        Context context = this.f22631d.getContext();
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(context, i);
        if (m1789b != null) {
            drawable = m1789b.mutate();
            if (drawable != null) {
                drawable.setTint(-1);
                c8243a.f25432d = drawable;
            }
        }
        drawable = null;
        c8243a.f25432d = drawable;
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7032m
    public void setTitle(String str) {
        l.e(str, "title");
        ListItemX.m35637x1(this.f22628a, str, false, 0, 0, 14, null);
    }
}
