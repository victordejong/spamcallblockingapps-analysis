package p193e.p194a.p1080o.p1081a.p1085b.p1086k;

import com.truecaller.calling.initiate_call.InitiateCallHelper;
import javax.inject.Inject;
import p193e.p194a.p1080o.AbstractC18769f;
import p193e.p194a.p1080o.C18771h;
import p193e.p194a.p1080o.p1097b.AbstractC18746o;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import s1.z.c.l;
/* renamed from: e.a.o.a.b.k.e */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/b/k/e.class */
public final class C18548e extends AbstractC20576b<AbstractC18547d> implements AbstractC18546c {

    /* renamed from: b */
    public final AbstractC18746o f52303b;

    /* renamed from: c */
    public final AbstractC18769f f52304c;

    @Inject
    public C18548e(AbstractC18746o abstractC18746o, AbstractC18769f abstractC18769f) {
        l.e(abstractC18746o, "settings");
        l.e(abstractC18769f, "support");
        this.f52303b = abstractC18746o;
        this.f52304c = abstractC18769f;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1085b.p1086k.AbstractC18546c
    /* renamed from: F */
    public void mo14793F() {
        AbstractC18547d abstractC18547d = (AbstractC18547d) this.f57683a;
        if (abstractC18547d != null) {
            abstractC18547d.mo14794t();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.o.a.b.k.d, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC18547d abstractC18547d) {
        AbstractC18547d abstractC18547d2 = abstractC18547d;
        l.e(abstractC18547d2, "presenterView");
        this.f57683a = abstractC18547d2;
        this.f52303b.putBoolean("HiddenContactInfoIsShown", true);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1085b.p1086k.AbstractC18546c
    public void onDismiss() {
        InitiateCallHelper.CallOptions mo14795r;
        AbstractC18547d abstractC18547d = (AbstractC18547d) this.f57683a;
        if (abstractC18547d == null || (mo14795r = abstractC18547d.mo14795r()) == null) {
            return;
        }
        ((C18771h) this.f52304c).m14495a(mo14795r);
    }
}
