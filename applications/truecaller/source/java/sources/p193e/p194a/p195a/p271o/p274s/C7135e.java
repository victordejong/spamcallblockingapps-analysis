package p193e.p194a.p195a.p271o.p274s;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.listitem.ListItemX;
import e.m.d.y.n;
import p193e.p194a.p1049l4.C17408d;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p373a.p386s.C8329a;
import s1.z.c.l;
/* renamed from: e.a.a.o.s.e */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/s/e.class */
public final class C7135e extends RecyclerView.AbstractC0313c0 implements AbstractC7134d {

    /* renamed from: a */
    public final ListItemX f22933a;

    /* renamed from: b */
    public C8243a f22934b;

    /* renamed from: c */
    public C17408d f22935c;

    /* renamed from: d */
    public final AbstractC18905m f22936d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7135e(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f22936d = abstractC18905m;
        ListItemX listItemX = (ListItemX) view;
        this.f22933a = listItemX;
        n.d1(listItemX, abstractC18905m, this, (String) null, (Object) null, 12);
    }

    @Override // p193e.p194a.p195a.p271o.p274s.AbstractC7134d
    /* renamed from: c */
    public void mo30076c(String str) {
        l.e(str, "subtitle");
        ListItemX.m35644o1(this.f22933a, str, null, null, null, null, null, 0, 0, false, null, null, 2046, null);
    }

    @Override // p193e.p194a.p195a.p271o.p274s.AbstractC7134d
    /* renamed from: e */
    public void mo30075e(C17408d c17408d) {
        l.e(c17408d, "presenter");
        this.f22933a.setAvailabilityPresenter((C8329a) c17408d);
        this.f22935c = c17408d;
    }

    @Override // p193e.p194a.p195a.p271o.p274s.AbstractC7134d
    /* renamed from: i */
    public void mo30074i(C8243a c8243a) {
        l.e(c8243a, "presenter");
        this.f22933a.setAvatarPresenter(c8243a);
        this.f22934b = c8243a;
    }

    @Override // p193e.p194a.p195a.AbstractC7267u.AbstractC7268a
    /* renamed from: o */
    public C8243a mo29868o() {
        return this.f22934b;
    }

    @Override // p193e.p194a.p195a.p271o.p274s.AbstractC7134d
    public void setTitle(String str) {
        l.e(str, "title");
        ListItemX.m35637x1(this.f22933a, str, false, 0, 0, 14, null);
    }

    @Override // p193e.p194a.p195a.AbstractC7267u.AbstractC7268a
    /* renamed from: z */
    public C17408d mo29867z() {
        return this.f22935c;
    }
}
