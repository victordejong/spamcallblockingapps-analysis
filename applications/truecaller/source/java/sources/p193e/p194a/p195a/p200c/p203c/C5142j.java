package p193e.p194a.p195a.p200c.p203c;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import e.f.a.n.q.d.i;
import e.f.a.n.q.d.y;
import e.m.d.y.n;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
/* renamed from: e.a.a.c.c.j */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/c/j.class */
public final class C5142j extends RecyclerView.AbstractC0313c0 implements AbstractC5146n {

    /* renamed from: a */
    public final ImageView f17575a;

    /* renamed from: b */
    public final View f17576b;

    /* renamed from: c */
    public final View f17577c;

    /* renamed from: d */
    public final View f17578d;

    /* renamed from: e */
    public final View f17579e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5142j(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f17579e = view;
        View findViewById = view.findViewById(2131364277);
        l.d(findViewById, "view.findViewById(R.id.imageView)");
        this.f17575a = (ImageView) findViewById;
        View findViewById2 = view.findViewById(2131362823);
        l.d(findViewById2, "view.findViewById(R.id.closeButton)");
        this.f17576b = findViewById2;
        View findViewById3 = view.findViewById(C2752R.C2754id.swapButton);
        l.d(findViewById3, "view.findViewById(R.id.swapButton)");
        this.f17577c = findViewById3;
        View findViewById4 = view.findViewById(C2752R.C2754id.videoIndicator);
        l.d(findViewById4, "view.findViewById(R.id.videoIndicator)");
        this.f17578d = findViewById4;
        n.d1(view, abstractC18905m, this, (String) null, (Object) null, 12);
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5146n
    /* renamed from: C */
    public void mo33813C(Uri uri) {
        l.e(uri, "uri");
        ComponentCallbacks2C22222c.m8445f(this.f17575a).mo8409p(uri).mo8108F(new i(), new y(this.f17579e.getResources().getDimensionPixelSize(C2752R.dimen.draft_item_radius))).m8427O(this.f17575a);
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5146n
    /* renamed from: D1 */
    public void mo33812D1(boolean z) {
        C19286f.m13683U(this.f17577c, z);
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5146n
    /* renamed from: Q1 */
    public void mo33811Q1(boolean z) {
        C19286f.m13683U(this.f17576b, z);
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5146n
    /* renamed from: Z2 */
    public void mo33810Z2(int i) {
        ImageView imageView = this.f17575a;
        Context context = this.f17579e.getContext();
        l.d(context, "view.context");
        Context context2 = this.f17579e.getContext();
        Object obj = C26467a.f74235a;
        imageView.setImageDrawable(new C5140h(context, i, -1, C26467a.C26471d.m1787a(context2, 2131100907)));
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5146n
    /* renamed from: j4 */
    public void mo33809j4(int i) {
        ImageView imageView = this.f17575a;
        Context context = this.f17579e.getContext();
        l.d(context, "view.context");
        imageView.setImageDrawable(new C5140h(context, i, C19291g.m13612L(this.f17579e.getContext(), 2130969991), C19291g.m13612L(this.f17579e.getContext(), 2130969978)));
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5146n
    /* renamed from: l */
    public void mo33808l(boolean z) {
        this.f17579e.setBackgroundResource(z ? 2131231367 : 0);
    }

    @Override // p193e.p194a.p195a.p200c.p203c.AbstractC5146n
    /* renamed from: m1 */
    public void mo33807m1(boolean z) {
        C19286f.m13683U(this.f17578d, z);
    }
}
