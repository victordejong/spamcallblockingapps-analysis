package p193e.p194a.p195a.p198b;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import e.m.d.y.n;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p373a.p376b.AbstractC8247c;
import s1.z.c.l;
/* renamed from: e.a.a.b.o0 */
/* loaded from: classes7-dex2jar.jar:e/a/a/b/o0.class */
public final class C4976o0 extends RecyclerView.AbstractC0313c0 implements AbstractC4966k0 {

    /* renamed from: a */
    public final AvatarXView f16990a;

    /* renamed from: b */
    public final AvatarXView f16991b;

    /* renamed from: c */
    public final AvatarXView f16992c;

    /* renamed from: d */
    public final TextView f16993d;

    /* renamed from: e */
    public final TextView f16994e;

    /* renamed from: f */
    public final TextView f16995f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4976o0(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        View findViewById = view.findViewById(C2752R.C2754id.avatarLarge);
        l.d(findViewById, "view.findViewById(R.id.avatarLarge)");
        this.f16990a = (AvatarXView) findViewById;
        View findViewById2 = view.findViewById(C2752R.C2754id.avatarSmall1);
        l.d(findViewById2, "view.findViewById(R.id.avatarSmall1)");
        this.f16991b = (AvatarXView) findViewById2;
        View findViewById3 = view.findViewById(C2752R.C2754id.avatarSmall2);
        l.d(findViewById3, "view.findViewById(R.id.avatarSmall2)");
        this.f16992c = (AvatarXView) findViewById3;
        View findViewById4 = view.findViewById(2131366469);
        l.d(findViewById4, "view.findViewById(R.id.title)");
        this.f16993d = (TextView) findViewById4;
        View findViewById5 = view.findViewById(2131366110);
        l.d(findViewById5, "view.findViewById(R.id.subtitle)");
        this.f16994e = (TextView) findViewById5;
        View findViewById6 = view.findViewById(2131364910);
        l.d(findViewById6, "view.findViewById(R.id.newBadge)");
        this.f16995f = (TextView) findViewById6;
        n.d1(view, abstractC18905m, this, (String) null, (Object) null, 12);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4966k0
    /* renamed from: Y2 */
    public void mo34157Y2(AbstractC8247c abstractC8247c) {
        l.e(abstractC8247c, "presenter");
        this.f16991b.setVisibility(4);
        this.f16992c.setVisibility(4);
        this.f16990a.setPresenter(abstractC8247c);
        this.f16990a.setVisibility(0);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4966k0
    /* renamed from: Z0 */
    public void mo34156Z0(boolean z) {
        C18334g0.m15221k(this.f16993d, z);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4966k0
    /* renamed from: g0 */
    public void mo34155g0(AbstractC8247c abstractC8247c, AbstractC8247c abstractC8247c2) {
        l.e(abstractC8247c, "presenter1");
        l.e(abstractC8247c2, "presenter2");
        this.f16990a.setVisibility(4);
        this.f16991b.setPresenter(abstractC8247c);
        this.f16992c.setPresenter(abstractC8247c2);
        this.f16991b.setVisibility(0);
        this.f16992c.setVisibility(0);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4966k0
    /* renamed from: i3 */
    public void mo34154i3(String str, boolean z) {
        l.e(str, "text");
        this.f16994e.setText(str);
        TextView textView = this.f16994e;
        textView.setTextColor(C19291g.m13612L(textView.getContext(), z ? 2130970253 : 2130970255));
        C18334g0.m15221k(this.f16994e, z);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4966k0
    /* renamed from: q4 */
    public void mo34153q4(boolean z) {
        C19286f.m13683U(this.f16995f, z);
    }
}
