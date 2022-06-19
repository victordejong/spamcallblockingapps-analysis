package p1727n3.p1874y.p1876b.p1877a.p1879n0;

import android.media.AudioAttributes;
/* renamed from: n3.y.b.a.n0.c */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/c.class */
public final class C27113c {

    /* renamed from: e */
    public static final C27113c f75819e = new C27113c(0, 0, 1, null);

    /* renamed from: a */
    public final int f75820a;

    /* renamed from: b */
    public final int f75821b;

    /* renamed from: c */
    public final int f75822c;

    /* renamed from: d */
    public AudioAttributes f75823d;

    public C27113c(int i, int i2, int i3, C27114a c27114a) {
        this.f75820a = i;
        this.f75821b = i2;
        this.f75822c = i3;
    }

    /* renamed from: a */
    public AudioAttributes m843a() {
        if (this.f75823d == null) {
            this.f75823d = new AudioAttributes.Builder().setContentType(this.f75820a).setFlags(this.f75821b).setUsage(this.f75822c).build();
        }
        return this.f75823d;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C27113c.class != obj.getClass()) {
            return false;
        }
        C27113c c27113c = (C27113c) obj;
        if (this.f75820a != c27113c.f75820a || this.f75821b != c27113c.f75821b || this.f75822c != c27113c.f75822c) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((527 + this.f75820a) * 31) + this.f75821b) * 31) + this.f75822c;
    }
}
