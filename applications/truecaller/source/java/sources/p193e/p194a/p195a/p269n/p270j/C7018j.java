package p193e.p194a.p195a.p269n.p270j;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.messaging.mediaviewer.MediaViewerActivity;
import e.m.d.y.n;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1406z3.C21852d;
import s1.z.c.l;
/* renamed from: e.a.a.n.j.j */
/* loaded from: classes7-dex2jar.jar:e/a/a/n/j/j.class */
public final class C7018j extends RecyclerView.AbstractC0313c0 implements AbstractC7036q {

    /* renamed from: a */
    public final ImageView f22668a;

    /* renamed from: b */
    public final TextView f22669b;

    /* renamed from: c */
    public final View f22670c;

    /* renamed from: d */
    public final View f22671d;

    /* renamed from: e */
    public final View f22672e;

    /* renamed from: f */
    public final View f22673f;

    /* renamed from: g */
    public final View f22674g;

    /* renamed from: h */
    public final TextView f22675h;

    /* renamed from: i */
    public final Drawable f22676i;

    /* renamed from: j */
    public final View f22677j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7018j(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f22677j = view;
        View findViewById = view.findViewById(2131364277);
        l.d(findViewById, "view.findViewById(R.id.imageView)");
        this.f22668a = (ImageView) findViewById;
        View findViewById2 = view.findViewById(C2752R.C2754id.durationText);
        l.d(findViewById2, "view.findViewById(R.id.durationText)");
        this.f22669b = (TextView) findViewById2;
        View findViewById3 = view.findViewById(C2752R.C2754id.importantIndicator);
        l.d(findViewById3, "view.findViewById(R.id.importantIndicator)");
        this.f22670c = findViewById3;
        View findViewById4 = view.findViewById(2131365276);
        l.d(findViewById4, "view.findViewById(R.id.progressBar)");
        this.f22671d = findViewById4;
        View findViewById5 = view.findViewById(2131363389);
        l.d(findViewById5, "view.findViewById(R.id.downloadButton)");
        this.f22672e = findViewById5;
        View findViewById6 = view.findViewById(C2752R.C2754id.activeOverlay);
        l.d(findViewById6, "view.findViewById(R.id.activeOverlay)");
        this.f22673f = findViewById6;
        View findViewById7 = view.findViewById(C2752R.C2754id.expiredIndicator);
        l.d(findViewById7, "view.findViewById(R.id.expiredIndicator)");
        this.f22674g = findViewById7;
        View findViewById8 = view.findViewById(C2752R.C2754id.sizeText);
        l.d(findViewById8, "view.findViewById(R.id.sizeText)");
        this.f22675h = (TextView) findViewById8;
        Drawable m13535l0 = C19291g.m13535l0(view.getContext(), 2131232567, 2130970256);
        l.d(m13535l0, "ThemeUtils.getTintedDraw… R.attr.tcx_textTertiary)");
        this.f22676i = new C7009c(m13535l0);
        n.d1(view, abstractC18905m, this, (String) null, (Object) null, 12);
        n.f1(view, abstractC18905m, this, (String) null, (Object) null, 12);
        n.d1(findViewById5, abstractC18905m, this, "ItemEvent.ACTION_DOWNLOAD_CLICK", (Object) null, 8);
        n.f1(findViewById5, abstractC18905m, this, (String) null, (Object) null, 12);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7036q
    /* renamed from: A0 */
    public void mo30279A0(String str) {
        l.e(str, "text");
        this.f22669b.setText(str);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7036q
    /* renamed from: C */
    public void mo30278C(Uri uri) {
        C22234h mo8414k = C17891a1.C17902k.m15664K1(this.f22677j.getContext()).mo8414k();
        mo8414k.mo8423S(uri);
        ((C21852d) mo8414k).m8968p0(this.f22676i).m8978f0(AbstractC22364k.f62125b).mo8104c().m8427O(this.f22668a);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7036q
    /* renamed from: C4 */
    public void mo30277C4(boolean z) {
        C19286f.m13683U(this.f22669b, z);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7036q
    /* renamed from: K3 */
    public void mo30276K3(long j) {
        String m34952qa = MediaViewerActivity.m34952qa(j);
        this.f22668a.setTransitionName(m34952qa);
        this.f22677j.setTag(m34952qa);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7036q
    /* renamed from: Q0 */
    public void mo30275Q0(boolean z) {
        C19286f.m13683U(this.f22675h, z);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7036q
    /* renamed from: U0 */
    public void mo30274U0(boolean z) {
        C19286f.m13683U(this.f22674g, z);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7036q
    /* renamed from: b */
    public void mo30273b(boolean z) {
        C19286f.m13683U(this.f22673f, z);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7036q
    /* renamed from: f0 */
    public void mo30272f0(String str) {
        l.e(str, "text");
        this.f22675h.setText(str);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7036q
    /* renamed from: g */
    public void mo30271g(boolean z) {
        C19286f.m13683U(this.f22670c, z);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7036q
    /* renamed from: h */
    public void mo30270h(boolean z) {
        C19286f.m13683U(this.f22671d, z);
    }

    @Override // p193e.p194a.p195a.p269n.p270j.AbstractC7036q
    /* renamed from: h3 */
    public void mo30269h3(boolean z) {
        C19286f.m13683U(this.f22672e, z);
    }
}
