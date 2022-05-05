package p081h.p160h.p179e.p192b.p193c;

import java.util.List;
import p626l.p641z.p643d.C15149k;
/* renamed from: h.h.e.b.c.a */
/* loaded from: classes2-dex2jar.jar:h/h/e/b/c/a.class */
public final class C6454a {

    /* renamed from: a */
    public final List<Integer> f16086a;

    /* renamed from: b */
    public final List<Integer> f16087b;

    /* renamed from: c */
    public final List<Integer> f16088c;

    public C6454a(List<Integer> list, List<Integer> list2, List<Integer> list3) {
        C15149k.m377b(list, "inputIds");
        C15149k.m377b(list2, "inputMask");
        C15149k.m377b(list3, "segmentIds");
        this.f16086a = list;
        this.f16087b = list2;
        this.f16088c = list3;
    }

    /* renamed from: a */
    public final List<Integer> m22549a() {
        return this.f16086a;
    }

    /* renamed from: b */
    public final List<Integer> m22548b() {
        return this.f16087b;
    }

    /* renamed from: c */
    public final List<Integer> m22547c() {
        return this.f16088c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6454a)) {
            return false;
        }
        C6454a aVar = (C6454a) obj;
        return C15149k.m384a(this.f16086a, aVar.f16086a) && C15149k.m384a(this.f16087b, aVar.f16087b) && C15149k.m384a(this.f16088c, aVar.f16088c);
    }

    public int hashCode() {
        List<Integer> list = this.f16086a;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        List<Integer> list2 = this.f16087b;
        int hashCode2 = list2 != null ? list2.hashCode() : 0;
        List<Integer> list3 = this.f16088c;
        if (list3 != null) {
            i = list3.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "Feature(inputIds=" + this.f16086a + ", inputMask=" + this.f16087b + ", segmentIds=" + this.f16088c + ")";
    }
}
