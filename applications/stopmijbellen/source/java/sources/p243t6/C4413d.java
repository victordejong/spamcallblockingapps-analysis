package p243t6;

import java.math.BigDecimal;
/* renamed from: t6.d */
/* loaded from: classes-dex2jar.jar:t6/d.class */
public final class C4413d extends Number {

    /* renamed from: a */
    public final String f13745a;

    public C4413d(String str) {
        this.f13745a = str;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return Double.parseDouble(this.f13745a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4413d)) {
            return false;
        }
        String str = this.f13745a;
        String str2 = ((C4413d) obj).f13745a;
        boolean z = true;
        if (str != str2) {
            z = str.equals(str2);
        }
        return z;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return Float.parseFloat(this.f13745a);
    }

    public int hashCode() {
        return this.f13745a.hashCode();
    }

    @Override // java.lang.Number
    public int intValue() {
        try {
            return Integer.parseInt(this.f13745a);
        } catch (NumberFormatException e) {
            try {
                return (int) Long.parseLong(this.f13745a);
            } catch (NumberFormatException e2) {
                return new BigDecimal(this.f13745a).intValue();
            }
        }
    }

    @Override // java.lang.Number
    public long longValue() {
        try {
            return Long.parseLong(this.f13745a);
        } catch (NumberFormatException e) {
            return new BigDecimal(this.f13745a).longValue();
        }
    }

    public String toString() {
        return this.f13745a;
    }
}
