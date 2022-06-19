package p193e.p194a.p1195s.p1201n.p1203b;

import com.truecaller.callhero_assistant.C3605R;
import com.truecaller.filters.sync.FilterSettingsUploadWorker;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p193e.p194a.p1129p5.AbstractC19237j0;
import p193e.p194a.p1195s.p1212s.AbstractC20168a;
import p193e.p194a.p1195s.p1212s.AbstractC20177c;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p837h0.AbstractC14840m;
import q3.a.j0;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.s.n.b.e */
/* loaded from: classes17-dex2jar.jar:e/a/s/n/b/e.class */
public final class C20075e extends AbstractC20574a<AbstractC20073c> implements AbstractC20072b {

    /* renamed from: d */
    public boolean f56656d;

    /* renamed from: e */
    public p1 f56657e;

    /* renamed from: f */
    public final f f56658f;

    /* renamed from: g */
    public final AbstractC20177c f56659g;

    /* renamed from: h */
    public final AbstractC20168a f56660h;

    /* renamed from: i */
    public final AbstractC19237j0 f56661i;

    /* renamed from: j */
    public final AbstractC14840m f56662j;

    /* renamed from: k */
    public final AbstractC26857y f56663k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C20075e(@Named("UI") f fVar, AbstractC20177c abstractC20177c, AbstractC20168a abstractC20168a, AbstractC19237j0 abstractC19237j0, AbstractC14840m abstractC14840m, AbstractC26857y abstractC26857y) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC20177c, "callAssistantSettings");
        l.e(abstractC20168a, "accountManager");
        l.e(abstractC19237j0, "toastUtil");
        l.e(abstractC14840m, "filterSettings");
        l.e(abstractC26857y, "workManager");
        this.f56658f = fVar;
        this.f56659g = abstractC20177c;
        this.f56660h = abstractC20168a;
        this.f56661i = abstractC19237j0;
        this.f56662j = abstractC14840m;
        this.f56663k = abstractC26857y;
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.AbstractC20072b
    /* renamed from: Eb */
    public void mo11581Eb(boolean z) {
        if (!this.f56656d) {
            return;
        }
        p1 p1Var = this.f56657e;
        if (p1Var != null && p1Var.b()) {
            p1 p1Var2 = this.f56657e;
            if (p1Var2 == null) {
                l.l("updatePreferencesJob");
                throw null;
            }
            d.T(p1Var2, (CancellationException) null, 1, (Object) null);
        }
        this.f56657e = d.w2(this, (f) null, (j0) null, new C20074d(this, z, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.AbstractC20072b
    /* renamed from: W2 */
    public void mo11580W2(boolean z) {
        this.f56662j.mo19557k(z);
        this.f56662j.mo19565c(true);
        AbstractC26857y abstractC26857y = this.f56663k;
        l.e(abstractC26857y, "workManager");
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        C26842r.C26843a c26843a = new C26842r.C26843a(FilterSettingsUploadWorker.class);
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        c26843a.f75127c.f74911j = new C26825d(c26826a);
        abstractC26857y.m1279i("FilterSettingsUploadWorker", enumC26832h, c26843a.m1272b());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.s.n.b.c, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC20073c abstractC20073c) {
        AbstractC20073c abstractC20073c2 = abstractC20073c;
        l.e(abstractC20073c2, "presenterView");
        this.f57683a = abstractC20073c2;
        this.f56656d = false;
        abstractC20073c2.mo11585ju(this.f56659g.mo11426O0());
        AbstractC20073c abstractC20073c3 = (AbstractC20073c) this.f57683a;
        if (abstractC20073c3 != null) {
            abstractC20073c3.mo11587Ry(this.f56662j.mo19547u());
        }
        AbstractC20073c abstractC20073c4 = (AbstractC20073c) this.f57683a;
        if (abstractC20073c4 != null) {
            abstractC20073c4.mo11588D9(this.f56662j.mo19566b());
        }
        this.f56656d = true;
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.AbstractC20072b
    /* renamed from: cg */
    public void mo11579cg() {
        C12864a2.m22554g0(this.f56661i, C3605R.string.CallAssistantSettingsForwardingToBeImplementedToast, null, 0, 6, null);
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.AbstractC20072b
    /* renamed from: j9 */
    public void mo11578j9(boolean z) {
        this.f56662j.mo19555m(z);
        this.f56662j.mo19565c(true);
        AbstractC26857y abstractC26857y = this.f56663k;
        l.e(abstractC26857y, "workManager");
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        C26842r.C26843a c26843a = new C26842r.C26843a(FilterSettingsUploadWorker.class);
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        c26843a.f75127c.f74911j = new C26825d(c26826a);
        abstractC26857y.m1279i("FilterSettingsUploadWorker", enumC26832h, c26843a.m1272b());
    }

    @Override // p193e.p194a.p1195s.p1201n.p1203b.AbstractC20072b
    /* renamed from: k7 */
    public void mo11577k7() {
        AbstractC20073c abstractC20073c = (AbstractC20073c) this.f57683a;
        if (abstractC20073c != null) {
            abstractC20073c.mo11586Vx();
        }
    }
}
