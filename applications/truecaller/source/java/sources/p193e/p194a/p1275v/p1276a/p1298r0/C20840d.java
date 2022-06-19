package p193e.p194a.p1275v.p1276a.p1298r0;

import android.graphics.drawable.Drawable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.v.a.r0.d */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/r0/d.class */
public final class C20840d {

    /* renamed from: a */
    public final int f58558a;

    /* renamed from: b */
    public final Drawable f58559b = null;

    public C20840d(int i, Drawable drawable) {
        this.f58558a = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20840d)) {
                return false;
            }
            C20840d c20840d = (C20840d) obj;
            return this.f58558a == c20840d.f58558a && l.a(this.f58559b, c20840d.f58559b);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f58558a;
        Drawable drawable = this.f58559b;
        return (i * 31) + (drawable != null ? drawable.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DetailsViewFabAppearance(backgroundColor=");
        m8728C.append(this.f58558a);
        m8728C.append(", backgroundDrawable=");
        m8728C.append(this.f58559b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
