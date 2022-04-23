package p081h.p203i.p384e.p386w;

import java.io.ObjectStreamException;
import java.math.BigDecimal;
/* renamed from: h.i.e.w.f */
/* loaded from: classes2-dex2jar.jar:h/i/e/w/f.class */
public final class C10145f extends Number {

    /* renamed from: a */
    public final String f22858a;

    public C10145f(String str) {
        this.f22858a = str;
    }

    private Object writeReplace() throws ObjectStreamException {
        return new BigDecimal(this.f22858a);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return Double.parseDouble(this.f22858a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10145f)) {
            return false;
        }
        String str = this.f22858a;
        String str2 = ((C10145f) obj).f22858a;
        boolean z = true;
        if (str != str2) {
            z = str.equals(str2);
        }
        return z;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return Float.parseFloat(this.f22858a);
    }

    public int hashCode() {
        return this.f22858a.hashCode();
    }

    @Override // java.lang.Number
    public int intValue() {
        try {
            return Integer.parseInt(this.f22858a);
        } catch (NumberFormatException e) {
            try {
                return (int) Long.parseLong(this.f22858a);
            } catch (NumberFormatException e2) {
                return new BigDecimal(this.f22858a).intValue();
            }
        }
    }

    @Override // java.lang.Number
    public long longValue() {
        try {
            return Long.parseLong(this.f22858a);
        } catch (NumberFormatException e) {
            return new BigDecimal(this.f22858a).longValue();
        }
    }

    public String toString() {
        return this.f22858a;
    }
}
