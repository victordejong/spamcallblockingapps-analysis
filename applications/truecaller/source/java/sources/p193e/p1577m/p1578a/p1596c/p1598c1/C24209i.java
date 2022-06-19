package p193e.p1577m.p1578a.p1596c.p1598c1;

import android.media.AudioAttributes;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.c1.i */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/i.class */
public final class C24209i {

    /* renamed from: f */
    public static final C24209i f67011f = new C24209i(0, 0, 1, 1, null);

    /* renamed from: a */
    public final int f67012a;

    /* renamed from: b */
    public final int f67013b;

    /* renamed from: c */
    public final int f67014c;

    /* renamed from: d */
    public final int f67015d;

    /* renamed from: e */
    public AudioAttributes f67016e;

    public C24209i(int i, int i2, int i3, int i4, C24210a c24210a) {
        this.f67012a = i;
        this.f67013b = i2;
        this.f67014c = i3;
        this.f67015d = i4;
    }

    /* renamed from: a */
    public AudioAttributes m5452a() {
        if (this.f67016e == null) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(this.f67012a).setFlags(this.f67013b).setUsage(this.f67014c);
            if (C24773d0.f69427a >= 29) {
                usage.setAllowedCapturePolicy(this.f67015d);
            }
            this.f67016e = usage.build();
        }
        return this.f67016e;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C24209i.class != obj.getClass()) {
            return false;
        }
        C24209i c24209i = (C24209i) obj;
        if (this.f67012a != c24209i.f67012a || this.f67013b != c24209i.f67013b || this.f67014c != c24209i.f67014c || this.f67015d != c24209i.f67015d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((527 + this.f67012a) * 31) + this.f67013b) * 31) + this.f67014c) * 31) + this.f67015d;
    }
}
