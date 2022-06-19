package p193e.p194a.p1275v.p1276a.p1279b0;

import android.graphics.drawable.Drawable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.v.a.b0.e */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/b0/e.class */
public final class C20686e {

    /* renamed from: a */
    public final Drawable f58258a;

    /* renamed from: b */
    public final String f58259b;

    /* renamed from: c */
    public final String f58260c;

    /* renamed from: d */
    public final Drawable f58261d;

    /* renamed from: e */
    public final a<s> f58262e;

    public C20686e(Drawable drawable, String str, String str2, Drawable drawable2, a<s> aVar) {
        l.e(aVar, "onClick");
        this.f58258a = drawable;
        this.f58259b = str;
        this.f58260c = str2;
        this.f58261d = drawable2;
        this.f58262e = aVar;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20686e)) {
                return false;
            }
            C20686e c20686e = (C20686e) obj;
            return l.a(this.f58258a, c20686e.f58258a) && l.a(this.f58259b, c20686e.f58259b) && l.a(this.f58260c, c20686e.f58260c) && l.a(this.f58261d, c20686e.f58261d) && l.a(this.f58262e, c20686e.f58262e);
        }
        return true;
    }

    public int hashCode() {
        Drawable drawable = this.f58258a;
        int i = 0;
        int hashCode = drawable != null ? drawable.hashCode() : 0;
        String str = this.f58259b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f58260c;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        Drawable drawable2 = this.f58261d;
        int hashCode4 = drawable2 != null ? drawable2.hashCode() : 0;
        a<s> aVar = this.f58262e;
        if (aVar != null) {
            i = aVar.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallHistoryViewModel(icon=");
        m8728C.append(this.f58258a);
        m8728C.append(", contactNumber=");
        m8728C.append(this.f58259b);
        m8728C.append(", time=");
        m8728C.append(this.f58260c);
        m8728C.append(", simSlot=");
        m8728C.append(this.f58261d);
        m8728C.append(", onClick=");
        m8728C.append(this.f58262e);
        m8728C.append(")");
        return m8728C.toString();
    }
}
