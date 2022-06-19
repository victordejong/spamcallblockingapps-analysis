package p193e.p194a.p294b;

import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p294b.p370p.AbstractC8204c;
import s1.z.c.l;
/* renamed from: e.a.b.g */
/* loaded from: classes6-dex2jar.jar:e/a/b/g.class */
public final class C7913g implements AbstractC7910e {
    @Inject

    /* renamed from: a */
    public AbstractC8204c f24533a;
    @Inject

    /* renamed from: b */
    public AbstractC19223c0 f24534b;

    @Override // p193e.p194a.p294b.AbstractC7910e
    /* renamed from: a */
    public void mo29128a() {
        AbstractC8204c abstractC8204c = this.f24533a;
        if (abstractC8204c != null) {
            if (abstractC8204c != null) {
                abstractC8204c.putBoolean("show_verified_business_banner", false);
            } else {
                l.l("bizMonSettings");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p294b.AbstractC7910e
    /* renamed from: b */
    public void mo29127b(String str) {
        l.e(str, "which");
        AbstractC8204c abstractC8204c = this.f24533a;
        if (abstractC8204c != null) {
            abstractC8204c.putBoolean(str, true);
        }
    }

    @Override // p193e.p194a.p294b.AbstractC7910e
    /* renamed from: c */
    public void mo29126c() {
        AbstractC8204c abstractC8204c = this.f24533a;
        if (abstractC8204c != null) {
            if (abstractC8204c != null) {
                abstractC8204c.putBoolean("show_priority_call_banner", false);
            } else {
                l.l("bizMonSettings");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p294b.AbstractC7910e
    /* renamed from: d */
    public String mo29125d() {
        AbstractC8204c abstractC8204c = this.f24533a;
        if (abstractC8204c != null) {
            if (abstractC8204c != null) {
                return abstractC8204c.getString("call_me_back_test_number", "");
            }
            l.l("bizMonSettings");
            throw null;
        }
        return "";
    }

    @Override // p193e.p194a.p294b.AbstractC7910e
    /* renamed from: e */
    public boolean mo29124e() {
        boolean z;
        AbstractC8204c abstractC8204c = this.f24533a;
        if (abstractC8204c == null) {
            z = false;
        } else if (abstractC8204c == null) {
            l.l("bizMonSettings");
            throw null;
        } else {
            z = abstractC8204c.getBoolean("show_verified_business_banner", true);
        }
        return z;
    }

    @Override // p193e.p194a.p294b.AbstractC7910e
    /* renamed from: f */
    public void mo29123f(String str) {
        l.e(str, "number");
        AbstractC8204c abstractC8204c = this.f24533a;
        if (abstractC8204c != null) {
            abstractC8204c.putString("call_me_back_test_number", str);
        }
    }

    @Override // p193e.p194a.p294b.AbstractC7910e
    /* renamed from: g */
    public boolean mo29122g() {
        boolean z;
        AbstractC8204c abstractC8204c = this.f24533a;
        if (abstractC8204c == null) {
            z = false;
        } else if (abstractC8204c == null) {
            l.l("bizMonSettings");
            throw null;
        } else {
            z = abstractC8204c.getBoolean("show_priority_call_banner", true);
        }
        return z;
    }
}
