package p626l.p631e0;

import p459j.p460a.p541n0.C13032a;
import p626l.p628b0.C14888d;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.e0.f */
/* loaded from: classes3-dex2jar.jar:l/e0/f.class */
public final class C14942f {

    /* renamed from: a */
    public final String f32990a;

    /* renamed from: b */
    public final C14888d f32991b;

    public C14942f(String str, C14888d dVar) {
        C15149k.m377b(str, C13032a.f29462d);
        C15149k.m377b(dVar, "range");
        this.f32990a = str;
        this.f32991b = dVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14942f)) {
            return false;
        }
        C14942f fVar = (C14942f) obj;
        return C15149k.m384a((Object) this.f32990a, (Object) fVar.f32990a) && C15149k.m384a(this.f32991b, fVar.f32991b);
    }

    public int hashCode() {
        String str = this.f32990a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        C14888d dVar = this.f32991b;
        if (dVar != null) {
            i = dVar.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "MatchGroup(value=" + this.f32990a + ", range=" + this.f32991b + ")";
    }
}
