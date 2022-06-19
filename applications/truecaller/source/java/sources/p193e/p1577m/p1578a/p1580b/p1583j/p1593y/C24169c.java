package p193e.p1577m.p1578a.p1580b.p1583j.p1593y;

import android.content.Context;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.p1583j.p1591e0.AbstractC24130a;
/* renamed from: e.m.a.b.j.y.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/y/c.class */
public final class C24169c extends AbstractC24175h {

    /* renamed from: a */
    public final Context f66907a;

    /* renamed from: b */
    public final AbstractC24130a f66908b;

    /* renamed from: c */
    public final AbstractC24130a f66909c;

    /* renamed from: d */
    public final String f66910d;

    public C24169c(Context context, AbstractC24130a abstractC24130a, AbstractC24130a abstractC24130a2, String str) {
        Objects.requireNonNull(context, "Null applicationContext");
        this.f66907a = context;
        Objects.requireNonNull(abstractC24130a, "Null wallClock");
        this.f66908b = abstractC24130a;
        Objects.requireNonNull(abstractC24130a2, "Null monotonicClock");
        this.f66909c = abstractC24130a2;
        Objects.requireNonNull(str, "Null backendName");
        this.f66910d = str;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24175h
    /* renamed from: a */
    public Context mo5509a() {
        return this.f66907a;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24175h
    /* renamed from: b */
    public String mo5508b() {
        return this.f66910d;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24175h
    /* renamed from: c */
    public AbstractC24130a mo5507c() {
        return this.f66909c;
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24175h
    /* renamed from: d */
    public AbstractC24130a mo5506d() {
        return this.f66908b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC24175h)) {
            return false;
        }
        AbstractC24175h abstractC24175h = (AbstractC24175h) obj;
        if (!this.f66907a.equals(abstractC24175h.mo5509a()) || !this.f66908b.equals(abstractC24175h.mo5506d()) || !this.f66909c.equals(abstractC24175h.mo5507c()) || !this.f66910d.equals(abstractC24175h.mo5508b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((this.f66907a.hashCode() ^ 1000003) * 1000003) ^ this.f66908b.hashCode()) * 1000003) ^ this.f66909c.hashCode()) * 1000003) ^ this.f66910d.hashCode();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CreationContext{applicationContext=");
        m8728C.append(this.f66907a);
        m8728C.append(", wallClock=");
        m8728C.append(this.f66908b);
        m8728C.append(", monotonicClock=");
        m8728C.append(this.f66909c);
        m8728C.append(", backendName=");
        return C22128a.m8618h(m8728C, this.f66910d, "}");
    }
}
