package p193e.p194a.p1275v.p1276a.p1298r0;

import android.graphics.drawable.Drawable;
import com.truecaller.details_view.p162ui.theming.StatusBarAppearance;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.v.a.r0.f */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/r0/f.class */
public final class C20842f {

    /* renamed from: a */
    public final StatusBarAppearance f58563a;

    /* renamed from: b */
    public final int f58564b;

    /* renamed from: c */
    public final int f58565c;

    /* renamed from: d */
    public final Drawable f58566d;

    /* renamed from: e */
    public final Integer f58567e;

    /* renamed from: f */
    public final int f58568f;

    /* renamed from: g */
    public final int f58569g;

    /* renamed from: h */
    public final Drawable f58570h;

    /* renamed from: i */
    public final AbstractC20845h f58571i;

    /* renamed from: j */
    public final int f58572j;

    public C20842f(StatusBarAppearance statusBarAppearance, int i, int i2, Drawable drawable, Integer num, int i3, int i4, Drawable drawable2, AbstractC20845h abstractC20845h, int i5) {
        l.e(statusBarAppearance, "statusBarAppearance");
        l.e(drawable2, "background");
        l.e(abstractC20845h, "tagPainter");
        this.f58563a = statusBarAppearance;
        this.f58564b = i;
        this.f58565c = i2;
        this.f58566d = drawable;
        this.f58567e = num;
        this.f58568f = i3;
        this.f58569g = i4;
        this.f58570h = drawable2;
        this.f58571i = abstractC20845h;
        this.f58572j = i5;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20842f)) {
                return false;
            }
            C20842f c20842f = (C20842f) obj;
            return l.a(this.f58563a, c20842f.f58563a) && this.f58564b == c20842f.f58564b && this.f58565c == c20842f.f58565c && l.a(this.f58566d, c20842f.f58566d) && l.a(this.f58567e, c20842f.f58567e) && this.f58568f == c20842f.f58568f && this.f58569g == c20842f.f58569g && l.a(this.f58570h, c20842f.f58570h) && l.a(this.f58571i, c20842f.f58571i) && this.f58572j == c20842f.f58572j;
        }
        return true;
    }

    public int hashCode() {
        StatusBarAppearance statusBarAppearance = this.f58563a;
        int i = 0;
        int hashCode = statusBarAppearance != null ? statusBarAppearance.hashCode() : 0;
        int i2 = this.f58564b;
        int i3 = this.f58565c;
        Drawable drawable = this.f58566d;
        int hashCode2 = drawable != null ? drawable.hashCode() : 0;
        Integer num = this.f58567e;
        int hashCode3 = num != null ? num.hashCode() : 0;
        int i4 = this.f58568f;
        int i5 = this.f58569g;
        Drawable drawable2 = this.f58570h;
        int hashCode4 = drawable2 != null ? drawable2.hashCode() : 0;
        AbstractC20845h abstractC20845h = this.f58571i;
        if (abstractC20845h != null) {
            i = abstractC20845h.hashCode();
        }
        return (((((((((((((((((hashCode * 31) + i2) * 31) + i3) * 31) + hashCode2) * 31) + hashCode3) * 31) + i4) * 31) + i5) * 31) + hashCode4) * 31) + i) * 31) + this.f58572j;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DetailsViewHeaderAppearance(statusBarAppearance=");
        m8728C.append(this.f58563a);
        m8728C.append(", defaultSourceTitle=");
        m8728C.append(this.f58564b);
        m8728C.append(", sourceTextColor=");
        m8728C.append(this.f58565c);
        m8728C.append(", sourceIcon=");
        m8728C.append(this.f58566d);
        m8728C.append(", sourceIconColor=");
        m8728C.append(this.f58567e);
        m8728C.append(", toolbarIconsColor=");
        m8728C.append(this.f58568f);
        m8728C.append(", collapsedToolbarIconsColor=");
        m8728C.append(this.f58569g);
        m8728C.append(", background=");
        m8728C.append(this.f58570h);
        m8728C.append(", tagPainter=");
        m8728C.append(this.f58571i);
        m8728C.append(", avatarBorderColor=");
        return C22128a.m8697J2(m8728C, this.f58572j, ")");
    }
}
