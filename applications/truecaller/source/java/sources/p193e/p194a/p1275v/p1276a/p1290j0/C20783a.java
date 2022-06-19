package p193e.p194a.p1275v.p1276a.p1290j0;

import com.truecaller.details_view.p162ui.optionmenu.OptionMenu;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.v.a.j0.a */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/j0/a.class */
public final class C20783a {

    /* renamed from: a */
    public final OptionMenu f58435a;

    /* renamed from: b */
    public final boolean f58436b;

    public C20783a(OptionMenu optionMenu, boolean z) {
        l.e(optionMenu, "optionMenu");
        this.f58435a = optionMenu;
        this.f58436b = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20783a)) {
                return false;
            }
            C20783a c20783a = (C20783a) obj;
            return l.a(this.f58435a, c20783a.f58435a) && this.f58436b == c20783a.f58436b;
        }
        return true;
    }

    public int hashCode() {
        OptionMenu optionMenu = this.f58435a;
        int hashCode = optionMenu != null ? optionMenu.hashCode() : 0;
        boolean z = this.f58436b;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OptionMenuItem(optionMenu=");
        m8728C.append(this.f58435a);
        m8728C.append(", visible=");
        return C22128a.m8590o(m8728C, this.f58436b, ")");
    }
}
