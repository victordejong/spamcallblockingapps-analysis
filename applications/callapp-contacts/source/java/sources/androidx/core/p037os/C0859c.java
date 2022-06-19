package androidx.core.p037os;

import android.os.Build;
import android.os.LocaleList;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.Locale;
/* renamed from: androidx.core.os.c */
/* loaded from: classes-dex2jar.jar:androidx/core/os/c.class */
public final class C0859c {

    /* renamed from: a */
    private static final C0859c f3622a = m44294a(new Locale[0]);

    /* renamed from: b */
    private AbstractC0861e f3623b;

    private C0859c(AbstractC0861e abstractC0861e) {
        this.f3623b = abstractC0861e;
    }

    /* renamed from: a */
    public static C0859c m44296a(LocaleList localeList) {
        return new C0859c(new C0862f(localeList));
    }

    /* renamed from: a */
    public static C0859c m44294a(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? m44296a(new LocaleList(localeArr)) : new C0859c(new C0860d(localeArr));
    }

    /* renamed from: a */
    public static Locale m44295a(String str) {
        if (str.contains(VerificationLanguage.REGION_PREFIX)) {
            String[] split = str.split(VerificationLanguage.REGION_PREFIX, -1);
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

    /* renamed from: a */
    public final int m44298a() {
        return this.f3623b.mo44291b();
    }

    /* renamed from: a */
    public final Locale m44297a(int i) {
        return this.f3623b.mo44292a(i);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C0859c) && this.f3623b.equals(((C0859c) obj).f3623b);
    }

    public final int hashCode() {
        return this.f3623b.hashCode();
    }

    public final String toString() {
        return this.f3623b.toString();
    }
}
