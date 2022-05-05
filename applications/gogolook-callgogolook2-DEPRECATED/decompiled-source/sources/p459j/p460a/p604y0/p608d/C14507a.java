package p459j.p460a.p604y0.p608d;

import gogolook.callgogolook2.vas.main.VasDetectionActivity;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.y0.d.a */
/* loaded from: classes3-dex2jar.jar:j/a/y0/d/a.class */
public final class C14507a {

    /* renamed from: a */
    public long f32421a;

    /* renamed from: b */
    public long f32422b;

    /* renamed from: c */
    public String f32423c;

    /* renamed from: d */
    public int f32424d;

    public C14507a() {
        this(0L, 0L, null, 0, 15, null);
    }

    public C14507a(long j, long j2, String str, int i) {
        C15149k.m377b(str, "vasTotalPrice");
        this.f32421a = j;
        this.f32422b = j2;
        this.f32423c = str;
        this.f32424d = i;
    }

    public /* synthetic */ C14507a(long j, long j2, String str, int i, int i2, C15145g gVar) {
        this((i2 & 1) != 0 ? -1L : j, (i2 & 2) != 0 ? 0L : j2, (i2 & 4) != 0 ? VasDetectionActivity.f12989f.m25954a() : str, (i2 & 8) != 0 ? 3 : i);
    }

    /* renamed from: a */
    public final long m1212a() {
        return this.f32422b;
    }

    /* renamed from: b */
    public final long m1211b() {
        return this.f32421a;
    }

    /* renamed from: c */
    public final int m1210c() {
        return this.f32424d;
    }

    /* renamed from: d */
    public final String m1209d() {
        return this.f32423c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14507a)) {
            return false;
        }
        C14507a aVar = (C14507a) obj;
        if (!(this.f32421a == aVar.f32421a)) {
            return false;
        }
        if (!(this.f32422b == aVar.f32422b) || !C15149k.m384a((Object) this.f32423c, (Object) aVar.f32423c)) {
            return false;
        }
        return this.f32424d == aVar.f32424d;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        hashCode = Long.valueOf(this.f32421a).hashCode();
        hashCode2 = Long.valueOf(this.f32422b).hashCode();
        String str = this.f32423c;
        int hashCode4 = str != null ? str.hashCode() : 0;
        hashCode3 = Integer.valueOf(this.f32424d).hashCode();
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode4) * 31) + hashCode3;
    }

    public String toString() {
        return "MiscParameters(vasEntry=" + this.f32421a + ", vasDestination=" + this.f32422b + ", vasTotalPrice=" + this.f32423c + ", vasGFSource=" + this.f32424d + ")";
    }
}
