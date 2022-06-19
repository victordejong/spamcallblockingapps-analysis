package org.xutils.view;
/* renamed from: org.xutils.view.b */
/* loaded from: classes2-dex2jar.jar:org/xutils/view/b.class */
final class C9681b {

    /* renamed from: a */
    public int f40893a;

    /* renamed from: b */
    public int f40894b;

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C9681b.class != obj.getClass()) {
            return false;
        }
        C9681b c9681b = (C9681b) obj;
        if (this.f40893a != c9681b.f40893a) {
            return false;
        }
        if (this.f40894b != c9681b.f40894b) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (this.f40893a * 31) + this.f40894b;
    }
}
