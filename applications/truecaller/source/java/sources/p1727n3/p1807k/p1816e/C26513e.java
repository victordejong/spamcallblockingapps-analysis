package p1727n3.p1807k.p1816e;

import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.k.e.e */
/* loaded from: classes-dex2jar.jar:n3/k/e/e.class */
public final class C26513e implements AbstractC26514f {

    /* renamed from: b */
    public static final Locale[] f74302b = new Locale[0];

    /* renamed from: a */
    public final Locale[] f74303a;

    static {
        new Locale("en", "XA");
        new Locale("ar", "XB");
        int i = C26512d.f74300b;
        String[] split = "en-Latn".split(StringConstant.DASH, -1);
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

    public C26513e(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f74303a = f74302b;
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        for (int i = 0; i < localeArr.length; i++) {
            Locale locale = localeArr[i];
            if (locale == null) {
                throw new NullPointerException(C22128a.m8599l2("list[", i, "] is null"));
            }
            if (!hashSet.contains(locale)) {
                Locale locale2 = (Locale) locale.clone();
                arrayList.add(locale2);
                locale2.getLanguage();
                String country = locale2.getCountry();
                if (country != null && !country.isEmpty()) {
                    locale2.getCountry();
                }
                int length = localeArr.length;
                hashSet.add(locale2);
            }
        }
        this.f74303a = (Locale[]) arrayList.toArray(new Locale[arrayList.size()]);
    }

    @Override // p1727n3.p1807k.p1816e.AbstractC26514f
    /* renamed from: a */
    public Object mo1716a() {
        return null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C26513e)) {
            return false;
        }
        Locale[] localeArr = ((C26513e) obj).f74303a;
        if (this.f74303a.length != localeArr.length) {
            return false;
        }
        int i = 0;
        while (true) {
            Locale[] localeArr2 = this.f74303a;
            if (i >= localeArr2.length) {
                return true;
            }
            if (!localeArr2[i].equals(localeArr[i])) {
                return false;
            }
            i++;
        }
    }

    @Override // p1727n3.p1807k.p1816e.AbstractC26514f
    public Locale get(int i) {
        Locale locale;
        if (i >= 0) {
            Locale[] localeArr = this.f74303a;
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
            Locale[] localeArr = this.f74303a;
            if (i2 < localeArr.length) {
                i = (i * 31) + localeArr[i2].hashCode();
                i2++;
            } else {
                return i;
            }
        }
    }

    @Override // p1727n3.p1807k.p1816e.AbstractC26514f
    public int size() {
        return this.f74303a.length;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("[");
        int i = 0;
        while (true) {
            Locale[] localeArr = this.f74303a;
            if (i >= localeArr.length) {
                m8728C.append("]");
                return m8728C.toString();
            }
            m8728C.append(localeArr[i]);
            if (i < this.f74303a.length - 1) {
                m8728C.append(',');
            }
            i++;
        }
    }
}
