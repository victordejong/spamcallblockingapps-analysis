package p459j.p460a.p604y0.p608d.p609h;

import p459j.p460a.p511h.AbstractC12391a;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.y0.d.h.k */
/* loaded from: classes3-dex2jar.jar:j/a/y0/d/h/k.class */
public final class C14560k implements AbstractC12391a {

    /* renamed from: a */
    public String f32525a;

    /* renamed from: b */
    public final int f32526b;

    public C14560k(String str, int i) {
        this.f32525a = str;
        this.f32526b = i;
    }

    public /* synthetic */ C14560k(String str, int i, int i2, C15145g gVar) {
        this(str, (i2 & 2) != 0 ? C14537a.f32487g.m1149e() : i);
    }

    /* renamed from: a */
    public final String m1124a() {
        return this.f32525a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14560k)) {
            return false;
        }
        C14560k kVar = (C14560k) obj;
        if (!C15149k.m384a((Object) this.f32525a, (Object) kVar.f32525a)) {
            return false;
        }
        return getViewType() == kVar.getViewType();
    }

    @Override // p459j.p460a.p511h.AbstractC12391a
    public int getViewType() {
        return this.f32526b;
    }

    public int hashCode() {
        int hashCode;
        String str = this.f32525a;
        int hashCode2 = str != null ? str.hashCode() : 0;
        hashCode = Integer.valueOf(getViewType()).hashCode();
        return (hashCode2 * 31) + hashCode;
    }

    public String toString() {
        return "VasPromotionHeaderItem(period=" + this.f32525a + ", viewType=" + getViewType() + ")";
    }
}
