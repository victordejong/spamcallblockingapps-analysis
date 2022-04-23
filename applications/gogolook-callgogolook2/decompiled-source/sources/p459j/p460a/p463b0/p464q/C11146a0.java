package p459j.p460a.p463b0.p464q;

import p459j.p460a.p511h.AbstractC12391a;
import p626l.p641z.p643d.C15145g;
/* renamed from: j.a.b0.q.a0 */
/* loaded from: classes2-dex2jar.jar:j/a/b0/q/a0.class */
public final class C11146a0 implements AbstractC12391a {

    /* renamed from: a */
    public final int f25044a;

    public C11146a0() {
        this(0, 1, null);
    }

    public C11146a0(int i) {
        this.f25044a = i;
    }

    public /* synthetic */ C11146a0(int i, int i2, C15145g gVar) {
        this((i2 & 1) != 0 ? 3 : i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C11146a0)) {
            return false;
        }
        return getViewType() == ((C11146a0) obj).getViewType();
    }

    @Override // p459j.p460a.p511h.AbstractC12391a
    public int getViewType() {
        return this.f25044a;
    }

    public int hashCode() {
        int hashCode;
        hashCode = Integer.valueOf(getViewType()).hashCode();
        return hashCode;
    }

    public String toString() {
        return "SuggestionViewData(viewType=" + getViewType() + ")";
    }
}
