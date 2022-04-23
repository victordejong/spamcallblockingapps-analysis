package p131c.p161d.p282e.p315q.p328q0;

import com.google.internal.firebase.inappmessaging.p495v1.CampaignProto$ThickContent;
import p131c.p161d.p362g.p363a.p364a.p365a.p366g.C6267i;
/* renamed from: c.d.e.q.q0.r3 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/r3.class */
public class C5729r3 {

    /* renamed from: a */
    public final C5715p3 f18895a;

    /* renamed from: d */
    public int f18898d = 0;

    /* renamed from: c */
    public boolean f18897c = m23125c();

    /* renamed from: b */
    public boolean f18896b = m23124d();

    public C5729r3(C5715p3 p3Var) {
        this.f18895a = p3Var;
    }

    /* renamed from: a */
    public void m23129a(C6267i iVar) {
        if (!this.f18896b) {
            m23123e();
            for (CampaignProto$ThickContent campaignProto$ThickContent : iVar.m21704w()) {
                if (campaignProto$ThickContent.m7091y()) {
                    m23126b(true);
                    C5694l2.m23214c("Setting this device as a test device");
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m23128a(boolean z) {
        this.f18897c = z;
        this.f18895a.m23163d("fresh_install", z);
    }

    /* renamed from: a */
    public boolean m23130a() {
        return this.f18897c;
    }

    /* renamed from: b */
    public final void m23126b(boolean z) {
        this.f18896b = z;
        this.f18895a.m23163d("test_device", z);
    }

    /* renamed from: b */
    public boolean m23127b() {
        return this.f18896b;
    }

    /* renamed from: c */
    public final boolean m23125c() {
        return this.f18895a.m23167a("fresh_install", true);
    }

    /* renamed from: d */
    public final boolean m23124d() {
        return this.f18895a.m23167a("test_device", false);
    }

    /* renamed from: e */
    public final void m23123e() {
        if (this.f18897c) {
            int i = this.f18898d + 1;
            this.f18898d = i;
            if (i >= 5) {
                m23128a(false);
            }
        }
    }
}
