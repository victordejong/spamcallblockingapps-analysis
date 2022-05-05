package p459j.p460a.p582w0.p585b5;

import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.p585b5.C13930d;
/* renamed from: j.a.w0.b5.c */
/* loaded from: classes3-dex2jar.jar:j/a/w0/b5/c.class */
public final class C13929c extends C13930d {

    /* renamed from: e */
    public boolean f31303e;

    /* renamed from: f */
    public boolean f31304f;

    /* renamed from: g */
    public boolean f31305g;

    public C13929c(C13930d.AbstractC13931a aVar, boolean z) {
        this.f31305g = z;
        m3024a(aVar);
    }

    /* renamed from: c */
    public final void m3029c(boolean z) {
        if (z != this.f31304f) {
            this.f31304f = z;
            if (this.f31304f) {
                m3027g();
            } else {
                m3026h();
            }
        }
    }

    /* renamed from: d */
    public final void m3028d(boolean z) {
        if (z != this.f31303e) {
            this.f31303e = z;
            if (this.f31303e) {
                m3027g();
            } else {
                m3026h();
            }
        }
    }

    /* renamed from: g */
    public final boolean m3027g() {
        C14080m2.m2616a("startPvProbe " + this.f31305g + "/" + this.f31303e + "/" + this.f31304f + ", state:" + m3019d());
        if ((this.f31305g && !this.f31303e) || !this.f31304f || m3019d()) {
            return false;
        }
        m3018e();
        return true;
    }

    /* renamed from: h */
    public final boolean m3026h() {
        C14080m2.m2616a("stopPvProbe " + this.f31305g + "/" + this.f31303e + "/" + this.f31304f + ", state:" + m3019d());
        if (!m3019d()) {
            return false;
        }
        m3017f();
        return true;
    }
}
