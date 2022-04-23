package p081h.p203i.p204a.p224e.p259j.p271l;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.util.Locale;
import p081h.p203i.p204a.p224e.p235d.p240n.C6999k;
import p081h.p203i.p204a.p224e.p235d.p249s.C7083o;
/* renamed from: h.i.a.e.j.l.m6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/m6.class */
public final class C8246m6 {

    /* renamed from: a */
    public static final C6999k f19085a = new C6999k("CommonUtils", "");

    /* renamed from: a */
    public static String m18280a(@NonNull Context context) {
        String str;
        try {
            str = String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException e) {
            C6999k kVar = f19085a;
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 48);
            sb.append("Exception thrown when trying to get app version ");
            sb.append(valueOf);
            kVar.m21337b("CommonUtils", sb.toString());
            str = "";
        }
        return str;
    }

    @NonNull
    /* renamed from: a */
    public static String m18279a(@NonNull Locale locale) {
        if (C7083o.m21124h()) {
            return locale.toLanguageTag();
        }
        StringBuilder sb = new StringBuilder(locale.getLanguage());
        if (!TextUtils.isEmpty(locale.getCountry())) {
            sb.append("-");
            sb.append(locale.getCountry());
        }
        if (!TextUtils.isEmpty(locale.getVariant())) {
            sb.append("-");
            sb.append(locale.getVariant());
        }
        return sb.toString();
    }
}
