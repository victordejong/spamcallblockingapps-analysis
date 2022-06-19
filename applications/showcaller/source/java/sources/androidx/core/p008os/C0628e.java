package androidx.core.p008os;

import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;
/* renamed from: androidx.core.os.e */
/* loaded from: classes-dex2jar.jar:androidx/core/os/e.class */
public final class C0628e {

    /* renamed from: a */
    private static final C0628e f3016a = m33192a(new Locale[0]);

    /* renamed from: b */
    private AbstractC0630g f3017b;

    private C0628e(AbstractC0630g abstractC0630g) {
        this.f3017b = abstractC0630g;
    }

    /* renamed from: a */
    public static C0628e m33192a(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? m33189d(new LocaleList(localeArr)) : new C0628e(new C0629f(localeArr));
    }

    /* renamed from: b */
    public static Locale m33191b(String str) {
        if (str.contains("-")) {
            String[] split = str.split("-", -1);
            if (split.length > 2) {
                return new Locale(split[0], split[1], split[2]);
            }
            if (split.length > 1) {
                return new Locale(split[0], split[1]);
            }
            if (split.length == 1) {
                return new Locale(split[0]);
            }
        } else if (!str.contains("_")) {
            return new Locale(str);
        } else {
            String[] split2 = str.split("_", -1);
            if (split2.length > 2) {
                return new Locale(split2[0], split2[1], split2[2]);
            }
            if (split2.length > 1) {
                return new Locale(split2[0], split2[1]);
            }
            if (split2.length == 1) {
                return new Locale(split2[0]);
            }
        }
        throw new IllegalArgumentException("Can not parse language tag: [" + str + "]");
    }

    /* renamed from: d */
    public static C0628e m33189d(LocaleList localeList) {
        return new C0628e(new C0631h(localeList));
    }

    /* renamed from: c */
    public Locale m33190c(int i) {
        return this.f3017b.get(i);
    }

    public boolean equals(Object obj) {
        return (obj instanceof C0628e) && this.f3017b.equals(((C0628e) obj).f3017b);
    }

    public int hashCode() {
        return this.f3017b.hashCode();
    }

    public String toString() {
        return this.f3017b.toString();
    }
}
