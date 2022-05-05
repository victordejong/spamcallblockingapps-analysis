package p459j.p460a.p604y0.p608d.p609h;

import p459j.p460a.p511h.AbstractC12391a;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.y0.d.h.m */
/* loaded from: classes3-dex2jar.jar:j/a/y0/d/h/m.class */
public final class C14563m implements AbstractC12391a {

    /* renamed from: a */
    public String f32528a;

    /* renamed from: b */
    public int f32529b;

    /* renamed from: c */
    public final int f32530c;

    public C14563m(String str, int i, int i2) {
        C15149k.m377b(str, "title");
        this.f32528a = str;
        this.f32529b = i;
        this.f32530c = i2;
    }

    public /* synthetic */ C14563m(String str, int i, int i2, int i3, C15145g gVar) {
        this(str, i, (i3 & 4) != 0 ? C14537a.f32487g.m1153a() : i2);
    }

    /* renamed from: a */
    public final int m1122a() {
        return this.f32529b;
    }

    /* renamed from: b */
    public final String m1121b() {
        return this.f32528a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C14563m)) {
            return false;
        }
        C14563m mVar = (C14563m) obj;
        if (!C15149k.m384a((Object) this.f32528a, (Object) mVar.f32528a)) {
            return false;
        }
        if (!(this.f32529b == mVar.f32529b)) {
            return false;
        }
        return getViewType() == mVar.getViewType();
    }

    @Override // p459j.p460a.p511h.AbstractC12391a
    public int getViewType() {
        return this.f32530c;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        String str = this.f32528a;
        int hashCode3 = str != null ? str.hashCode() : 0;
        hashCode = Integer.valueOf(this.f32529b).hashCode();
        hashCode2 = Integer.valueOf(getViewType()).hashCode();
        return (((hashCode3 * 31) + hashCode) * 31) + hashCode2;
    }

    public String toString() {
        return "VasSectionItem(title=" + this.f32528a + ", color=" + this.f32529b + ", viewType=" + getViewType() + ")";
    }
}
