package p459j.p460a.p576w.p578o;

import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import java.util.List;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w.o.f */
/* loaded from: classes2-dex2jar.jar:j/a/w/o/f.class */
public final class C13799f {
    @AbstractC10120c("plan_id")

    /* renamed from: a */
    public final String f30983a;
    @AbstractC10120c("name")

    /* renamed from: b */
    public final String f30984b;
    @AbstractC10120c("feats")

    /* renamed from: c */
    public final List<C13795b> f30985c;
    @AbstractC10120c("desc")

    /* renamed from: d */
    public final String f30986d;
    @AbstractC10120c(IapPlanRealmObject.LEVEL)

    /* renamed from: e */
    public final int f30987e;
    @AbstractC10120c(IapPlanRealmObject.PRODUCTS)

    /* renamed from: f */
    public final List<C13801h> f30988f;

    /* renamed from: a */
    public final String m3429a() {
        return this.f30986d;
    }

    /* renamed from: b */
    public final List<C13795b> m3428b() {
        return this.f30985c;
    }

    /* renamed from: c */
    public final int m3427c() {
        return this.f30987e;
    }

    /* renamed from: d */
    public final String m3426d() {
        return this.f30984b;
    }

    /* renamed from: e */
    public final String m3425e() {
        return this.f30983a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C13799f)) {
            return false;
        }
        C13799f fVar = (C13799f) obj;
        if (!C15149k.m384a((Object) this.f30983a, (Object) fVar.f30983a) || !C15149k.m384a((Object) this.f30984b, (Object) fVar.f30984b) || !C15149k.m384a(this.f30985c, fVar.f30985c) || !C15149k.m384a((Object) this.f30986d, (Object) fVar.f30986d)) {
            return false;
        }
        return (this.f30987e == fVar.f30987e) && C15149k.m384a(this.f30988f, fVar.f30988f);
    }

    /* renamed from: f */
    public final List<C13801h> m3424f() {
        return this.f30988f;
    }

    public int hashCode() {
        int hashCode;
        String str = this.f30983a;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f30984b;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        List<C13795b> list = this.f30985c;
        int hashCode4 = list != null ? list.hashCode() : 0;
        String str3 = this.f30986d;
        int hashCode5 = str3 != null ? str3.hashCode() : 0;
        hashCode = Integer.valueOf(this.f30987e).hashCode();
        List<C13801h> list2 = this.f30988f;
        if (list2 != null) {
            i = list2.hashCode();
        }
        return (((((((((hashCode2 * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode) * 31) + i;
    }

    public String toString() {
        return "Plan(planId=" + this.f30983a + ", name=" + this.f30984b + ", features=" + this.f30985c + ", desc=" + this.f30986d + ", level=" + this.f30987e + ", products=" + this.f30988f + ")";
    }
}
