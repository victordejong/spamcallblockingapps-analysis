package p193e.p194a.p1275v.p1276a;

import android.view.View;
import com.google.android.material.appbar.AppBarLayout;
import com.truecaller.details_view.C3857R;
import java.util.Objects;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1795i.p1802c.C26389d;
import p1727n3.p1807k.p1821i.AbstractC26609n;
import p1727n3.p1807k.p1821i.C26568d0;
import s1.z.c.l;
/* renamed from: e.a.v.a.e */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/e.class */
public final class C20740e implements AbstractC26609n {

    /* renamed from: a */
    public final /* synthetic */ C20647a f58349a;

    public C20740e(C20647a c20647a) {
        this.f58349a = c20647a;
    }

    @Override // p1727n3.p1807k.p1821i.AbstractC26609n
    /* renamed from: b */
    public final C26568d0 mo1532b(View view, C26568d0 c26568d0) {
        this.f58349a.f58186m = c26568d0.m1665b(1).f74278b;
        C26389d k1 = this.f58349a.m10884PA().f58747l.k1(C3857R.C3859id.expanded);
        AppBarLayout appBarLayout = this.f58349a.m10884PA().f58739d;
        l.d(appBarLayout, "binding.appBar");
        k1.m1958m(appBarLayout.getId(), 3, this.f58349a.f58186m);
        C26389d k12 = this.f58349a.m10884PA().f58747l.k1(C3857R.C3859id.collapsed);
        AppBarLayout appBarLayout2 = this.f58349a.m10884PA().f58739d;
        l.d(appBarLayout2, "binding.appBar");
        k12.m1958m(appBarLayout2.getId(), 3, this.f58349a.f58186m);
        C20647a c20647a = this.f58349a;
        h requireActivity = c20647a.requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        h hVar = requireActivity;
        hVar.setSupportActionBar(c20647a.m10884PA().f58760y);
        AbstractC25393a supportActionBar = hVar.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3548s(C3857R.C3858drawable.ic_tcx_arrow_back_24dp);
        }
        AbstractC25393a supportActionBar2 = hVar.getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.mo3553n(true);
        }
        AbstractC25393a supportActionBar3 = hVar.getSupportActionBar();
        if (supportActionBar3 != null) {
            supportActionBar3.mo3551p(false);
        }
        this.f58349a.setHasOptionsMenu(true);
        return c26568d0;
    }
}
