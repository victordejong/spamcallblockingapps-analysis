package p459j.p460a.p576w.p578o;

import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w.o.b */
/* loaded from: classes2-dex2jar.jar:j/a/w/o/b.class */
public final class C13795b {
    @AbstractC10120c("name")

    /* renamed from: a */
    public final String f30967a;
    @AbstractC10120c("region")

    /* renamed from: b */
    public final String f30968b;
    @AbstractC10120c("type")

    /* renamed from: c */
    public final int f30969c;

    /* renamed from: a */
    public final String m3443a() {
        return this.f30967a;
    }

    /* renamed from: b */
    public final String m3442b() {
        return this.f30968b;
    }

    /* renamed from: c */
    public final int m3441c() {
        return this.f30969c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C13795b)) {
            return false;
        }
        C13795b bVar = (C13795b) obj;
        if (!C15149k.m384a((Object) this.f30967a, (Object) bVar.f30967a) || !C15149k.m384a((Object) this.f30968b, (Object) bVar.f30968b)) {
            return false;
        }
        return this.f30969c == bVar.f30969c;
    }

    public int hashCode() {
        int hashCode;
        String str = this.f30967a;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f30968b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        hashCode = Integer.valueOf(this.f30969c).hashCode();
        return (((hashCode2 * 31) + i) * 31) + hashCode;
    }

    public String toString() {
        return "Feature(name=" + this.f30967a + ", region=" + this.f30968b + ", type=" + this.f30969c + ")";
    }
}
