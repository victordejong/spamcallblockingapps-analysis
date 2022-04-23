package androidx.core.os;

import java.util.HashSet;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/core/os/d.class */
final class d implements e {

    /* renamed from: c  reason: collision with root package name */
    private static final Locale[] f1942c = new Locale[0];

    /* renamed from: d  reason: collision with root package name */
    private static final Locale f1943d = new Locale("en", "XA");
    private static final Locale e = new Locale("ar", "XB");
    private static final Locale f = c.a("en-Latn");

    /* renamed from: a  reason: collision with root package name */
    private final Locale[] f1944a;

    /* renamed from: b  reason: collision with root package name */
    private final String f1945b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f1944a = f1942c;
            this.f1945b = "";
            return;
        }
        Locale[] localeArr2 = new Locale[localeArr.length];
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < localeArr.length; i++) {
            Locale locale = localeArr[i];
            if (locale == null) {
                throw new NullPointerException("list[" + i + "] is null");
            } else if (!hashSet.contains(locale)) {
                Locale locale2 = (Locale) locale.clone();
                localeArr2[i] = locale2;
                sb.append(locale2.getLanguage());
                String country = locale2.getCountry();
                if (country != null && !country.isEmpty()) {
                    sb.append('-');
                    sb.append(locale2.getCountry());
                }
                if (i < localeArr.length - 1) {
                    sb.append(',');
                }
                hashSet.add(locale2);
            } else {
                throw new IllegalArgumentException("list[" + i + "] is a repetition");
            }
        }
        this.f1944a = localeArr2;
        this.f1945b = sb.toString();
    }

    @Override // androidx.core.os.e
    public final Object a() {
        return null;
    }

    @Override // androidx.core.os.e
    public final Locale a(int i) {
        if (i < 0) {
            return null;
        }
        Locale[] localeArr = this.f1944a;
        if (i < localeArr.length) {
            return localeArr[i];
        }
        return null;
    }

    @Override // androidx.core.os.e
    public final int b() {
        return this.f1944a.length;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        Locale[] localeArr = ((d) obj).f1944a;
        if (this.f1944a.length != localeArr.length) {
            return false;
        }
        int i = 0;
        while (true) {
            Locale[] localeArr2 = this.f1944a;
            if (i >= localeArr2.length) {
                return true;
            }
            if (!localeArr2[i].equals(localeArr[i])) {
                return false;
            }
            i++;
        }
    }

    public final int hashCode() {
        int i = 1;
        int i2 = 0;
        while (true) {
            Locale[] localeArr = this.f1944a;
            if (i2 >= localeArr.length) {
                return i;
            }
            i = (i * 31) + localeArr[i2].hashCode();
            i2++;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        int i = 0;
        while (true) {
            Locale[] localeArr = this.f1944a;
            if (i < localeArr.length) {
                sb.append(localeArr[i]);
                if (i < this.f1944a.length - 1) {
                    sb.append(',');
                }
                i++;
            } else {
                sb.append("]");
                return sb.toString();
            }
        }
    }
}
