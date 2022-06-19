package p193e.p194a.p1275v.p1276a.p1285e0;

import android.graphics.drawable.Drawable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.v.a.e0.g */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/e0/g.class */
public final class C20748g {

    /* renamed from: a */
    public final int f58377a;

    /* renamed from: b */
    public final int f58378b;

    /* renamed from: c */
    public final Drawable f58379c;

    /* renamed from: d */
    public final Integer f58380d;

    public C20748g(int i, int i2, Drawable drawable, Integer num) {
        this.f58377a = i;
        this.f58378b = i2;
        this.f58379c = drawable;
        this.f58380d = num;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20748g)) {
                return false;
            }
            C20748g c20748g = (C20748g) obj;
            return this.f58377a == c20748g.f58377a && this.f58378b == c20748g.f58378b && l.a(this.f58379c, c20748g.f58379c) && l.a(this.f58380d, c20748g.f58380d);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f58377a;
        int i2 = this.f58378b;
        Drawable drawable = this.f58379c;
        int i3 = 0;
        int hashCode = drawable != null ? drawable.hashCode() : 0;
        Integer num = this.f58380d;
        if (num != null) {
            i3 = num.hashCode();
        }
        return (((((i * 31) + i2) * 31) + hashCode) * 31) + i3;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Source(text=");
        m8728C.append(this.f58377a);
        m8728C.append(", textColor=");
        m8728C.append(this.f58378b);
        m8728C.append(", icon=");
        m8728C.append(this.f58379c);
        m8728C.append(", iconColor=");
        return C22128a.m8689L2(m8728C, this.f58380d, ")");
    }
}
