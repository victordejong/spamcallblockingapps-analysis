package p459j.p460a.p463b0.p464q;

import p459j.p460a.p511h.AbstractC12391a;
import p626l.p641z.p643d.C15145g;
/* renamed from: j.a.b0.q.w */
/* loaded from: classes2-dex2jar.jar:j/a/b0/q/w.class */
public final class C11207w implements AbstractC12391a {

    /* renamed from: a */
    public final int f25156a;

    public C11207w() {
        this(0, 1, null);
    }

    public C11207w(int i) {
        this.f25156a = i;
    }

    public /* synthetic */ C11207w(int i, int i2, C15145g gVar) {
        this((i2 & 1) != 0 ? 2 : i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C11207w)) {
            return false;
        }
        return getViewType() == ((C11207w) obj).getViewType();
    }

    @Override // p459j.p460a.p511h.AbstractC12391a
    public int getViewType() {
        return this.f25156a;
    }

    public int hashCode() {
        int hashCode;
        hashCode = Integer.valueOf(getViewType()).hashCode();
        return hashCode;
    }

    public String toString() {
        return "FilterViewData(viewType=" + getViewType() + ")";
    }
}
