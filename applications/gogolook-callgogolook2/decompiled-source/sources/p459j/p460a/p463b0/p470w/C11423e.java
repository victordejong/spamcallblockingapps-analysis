package p459j.p460a.p463b0.p470w;

import p459j.p460a.p511h.AbstractC12391a;
import p626l.p641z.p643d.C15145g;
/* renamed from: j.a.b0.w.e */
/* loaded from: classes2-dex2jar.jar:j/a/b0/w/e.class */
public final class C11423e implements AbstractC12391a {

    /* renamed from: a */
    public final int f25547a;

    public C11423e() {
        this(0, 1, null);
    }

    public C11423e(int i) {
        this.f25547a = i;
    }

    public /* synthetic */ C11423e(int i, int i2, C15145g gVar) {
        this((i2 & 1) != 0 ? 0 : i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C11423e)) {
            return false;
        }
        return getViewType() == ((C11423e) obj).getViewType();
    }

    @Override // p459j.p460a.p511h.AbstractC12391a
    public int getViewType() {
        return this.f25547a;
    }

    public int hashCode() {
        int hashCode;
        hashCode = Integer.valueOf(getViewType()).hashCode();
        return hashCode;
    }

    public String toString() {
        return "EmptyViewData(viewType=" + getViewType() + ")";
    }
}
