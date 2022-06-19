package p193e.p194a.p195a.p237h1.p238n;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import e.m.d.y.n;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p195a.p237h1.C6323d;
import p193e.p194a.p195a.p237h1.C6326e;
import p193e.p194a.p195a.p237h1.RunnableC6327f;
import p193e.p194a.p372b0.p373a.p376b.AbstractC8247c;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.z.c.l;
/* renamed from: e.a.a.h1.n.i */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/n/i.class */
public final class C6350i extends RecyclerView.AbstractC0313c0 implements AbstractC6348g {

    /* renamed from: a */
    public final AvatarXView f21191a;

    /* renamed from: b */
    public final TextView f21192b;

    /* renamed from: c */
    public final View f21193c;

    /* renamed from: d */
    public final View f21194d;

    /* renamed from: e */
    public final CircularProgressIndicator f21195e;

    /* renamed from: f */
    public final C6323d f21196f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6350i(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        View findViewById = view.findViewById(2131362245);
        l.d(findViewById, "view.findViewById(R.id.avatarView)");
        this.f21191a = (AvatarXView) findViewById;
        View findViewById2 = view.findViewById(C2752R.C2754id.badgeView);
        l.d(findViewById2, "view.findViewById(R.id.badgeView)");
        this.f21192b = (TextView) findViewById2;
        View findViewById3 = view.findViewById(C2752R.C2754id.indicatorView);
        l.d(findViewById3, "view.findViewById(R.id.indicatorView)");
        this.f21193c = findViewById3;
        View findViewById4 = view.findViewById(C2752R.C2754id.overflowView);
        l.d(findViewById4, "view.findViewById(R.id.overflowView)");
        this.f21194d = findViewById4;
        CircularProgressIndicator findViewById5 = view.findViewById(C2752R.C2754id.progressIndicator);
        l.d(findViewById5, "view.findViewById(R.id.progressIndicator)");
        CircularProgressIndicator circularProgressIndicator = findViewById5;
        this.f21195e = circularProgressIndicator;
        this.f21196f = new C6323d(circularProgressIndicator);
        n.d1(view, abstractC18905m, this, (String) null, (Object) null, 12);
        circularProgressIndicator.setMax(10000);
    }

    @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6348g
    /* renamed from: E4 */
    public void mo31427E4(AbstractC8247c abstractC8247c) {
        this.f21191a.setPresenter(abstractC8247c);
    }

    @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6348g
    /* renamed from: J */
    public void mo31426J() {
        C6323d c6323d = this.f21196f;
        c6323d.f21146c = 0L;
        c6323d.f21144a.removeCallbacks(new RunnableC6327f(new C6326e(c6323d)));
        this.f21195e.setVisibility(8);
    }

    @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6348g
    /* renamed from: S0 */
    public void mo31425S0(boolean z) {
        C19286f.m13683U(this.f21194d, z);
    }

    @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6348g
    /* renamed from: U1 */
    public void mo31424U1(boolean z) {
        C19286f.m13683U(this.f21193c, z);
    }

    @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6342b.AbstractC6343a
    /* renamed from: o */
    public C8243a mo31423o() {
        AbstractC8247c presenter = this.f21191a.getPresenter();
        AbstractC8247c abstractC8247c = presenter;
        if (!(presenter instanceof C8243a)) {
            abstractC8247c = null;
        }
        return (C8243a) abstractC8247c;
    }

    @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6348g
    /* renamed from: r2 */
    public void mo31422r2(int i) {
        this.f21192b.setText(String.valueOf(i));
        this.f21192b.setVisibility(i > 0 ? 0 : 8);
    }

    @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6348g
    /* renamed from: t */
    public void mo31421t(long j, long j2) {
        this.f21195e.setVisibility(0);
        this.f21196f.m31444a(j, j2);
    }
}
