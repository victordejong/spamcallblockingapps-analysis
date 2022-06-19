package androidx.core.p037os;

import java.util.HashSet;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.os.d */
/* loaded from: classes-dex2jar.jar:androidx/core/os/d.class */
public final class C0860d implements AbstractC0861e {

    /* renamed from: c */
    private static final Locale[] f3624c = new Locale[0];

    /* renamed from: d */
    private static final Locale f3625d = new Locale("en", "XA");

    /* renamed from: e */
    private static final Locale f3626e = new Locale("ar", "XB");

    /* renamed from: f */
    private static final Locale f3627f = C0859c.m44295a("en-Latn");

    /* renamed from: a */
    private final Locale[] f3628a;

    /* renamed from: b */
    private final String f3629b;

    public C0860d(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f3628a = f3624c;
            this.f3629b = "";
            return;
        }
        Locale[] localeArr2 = new Locale[localeArr.length];
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < localeArr.length; i++) {
            Locale locale = localeArr[i];
            if (locale == null) {
                throw new NullPointerException("list[" + i + "] is null");
            } else if (hashSet.contains(locale)) {
                throw new IllegalArgumentException("list[" + i + "] is a repetition");
            } else {
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
            }
        }
        this.f3628a = localeArr2;
        this.f3629b = sb.toString();
    }

    @Override // androidx.core.p037os.AbstractC0861e
    /* renamed from: a */
    public final Object mo44293a() {
        return null;
    }

    @Override // androidx.core.p037os.AbstractC0861e
    /* renamed from: a */
    public final Locale mo44292a(int i) {
        if (i >= 0) {
            Locale[] localeArr = this.f3628a;
            if (i >= localeArr.length) {
                return null;
            }
            return localeArr[i];
        }
        return null;
    }

    @Override // androidx.core.p037os.AbstractC0861e
    /* renamed from: b */
    public final int mo44291b() {
        return this.f3628a.length;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0860d)) {
            return false;
        }
        Locale[] localeArr = ((C0860d) obj).f3628a;
        if (this.f3628a.length != localeArr.length) {
            return false;
        }
        int i = 0;
        while (true) {
            Locale[] localeArr2 = this.f3628a;
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
            Locale[] localeArr = this.f3628a;
            if (i2 < localeArr.length) {
                i = (i * 31) + localeArr[i2].hashCode();
                i2++;
            } else {
                return i;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        int i = 0;
        while (true) {
            Locale[] localeArr = this.f3628a;
            if (i >= localeArr.length) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(localeArr[i]);
            if (i < this.f3628a.length - 1) {
                sb.append(',');
            }
            i++;
        }
    }
}
