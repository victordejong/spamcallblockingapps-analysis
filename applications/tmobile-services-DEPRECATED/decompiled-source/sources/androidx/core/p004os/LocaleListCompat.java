package androidx.core.p004os;

import android.os.Build;
import android.os.LocaleList;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.Locale;
import org.apache.commons.cli.HelpFormatter;
/* renamed from: androidx.core.os.LocaleListCompat */
/* loaded from: classes-dex2jar.jar:androidx/core/os/LocaleListCompat.class */
public final class LocaleListCompat {

    /* renamed from: a */
    private LocaleListInterface f3090a;

    static {
        m19443a(new Locale[0]);
    }

    private LocaleListCompat(LocaleListInterface localeListInterface) {
        this.f3090a = localeListInterface;
    }

    @NonNull
    /* renamed from: a */
    public static LocaleListCompat m19443a(@NonNull Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? m19441c(new LocaleList(localeArr)) : new LocaleListCompat(new LocaleListCompatWrapper(localeArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static Locale m19442b(String str) {
        if (str.contains(HelpFormatter.DEFAULT_OPT_PREFIX)) {
            String[] split = str.split(HelpFormatter.DEFAULT_OPT_PREFIX, -1);
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

    @NonNull
    @RequiresApi
    /* renamed from: c */
    public static LocaleListCompat m19441c(@NonNull LocaleList localeList) {
        return new LocaleListCompat(new LocaleListPlatformWrapper(localeList));
    }

    public boolean equals(Object obj) {
        return (obj instanceof LocaleListCompat) && this.f3090a.equals(((LocaleListCompat) obj).f3090a);
    }

    public int hashCode() {
        return this.f3090a.hashCode();
    }

    public String toString() {
        return this.f3090a.toString();
    }
}
