package p193e.p194a.p1195s.p1197k;

import s1.z.c.l;
/* renamed from: e.a.s.k.a */
/* loaded from: classes17-dex2jar.jar:e/a/s/k/a.class */
public final class C20021a {

    /* renamed from: a */
    public final String f56566a;

    public C20021a(String str) {
        l.e(str, "fcmToken");
        this.f56566a = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C20021a) && l.a(this.f56566a, ((C20021a) obj).f56566a);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f56566a;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return "BindUserPushTokenRequestDto(fcmToken=" + this.f56566a + ")";
    }
}
