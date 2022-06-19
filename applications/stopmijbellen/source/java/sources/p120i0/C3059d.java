package p120i0;

import android.support.p012v4.media.C0082b;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;
/* renamed from: i0.d */
/* loaded from: classes-dex2jar.jar:i0/d.class */
public final class C3059d implements AbstractC3060e {

    /* renamed from: b */
    public static final Locale[] f10393b = new Locale[0];

    /* renamed from: a */
    public final Locale[] f10394a;

    static {
        new Locale("en", "XA");
        new Locale("ar", "XB");
        int i = C3058c.f10391b;
        String[] split = "en-Latn".split("-", -1);
        if (split.length > 2) {
            new Locale(split[0], split[1], split[2]);
        } else if (split.length > 1) {
            new Locale(split[0], split[1]);
        } else if (split.length != 1) {
            throw new IllegalArgumentException("Can not parse language tag: [en-Latn]");
        } else {
            new Locale(split[0]);
        }
    }

    public C3059d(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f10394a = f10393b;
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (int i = 0; i < localeArr.length; i++) {
            Locale locale = localeArr[i];
            if (locale == null) {
                throw new NullPointerException("list[" + i + "] is null");
            }
            if (!hashSet.contains(locale)) {
                Locale locale2 = (Locale) locale.clone();
                arrayList.add(locale2);
                locale2.getLanguage();
                String country = locale2.getCountry();
                if (country != null && !country.isEmpty()) {
                    locale2.getCountry();
                }
                hashSet.add(locale2);
            }
        }
        this.f10394a = (Locale[]) arrayList.toArray(new Locale[arrayList.size()]);
    }

    @Override // p120i0.AbstractC3060e
    /* renamed from: a */
    public Object mo2663a() {
        return null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C3059d)) {
            return false;
        }
        Locale[] localeArr = ((C3059d) obj).f10394a;
        if (this.f10394a.length != localeArr.length) {
            return false;
        }
        int i = 0;
        while (true) {
            Locale[] localeArr2 = this.f10394a;
            if (i >= localeArr2.length) {
                return true;
            }
            if (!localeArr2[i].equals(localeArr[i])) {
                return false;
            }
            i++;
        }
    }

    @Override // p120i0.AbstractC3060e
    public Locale get(int i) {
        Locale locale;
        if (i >= 0) {
            Locale[] localeArr = this.f10394a;
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
            Locale[] localeArr = this.f10394a;
            if (i2 < localeArr.length) {
                i = (i * 31) + localeArr[i2].hashCode();
                i2++;
            } else {
                return i;
            }
        }
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("[");
        int i = 0;
        while (true) {
            Locale[] localeArr = this.f10394a;
            if (i >= localeArr.length) {
                m8752j.append("]");
                return m8752j.toString();
            }
            m8752j.append(localeArr[i]);
            if (i < this.f10394a.length - 1) {
                m8752j.append(',');
            }
            i++;
        }
    }
}
