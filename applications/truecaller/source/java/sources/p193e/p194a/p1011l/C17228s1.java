package p193e.p194a.p1011l;

import com.truecaller.premium.data.PremiumType;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.s1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/s1.class */
public final class C17228s1 {

    /* renamed from: a */
    public final PremiumType f48350a;

    /* renamed from: b */
    public final int f48351b;

    /* renamed from: c */
    public final int f48352c;

    /* renamed from: d */
    public final int f48353d;

    /* renamed from: e */
    public final int f48354e;

    /* renamed from: f */
    public final int f48355f;

    public C17228s1(PremiumType premiumType, int i, int i2, int i3, int i4, int i5) {
        l.e(premiumType, "type");
        this.f48350a = premiumType;
        this.f48351b = i;
        this.f48352c = i2;
        this.f48353d = i3;
        this.f48354e = i4;
        this.f48355f = i5;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17228s1)) {
                return false;
            }
            C17228s1 c17228s1 = (C17228s1) obj;
            return l.a(this.f48350a, c17228s1.f48350a) && this.f48351b == c17228s1.f48351b && this.f48352c == c17228s1.f48352c && this.f48353d == c17228s1.f48353d && this.f48354e == c17228s1.f48354e && this.f48355f == c17228s1.f48355f;
        }
        return true;
    }

    public int hashCode() {
        PremiumType premiumType = this.f48350a;
        return ((((((((((premiumType != null ? premiumType.hashCode() : 0) * 31) + this.f48351b) * 31) + this.f48352c) * 31) + this.f48353d) * 31) + this.f48354e) * 31) + this.f48355f;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PremiumPage(type=");
        m8728C.append(this.f48350a);
        m8728C.append(", titleRes=");
        m8728C.append(this.f48351b);
        m8728C.append(", iconNormal=");
        m8728C.append(this.f48352c);
        m8728C.append(", iconSelected=");
        m8728C.append(this.f48353d);
        m8728C.append(", normalColorAttr=");
        m8728C.append(this.f48354e);
        m8728C.append(", selectedColorAttr=");
        return C22128a.m8697J2(m8728C, this.f48355f, ")");
    }
}
