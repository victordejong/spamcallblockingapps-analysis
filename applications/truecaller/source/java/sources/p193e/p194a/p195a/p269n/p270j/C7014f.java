package p193e.p194a.p195a.p269n.p270j;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.common.p156ui.listitem.ListItemX;
import e.m.d.y.n;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.z.c.l;
/* renamed from: e.a.a.n.j.f */
/* loaded from: classes7-dex2jar.jar:e/a/a/n/j/f.class */
public final class C7014f extends RecyclerView.AbstractC0313c0 implements AbstractC7033n {

    /* renamed from: a */
    public final ListItemX f22655a;

    /* renamed from: b */
    public final AvatarXView f22656b;

    /* renamed from: c */
    public final C8243a f22657c;

    /* renamed from: d */
    public final View f22658d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7014f(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f22658d = view;
        ListItemX listItemX = (ListItemX) view;
        this.f22655a = listItemX;
        View findViewById = view.findViewById(2131362231);
        l.d(findViewById, "view.findViewById(R.id.avatar)");
        AvatarXView avatarXView = (AvatarXView) findViewById;
        this.f22656b = avatarXView;
        Context context = view.getContext();
        l.d(context, "view.context");
        C8243a c8243a = new C8243a(new C19235i0(context));
        this.f22657c = c8243a;
        n.d1(listItemX, abstractC18905m, this, (String) null, (Object) null, 12);
        n.f1(listItemX, abstractC18905m, this, (String) null, (Object) null, 12);
        avatarXView.setPresenter(c8243a);
        c8243a.mo28721Wj(Integer.valueOf(C19291g.m13612L(view.getContext(), 2130970017)));
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7033n
    /* renamed from: J0 */
    public void mo30290J0(boolean z) {
        this.f22657c.f25434f = Integer.valueOf(C19291g.m13612L(this.f22658d.getContext(), z ? 2130970138 : 2130970127));
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7033n
    /* renamed from: V2 */
    public void mo30289V2(Uri uri) {
        this.f22657c.f25430b = uri;
        this.f22656b.invalidate();
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7033n
    /* renamed from: b */
    public void mo30288b(boolean z) {
        this.f22655a.setActivated(z);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7033n
    /* renamed from: c */
    public void mo30287c(String str) {
        l.e(str, "subtitle");
        ListItemX.m35644o1(this.f22655a, str, null, null, null, null, null, 0, 0, false, null, null, 2046, null);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7033n
    /* renamed from: g */
    public void mo30286g(boolean z) {
        this.f22655a.setTitleIcon(z ? C19291g.m13535l0(this.f22658d.getContext(), 2131232673, 2130970255) : null);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7033n
    /* renamed from: h */
    public void mo30285h(boolean z) {
        this.f22657c.m28738pk(z);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7033n
    /* renamed from: m4 */
    public void mo30284m4(int i, boolean z) {
        this.f22657c.f25432d = C19291g.m13535l0(this.f22658d.getContext(), i, z ? 2130970137 : 2130970126);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7033n
    public void setTitle(String str) {
        l.e(str, "title");
        ListItemX.m35637x1(this.f22655a, str, false, 0, 0, 14, null);
    }
}
