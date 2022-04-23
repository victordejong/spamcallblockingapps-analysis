package p131c.p161d.p282e.p315q.p328q0;

import com.google.internal.firebase.inappmessaging.p495v1.CampaignProto$ThickContent;
import java.util.HashSet;
import p131c.p161d.p362g.p363a.p364a.p365a.p366g.C6251a;
import p131c.p161d.p362g.p363a.p364a.p365a.p366g.C6254b;
import p131c.p161d.p362g.p363a.p364a.p365a.p366g.C6267i;
import p530d.p541c.AbstractC9637a;
import p530d.p541c.AbstractC9809c;
import p530d.p541c.AbstractC9833i;
import p530d.p541c.AbstractC9850t;
/* renamed from: c.d.e.q.q0.w0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/w0.class */
public class C5825w0 {

    /* renamed from: c */
    public static final C6254b f19092c = C6254b.m21738y();

    /* renamed from: a */
    public final C5819u2 f19093a;

    /* renamed from: b */
    public AbstractC9833i<C6254b> f19094b = AbstractC9833i.m1880f();

    public C5825w0(C5819u2 u2Var) {
        this.f19093a = u2Var;
    }

    /* renamed from: a */
    public static C6254b m22955a(C6254b bVar, C6251a aVar) {
        C6254b.C6256b a = C6254b.m21743a(bVar);
        a.m21736a(aVar);
        return a.mo6937a();
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC9809c m22958a(C5825w0 w0Var, HashSet hashSet, C6254b bVar) throws Exception {
        C5694l2.m23216a("Existing impressions: " + bVar.toString());
        C6254b.C6256b z = C6254b.m21737z();
        for (C6251a aVar : bVar.m21740w()) {
            if (!hashSet.contains(aVar.m21750v())) {
                z.m21736a(aVar);
            }
        }
        C6254b a = z.mo6937a();
        C5694l2.m23216a("New cleared impression list: " + a.toString());
        return w0Var.f19093a.m22969a(a).m2118a(C5817u0.m22973a(w0Var, a));
    }

    /* renamed from: a */
    public AbstractC9637a m22957a(C6251a aVar) {
        return m22952b().m1894a((AbstractC9833i<C6254b>) f19092c).m1890b(C5702n0.m23183a(this, aVar));
    }

    /* renamed from: a */
    public AbstractC9637a m22954a(C6267i iVar) {
        HashSet hashSet = new HashSet();
        for (CampaignProto$ThickContent campaignProto$ThickContent : iVar.m21704w()) {
            hashSet.add(campaignProto$ThickContent.m7090z().equals(CampaignProto$ThickContent.PayloadCase.VANILLA_PAYLOAD) ? campaignProto$ThickContent.m7097D().m21758w() : campaignProto$ThickContent.m7092x().m21764w());
        }
        C5694l2.m23216a("Potential impressions to clear: " + hashSet.toString());
        return m22952b().m1894a((AbstractC9833i<C6254b>) f19092c).m1890b(C5811t0.m22979a(this, hashSet));
    }

    /* renamed from: a */
    public AbstractC9850t<Boolean> m22953a(CampaignProto$ThickContent campaignProto$ThickContent) {
        return m22952b().m1883d(C5717q0.m23161a()).m1886c(C5725r0.m23133a()).m1855c(C5737s0.m23108a()).m1861a(campaignProto$ThickContent.m7090z().equals(CampaignProto$ThickContent.PayloadCase.VANILLA_PAYLOAD) ? campaignProto$ThickContent.m7097D().m21758w() : campaignProto$ThickContent.m7092x().m21764w());
    }

    /* renamed from: a */
    public final void m22962a() {
        this.f19094b = AbstractC9833i.m1880f();
    }

    /* renamed from: a */
    public final void m22956a(C6254b bVar) {
        this.f19094b = AbstractC9833i.m1887b(bVar);
    }

    /* renamed from: b */
    public AbstractC9833i<C6254b> m22952b() {
        return this.f19094b.m1889b(this.f19093a.m22968a(C6254b.m21745A()).m1891b(C5707o0.m23177a(this))).m1903a(C5712p0.m23171a(this));
    }
}
