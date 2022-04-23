package p131c.p161d.p282e.p315q.p333r0;

import android.text.TextUtils;
/* renamed from: c.d.e.q.r0.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/d.class */
public class C5851d {

    /* renamed from: a */
    public final C5874n f19131a;

    /* renamed from: b */
    public final String f19132b;

    /* renamed from: c.d.e.q.r0.d$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/r0/d$b.class */
    public static class C5853b {

        /* renamed from: a */
        public C5874n f19133a;

        /* renamed from: b */
        public String f19134b;

        /* renamed from: a */
        public C5853b m22893a(C5874n nVar) {
            this.f19133a = nVar;
            return this;
        }

        /* renamed from: a */
        public C5853b m22892a(String str) {
            this.f19134b = str;
            return this;
        }

        /* renamed from: a */
        public C5851d m22894a() {
            if (!TextUtils.isEmpty(this.f19134b)) {
                C5874n nVar = this.f19133a;
                if (nVar != null) {
                    return new C5851d(nVar, this.f19134b);
                }
                throw new IllegalArgumentException("Button model must have text");
            }
            throw new IllegalArgumentException("Button model must have a color");
        }
    }

    public C5851d(C5874n nVar, String str) {
        this.f19131a = nVar;
        this.f19132b = str;
    }

    /* renamed from: c */
    public static C5853b m22895c() {
        return new C5853b();
    }

    /* renamed from: a */
    public String m22897a() {
        return this.f19132b;
    }

    /* renamed from: b */
    public C5874n m22896b() {
        return this.f19131a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C5851d)) {
            return false;
        }
        C5851d dVar = (C5851d) obj;
        return hashCode() == dVar.hashCode() && this.f19131a.equals(dVar.f19131a) && this.f19132b.equals(dVar.f19132b);
    }

    public int hashCode() {
        return this.f19131a.hashCode() + this.f19132b.hashCode();
    }
}
