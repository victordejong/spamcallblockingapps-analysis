package p459j.p460a.p474c0.p475c;

import android.telephony.SmsMessage;
import p459j.p460a.p474c0.p488f.C11828f;
/* renamed from: j.a.c0.c.r */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/r.class */
public class C11557r {

    /* renamed from: a */
    public boolean f25826a;

    /* renamed from: b */
    public int f25827b;

    /* renamed from: c */
    public int f25828c = Integer.MAX_VALUE;

    /* renamed from: a */
    public int m9174a() {
        return this.f25828c;
    }

    /* renamed from: a */
    public void m9173a(int i, String str) {
        boolean z = false;
        int[] calculateLength = SmsMessage.calculateLength(str, false);
        this.f25827b = calculateLength[0];
        this.f25828c = calculateLength[2];
        C11828f a = C11828f.m8193a(i);
        if (a.m8183j() || a.m8179n()) {
            int p = a.m8177p();
            boolean z2 = false;
            if (p > 0) {
                z2 = false;
                if (this.f25827b > p) {
                    z2 = true;
                }
            }
            this.f25826a = z2;
        } else {
            if (this.f25827b > 1) {
                z = true;
            }
            this.f25826a = z;
        }
        int o = a.m8178o();
        if (o > 0) {
            int i2 = calculateLength[1];
            int i3 = o;
            if (this.f25828c + i2 < 140) {
                i3 = o / 2;
            }
            if (i2 > i3) {
                this.f25826a = true;
            }
        }
    }

    /* renamed from: b */
    public boolean m9172b() {
        return this.f25826a;
    }

    /* renamed from: c */
    public int m9171c() {
        return this.f25827b;
    }
}
