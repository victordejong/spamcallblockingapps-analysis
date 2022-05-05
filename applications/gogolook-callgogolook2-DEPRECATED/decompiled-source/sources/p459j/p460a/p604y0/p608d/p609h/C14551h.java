package p459j.p460a.p604y0.p608d.p609h;

import p459j.p460a.p511h.AbstractC12391a;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.y0.d.h.h */
/* loaded from: classes3-dex2jar.jar:j/a/y0/d/h/h.class */
public final class C14551h implements AbstractC12391a {

    /* renamed from: a */
    public String f32506a;

    /* renamed from: b */
    public final int f32507b;

    public C14551h(String str, int i) {
        this.f32506a = str;
        this.f32507b = i;
    }

    public /* synthetic */ C14551h(String str, int i, int i2, C15145g gVar) {
        this(str, (i2 & 2) != 0 ? C14537a.f32487g.m1151c() : i);
    }

    /* renamed from: a */
    public final String m1133a() {
        return this.f32506a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14551h)) {
            return false;
        }
        C14551h hVar = (C14551h) obj;
        if (!C15149k.m384a((Object) this.f32506a, (Object) hVar.f32506a)) {
            return false;
        }
        return getViewType() == hVar.getViewType();
    }

    @Override // p459j.p460a.p511h.AbstractC12391a
    public int getViewType() {
        return this.f32507b;
    }

    public int hashCode() {
        int hashCode;
        String str = this.f32506a;
        int hashCode2 = str != null ? str.hashCode() : 0;
        hashCode = Integer.valueOf(getViewType()).hashCode();
        return (hashCode2 * 31) + hashCode;
    }

    public String toString() {
        return "VasMainSmallHeaderItem(period=" + this.f32506a + ", viewType=" + getViewType() + ")";
    }
}
