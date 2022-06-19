package androidx.core.p008os;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.os.f */
/* loaded from: classes-dex2jar.jar:androidx/core/os/f.class */
public final class C0629f implements AbstractC0630g {

    /* renamed from: a */
    private static final Locale[] f3018a = new Locale[0];

    /* renamed from: b */
    private static final Locale f3019b = new Locale("en", "XA");

    /* renamed from: c */
    private static final Locale f3020c = new Locale("ar", "XB");

    /* renamed from: d */
    private static final Locale f3021d = C0628e.m33191b("en-Latn");

    /* renamed from: e */
    private final Locale[] f3022e;

    /* renamed from: f */
    private final String f3023f;

    public C0629f(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f3022e = f3018a;
            this.f3023f = "";
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < localeArr.length; i++) {
            Locale locale = localeArr[i];
            if (locale == null) {
                throw new NullPointerException("list[" + i + "] is null");
            }
            if (!hashSet.contains(locale)) {
                Locale locale2 = (Locale) locale.clone();
                arrayList.add(locale2);
                m33188b(sb, locale2);
                if (i < localeArr.length - 1) {
                    sb.append(',');
                }
                hashSet.add(locale2);
            }
        }
        this.f3022e = (Locale[]) arrayList.toArray(new Locale[arrayList.size()]);
        this.f3023f = sb.toString();
    }

    /* renamed from: b */
    static void m33188b(StringBuilder sb, Locale locale) {
        sb.append(locale.getLanguage());
        String country = locale.getCountry();
        if (country == null || country.isEmpty()) {
            return;
        }
        sb.append('-');
        sb.append(locale.getCountry());
    }

    @Override // androidx.core.p008os.AbstractC0630g
    /* renamed from: a */
    public Object mo33187a() {
        return null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0629f)) {
            return false;
        }
        Locale[] localeArr = ((C0629f) obj).f3022e;
        if (this.f3022e.length != localeArr.length) {
            return false;
        }
        int i = 0;
        while (true) {
            Locale[] localeArr2 = this.f3022e;
            if (i >= localeArr2.length) {
                return true;
            }
            if (!localeArr2[i].equals(localeArr[i])) {
                return false;
            }
            i++;
        }
    }

    @Override // androidx.core.p008os.AbstractC0630g
    public Locale get(int i) {
        Locale locale;
        if (i >= 0) {
            Locale[] localeArr = this.f3022e;
            if (i < localeArr.length) {
                locale = localeArr[i];
                return locale;
            }
        }
        locale = null;
        return locale;
    }

    public int hashCode() {
        int i = 1;
        int i2 = 0;
        while (true) {
            Locale[] localeArr = this.f3022e;
            if (i2 < localeArr.length) {
                i = (i * 31) + localeArr[i2].hashCode();
                i2++;
            } else {
                return i;
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        int i = 0;
        while (true) {
            Locale[] localeArr = this.f3022e;
            if (i >= localeArr.length) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(localeArr[i]);
            if (i < this.f3022e.length - 1) {
                sb.append(',');
            }
            i++;
        }
    }
}
