package p131c.p161d.p170b.p173b.p176i.p179u;

import android.content.Context;
import p131c.p161d.p170b.p173b.p176i.p177a0.AbstractC2541a;
/* renamed from: c.d.b.b.i.u.c */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/u/c.class */
public final class C2585c extends AbstractC2590g {

    /* renamed from: a */
    public final Context f9645a;

    /* renamed from: b */
    public final AbstractC2541a f9646b;

    /* renamed from: c */
    public final AbstractC2541a f9647c;

    /* renamed from: d */
    public final String f9648d;

    public C2585c(Context context, AbstractC2541a aVar, AbstractC2541a aVar2, String str) {
        if (context != null) {
            this.f9645a = context;
            if (aVar != null) {
                this.f9646b = aVar;
                if (aVar2 != null) {
                    this.f9647c = aVar2;
                    if (str != null) {
                        this.f9648d = str;
                        return;
                    }
                    throw new NullPointerException("Null backendName");
                }
                throw new NullPointerException("Null monotonicClock");
            }
            throw new NullPointerException("Null wallClock");
        }
        throw new NullPointerException("Null applicationContext");
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2590g
    /* renamed from: a */
    public Context mo29472a() {
        return this.f9645a;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2590g
    /* renamed from: b */
    public String mo29470b() {
        return this.f9648d;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2590g
    /* renamed from: c */
    public AbstractC2541a mo29469c() {
        return this.f9647c;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2590g
    /* renamed from: d */
    public AbstractC2541a mo29468d() {
        return this.f9646b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2590g)) {
            return false;
        }
        AbstractC2590g gVar = (AbstractC2590g) obj;
        if (!this.f9645a.equals(gVar.mo29472a()) || !this.f9646b.equals(gVar.mo29468d()) || !this.f9647c.equals(gVar.mo29469c()) || !this.f9648d.equals(gVar.mo29470b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((this.f9645a.hashCode() ^ 1000003) * 1000003) ^ this.f9646b.hashCode()) * 1000003) ^ this.f9647c.hashCode()) * 1000003) ^ this.f9648d.hashCode();
    }

    public String toString() {
        return "CreationContext{applicationContext=" + this.f9645a + ", wallClock=" + this.f9646b + ", monotonicClock=" + this.f9647c + ", backendName=" + this.f9648d + "}";
    }
}
