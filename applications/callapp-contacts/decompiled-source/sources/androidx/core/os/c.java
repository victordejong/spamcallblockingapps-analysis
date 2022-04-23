package androidx.core.os;

import android.os.Build;
import android.os.LocaleList;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/core/os/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final c f1940a = a(new Locale[0]);

    /* renamed from: b  reason: collision with root package name */
    private e f1941b;

    private c(e eVar) {
        this.f1941b = eVar;
    }

    public static c a(LocaleList localeList) {
        return new c(new f(localeList));
    }

    public static c a(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? a(new LocaleList(localeArr)) : new c(new d(localeArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Locale a(String str) {
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

    public final int a() {
        return this.f1941b.b();
    }

    public final Locale a(int i) {
        return this.f1941b.a(i);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof c) && this.f1941b.equals(((c) obj).f1941b);
    }

    public final int hashCode() {
        return this.f1941b.hashCode();
    }

    public final String toString() {
        return this.f1941b.toString();
    }
}
