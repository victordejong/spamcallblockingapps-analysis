package p459j.p460a.p463b0.p470w;

import p459j.p460a.p511h.AbstractC12391a;
import p626l.p641z.p643d.C15145g;
/* renamed from: j.a.b0.w.b */
/* loaded from: classes2-dex2jar.jar:j/a/b0/w/b.class */
public final class C11419b implements AbstractC12391a {

    /* renamed from: a */
    public final int f25545a;

    public C11419b() {
        this(0, 1, null);
    }

    public C11419b(int i) {
        this.f25545a = i;
    }

    public /* synthetic */ C11419b(int i, int i2, C15145g gVar) {
        this((i2 & 1) != 0 ? 2 : i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C11419b)) {
            return false;
        }
        return getViewType() == ((C11419b) obj).getViewType();
    }

    @Override // p459j.p460a.p511h.AbstractC12391a
    public int getViewType() {
        return this.f25545a;
    }

    public int hashCode() {
        int hashCode;
        hashCode = Integer.valueOf(getViewType()).hashCode();
        return hashCode;
    }

    public String toString() {
        return "DefaultSettingViewData(viewType=" + getViewType() + ")";
    }
}
