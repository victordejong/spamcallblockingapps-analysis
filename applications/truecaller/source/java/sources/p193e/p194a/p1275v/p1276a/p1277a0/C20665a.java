package p193e.p194a.p1275v.p1276a.p1277a0;

import android.graphics.drawable.Drawable;
import com.huawei.hms.push.constant.RemoteMessageConst;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.v.a.a0.a */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/a0/a.class */
public final class C20665a {

    /* renamed from: a */
    public final int f58209a;

    /* renamed from: b */
    public final Drawable f58210b;

    /* renamed from: c */
    public final String f58211c;

    /* renamed from: d */
    public final boolean f58212d;

    public C20665a(int i, Drawable drawable, String str, boolean z) {
        l.e(drawable, RemoteMessageConst.Notification.ICON);
        l.e(str, "text");
        this.f58209a = i;
        this.f58210b = drawable;
        this.f58211c = str;
        this.f58212d = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20665a)) {
                return false;
            }
            C20665a c20665a = (C20665a) obj;
            return this.f58209a == c20665a.f58209a && l.a(this.f58210b, c20665a.f58210b) && l.a(this.f58211c, c20665a.f58211c) && this.f58212d == c20665a.f58212d;
        }
        return true;
    }

    public int hashCode() {
        int i = this.f58209a;
        Drawable drawable = this.f58210b;
        int i2 = 0;
        int hashCode = drawable != null ? drawable.hashCode() : 0;
        String str = this.f58211c;
        if (str != null) {
            i2 = str.hashCode();
        }
        boolean z = this.f58212d;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        return (((((i * 31) + hashCode) * 31) + i2) * 31) + i3;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DisplayBadge(badge=");
        m8728C.append(this.f58209a);
        m8728C.append(", icon=");
        m8728C.append(this.f58210b);
        m8728C.append(", text=");
        m8728C.append(this.f58211c);
        m8728C.append(", hasTooltip=");
        return C22128a.m8590o(m8728C, this.f58212d, ")");
    }
}
