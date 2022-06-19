package p193e.p194a.p1221t.p1222a.p1224u;

import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.t.a.u.e */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/u/e.class */
public final class C20310e {

    /* renamed from: a */
    public final int f57121a;

    /* renamed from: b */
    public final int f57122b;

    /* renamed from: c */
    public final C20309d[] f57123c;

    public C20310e(int i, int i2, C20309d[] c20309dArr) {
        l.e(c20309dArr, "emojis");
        this.f57121a = i;
        this.f57122b = i2;
        this.f57123c = c20309dArr;
    }

    public C20310e(int i, int i2, C20309d[] c20309dArr, int i3) {
        C20309d[] c20309dArr2 = (i3 & 4) != 0 ? new C20309d[0] : null;
        l.e(c20309dArr2, "emojis");
        this.f57121a = i;
        this.f57122b = i2;
        this.f57123c = c20309dArr2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C20310e)) {
                return false;
            }
            C20310e c20310e = (C20310e) obj;
            return this.f57121a == c20310e.f57121a && this.f57122b == c20310e.f57122b && l.a(this.f57123c, c20310e.f57123c);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f57121a;
        int i2 = this.f57122b;
        C20309d[] c20309dArr = this.f57123c;
        return (((i * 31) + i2) * 31) + (c20309dArr != null ? Arrays.hashCode(c20309dArr) : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("EmojiCategory(icon=");
        m8728C.append(this.f57121a);
        m8728C.append(", name=");
        m8728C.append(this.f57122b);
        m8728C.append(", emojis=");
        m8728C.append(Arrays.toString(this.f57123c));
        m8728C.append(")");
        return m8728C.toString();
    }
}
