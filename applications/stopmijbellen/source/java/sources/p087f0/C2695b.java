package p087f0;

import android.graphics.Insets;
import android.support.p012v4.media.C0082b;
/* renamed from: f0.b */
/* loaded from: classes-dex2jar.jar:f0/b.class */
public final class C2695b {

    /* renamed from: e */
    public static final C2695b f9271e = new C2695b(0, 0, 0, 0);

    /* renamed from: a */
    public final int f9272a;

    /* renamed from: b */
    public final int f9273b;

    /* renamed from: c */
    public final int f9274c;

    /* renamed from: d */
    public final int f9275d;

    public C2695b(int i, int i2, int i3, int i4) {
        this.f9272a = i;
        this.f9273b = i2;
        this.f9274c = i3;
        this.f9275d = i4;
    }

    /* renamed from: a */
    public static C2695b m3253a(int i, int i2, int i3, int i4) {
        return (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? f9271e : new C2695b(i, i2, i3, i4);
    }

    /* renamed from: b */
    public static C2695b m3252b(Insets insets) {
        return m3253a(insets.left, insets.top, insets.right, insets.bottom);
    }

    /* renamed from: c */
    public Insets m3251c() {
        return Insets.of(this.f9272a, this.f9273b, this.f9274c, this.f9275d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2695b.class != obj.getClass()) {
            return false;
        }
        C2695b c2695b = (C2695b) obj;
        return this.f9275d == c2695b.f9275d && this.f9272a == c2695b.f9272a && this.f9274c == c2695b.f9274c && this.f9273b == c2695b.f9273b;
    }

    public int hashCode() {
        return (((((this.f9272a * 31) + this.f9273b) * 31) + this.f9274c) * 31) + this.f9275d;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Insets{left=");
        m8752j.append(this.f9272a);
        m8752j.append(", top=");
        m8752j.append(this.f9273b);
        m8752j.append(", right=");
        m8752j.append(this.f9274c);
        m8752j.append(", bottom=");
        m8752j.append(this.f9275d);
        m8752j.append('}');
        return m8752j.toString();
    }
}
