package p010g.p026l.p030d;

import android.os.Build;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;
import p010g.p026l.p028b.C0266a;
/* renamed from: g.l.d.d */
/* loaded from: classes2-dex2jar.jar:g/l/d/d.class */
public class C0284d {

    /* renamed from: a */
    private static final String f840a = "d";

    /* renamed from: b */
    private static final List<String> f841b = Arrays.asList("he", "yi", "id");

    /* renamed from: a */
    private static Locale m486a(String str, String str2) {
        if (Build.VERSION.SDK_INT >= 14) {
            Constructor declaredConstructor = Locale.class.getDeclaredConstructor(Boolean.TYPE, String.class, String.class);
            declaredConstructor.setAccessible(true);
            return (Locale) declaredConstructor.newInstance(Boolean.TRUE, str, str2);
        }
        Constructor declaredConstructor2 = Locale.class.getDeclaredConstructor(new Class[0]);
        declaredConstructor2.setAccessible(true);
        Locale locale = (Locale) declaredConstructor2.newInstance(new Object[0]);
        Class<?> cls = locale.getClass();
        Field declaredField = cls.getDeclaredField("languageCode");
        declaredField.setAccessible(true);
        declaredField.set(locale, str);
        Field declaredField2 = cls.getDeclaredField("countryCode");
        declaredField2.setAccessible(true);
        declaredField2.set(locale, str2);
        return locale;
    }

    /* renamed from: b */
    private static Locale m485b(String str, String str2) {
        Method declaredMethod = Locale.class.getDeclaredMethod("createConstant", String.class, String.class);
        declaredMethod.setAccessible(true);
        return (Locale) declaredMethod.invoke(null, str, str2);
    }

    /* renamed from: c */
    public static Locale m484c(String str) {
        String str2 = f840a;
        C0266a.m517b(str2, "Assuming Locale.getDefault()", new Object[0]);
        Locale locale = Locale.getDefault();
        Locale locale2 = locale;
        if (C0286f.m479b(str)) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, "-");
            int countTokens = stringTokenizer.countTokens();
            int i = 2;
            if (countTokens == 1 || countTokens == 2) {
                if (countTokens != 1) {
                    i = 5;
                }
                if (i != str.length()) {
                    C0266a.m517b(str2, "number of tokens is correct but the length of the locale string does not match the expected length", new Object[0]);
                    locale2 = locale;
                } else {
                    String nextToken = stringTokenizer.nextToken();
                    String upperCase = (stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : "").toUpperCase(Locale.US);
                    if (f841b.contains(nextToken)) {
                        C0266a.m517b(str2, "New ISO-6390-Alpha3 locale detected trying to create new locale per reflection", new Object[0]);
                        Locale b = m485b(nextToken, upperCase);
                        Locale locale3 = b;
                        if (b == null) {
                            locale3 = m486a(nextToken, upperCase);
                        }
                        locale2 = locale3;
                        if (locale3 == null) {
                            locale2 = new Locale(nextToken, upperCase);
                        }
                    } else {
                        locale2 = new Locale(nextToken, upperCase);
                    }
                }
            } else {
                C0266a.m508k(str2, "Unexpected number of tokens, must be at least one and at most two", new Object[0]);
                locale2 = locale;
            }
        }
        return locale2;
    }

    /* renamed from: d */
    public static String m483d(Locale locale) {
        if (locale == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(locale.getLanguage());
        if (C0286f.m479b(locale.getCountry())) {
            sb.append("-");
            sb.append(locale.getCountry().toLowerCase(Locale.US));
        }
        return sb.toString();
    }
}
