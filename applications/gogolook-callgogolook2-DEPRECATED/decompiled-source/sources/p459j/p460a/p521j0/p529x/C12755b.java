package p459j.p460a.p521j0.p529x;

import android.content.ContentValues;
import p459j.p460a.p521j0.p529x.C12780l;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.j0.x.b */
/* loaded from: classes3-dex2jar.jar:j/a/j0/x/b.class */
public final class C12755b {

    /* renamed from: a */
    public String f28755a;

    /* renamed from: b */
    public String f28756b;

    /* renamed from: c */
    public boolean f28757c;

    /* renamed from: d */
    public int f28758d;

    /* renamed from: e */
    public ContentValues f28759e;

    /* renamed from: f */
    public boolean f28760f;

    /* renamed from: g */
    public String f28761g;

    /* renamed from: h */
    public C12780l.C12784d f28762h;

    public C12755b(String str, String str2, boolean z, int i, ContentValues contentValues, boolean z2, String str3, C12780l.C12784d dVar) {
        C15149k.m377b(str, "address");
        C15149k.m377b(str2, "body");
        C15149k.m377b(contentValues, "messageValues");
        this.f28755a = str;
        this.f28756b = str2;
        this.f28757c = z;
        this.f28758d = i;
        this.f28759e = contentValues;
        this.f28760f = z2;
        this.f28761g = str3;
        this.f28762h = dVar;
    }

    /* renamed from: a */
    public final String m5425a() {
        return this.f28755a;
    }

    /* renamed from: a */
    public final boolean m5424a(C12755b bVar) {
        C15149k.m377b(bVar, "data");
        return C15149k.m384a((Object) this.f28756b, (Object) bVar.f28756b);
    }

    /* renamed from: b */
    public final String m5423b() {
        return this.f28756b;
    }

    /* renamed from: b */
    public final boolean m5422b(C12755b bVar) {
        C15149k.m377b(bVar, "data");
        return C15149k.m384a((Object) this.f28755a, (Object) bVar.f28755a);
    }

    /* renamed from: c */
    public final ContentValues m5421c() {
        return this.f28759e;
    }

    /* renamed from: d */
    public final String m5420d() {
        return this.f28761g;
    }

    /* renamed from: e */
    public final C12780l.C12784d m5419e() {
        return this.f28762h;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C12755b)) {
            return false;
        }
        C12755b bVar = (C12755b) obj;
        if (!C15149k.m384a((Object) this.f28755a, (Object) bVar.f28755a) || !C15149k.m384a((Object) this.f28756b, (Object) bVar.f28756b)) {
            return false;
        }
        if (!(this.f28757c == bVar.f28757c)) {
            return false;
        }
        if (!(this.f28758d == bVar.f28758d) || !C15149k.m384a(this.f28759e, bVar.f28759e)) {
            return false;
        }
        return (this.f28760f == bVar.f28760f) && C15149k.m384a((Object) this.f28761g, (Object) bVar.f28761g) && C15149k.m384a(this.f28762h, bVar.f28762h);
    }

    /* renamed from: f */
    public final boolean m5418f() {
        return this.f28757c;
    }

    /* renamed from: g */
    public final boolean m5417g() {
        return this.f28760f;
    }

    public int hashCode() {
        int hashCode;
        String str = this.f28755a;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f28756b;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        boolean z = this.f28757c;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        hashCode = Integer.valueOf(this.f28758d).hashCode();
        ContentValues contentValues = this.f28759e;
        int hashCode4 = contentValues != null ? contentValues.hashCode() : 0;
        boolean z2 = this.f28760f;
        int i3 = z2 ? 1 : 0;
        if (z2) {
            i3 = 1;
        }
        String str3 = this.f28761g;
        int hashCode5 = str3 != null ? str3.hashCode() : 0;
        C12780l.C12784d dVar = this.f28762h;
        if (dVar != null) {
            i = dVar.hashCode();
        }
        return (((((((((((((hashCode2 * 31) + hashCode3) * 31) + i2) * 31) + hashCode) * 31) + hashCode4) * 31) + i3) * 31) + hashCode5) * 31) + i;
    }

    public String toString() {
        return "NativeSmsData(address=" + this.f28755a + ", body=" + this.f28756b + ", isClassZero=" + this.f28757c + ", subscriptionId=" + this.f28758d + ", messageValues=" + this.f28759e + ", isContainUrl=" + this.f28760f + ", otpStr=" + this.f28761g + ", trackingData=" + this.f28762h + ")";
    }
}
