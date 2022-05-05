package p459j.p460a.p521j0.p528w;

import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import p459j.p460a.p521j0.p528w.AbstractC12741t;
import p459j.p460a.p582w0.C14206w4;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.j0.w.a0 */
/* loaded from: classes3-dex2jar.jar:j/a/j0/w/a0.class */
public abstract class AbstractC12722a0 extends AbstractC12737p {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC12722a0(AbstractC12741t.EnumC12744c cVar, AbstractC12741t.EnumC12745d dVar, NumberInfo numberInfo, String str, String str2, String str3, String str4, String str5, boolean z, boolean z2) {
        super(cVar, dVar, numberInfo, str, str2, str3, str4, str5, z, z2);
        C15149k.m377b(cVar, IapProductRealmObject.STATE);
        C15149k.m377b(numberInfo, "numberInfo");
        C15149k.m377b(str, "number");
        C15149k.m377b(str2, "e164");
        C15149k.m377b(str3, "displayNumber");
        C15149k.m377b(str4, "displayRemoteNumber");
    }

    @Override // p459j.p460a.p521j0.p528w.AbstractC12737p, p459j.p460a.p521j0.p528w.AbstractC12741t
    /* renamed from: a */
    public void mo5452a() {
        if (this.f28716b == null) {
            m5470p();
        } else {
            super.mo5452a();
        }
    }

    @Override // p459j.p460a.p521j0.p528w.AbstractC12737p
    /* renamed from: e */
    public void mo5465e() {
        m5470p();
    }

    @Override // p459j.p460a.p521j0.p528w.AbstractC12737p
    /* renamed from: j */
    public void mo5460j() {
        m5470p();
    }

    @Override // p459j.p460a.p521j0.p528w.AbstractC12737p
    /* renamed from: l */
    public void mo5458l() {
        m5470p();
    }

    @Override // p459j.p460a.p521j0.p528w.AbstractC12737p
    /* renamed from: m */
    public void mo5457m() {
        m5470p();
    }

    @Override // p459j.p460a.p521j0.p528w.AbstractC12737p
    /* renamed from: n */
    public void mo5456n() {
        m5470p();
    }

    /* renamed from: p */
    public final void m5470p() {
        m5466a(new AbstractC12741t.C12743b(this.f28720f, false));
        m5467a(new AbstractC12741t.C12742a(this.f28723i ? m5451b() : C14206w4.m2225a((int) R$string.cd_row2_offlinedb_expired), false));
    }
}
