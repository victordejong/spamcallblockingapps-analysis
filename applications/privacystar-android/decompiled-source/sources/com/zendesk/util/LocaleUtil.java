package com.zendesk.util;

import android.os.Build;
import com.zendesk.logger.Logger;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;
import org.apache.commons.cli.HelpFormatter;
/* loaded from: classes2-dex2jar.jar:com/zendesk/util/LocaleUtil.class */
public class LocaleUtil {
    private static final String LOG_TAG = "LocaleUtil";
    private static final List<String> NEW_ISO_CODES = Arrays.asList("he", "yi", "id");

    private LocaleUtil() {
    }

    private static Locale createIso639Alpha3LocaleAndroid(String str, String str2) {
        try {
            if (Build.VERSION.SDK_INT >= 14) {
                Constructor declaredConstructor = Locale.class.getDeclaredConstructor(Boolean.TYPE, String.class, String.class);
                declaredConstructor.setAccessible(true);
                return (Locale) declaredConstructor.newInstance(true, str, str2);
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
        } catch (Exception e) {
            Logger.m296e(LOG_TAG, "Unable to create ISO-6390-Alpha3 per reflection", e, new Object[0]);
            return null;
        }
    }

    private static Locale createIso639Alpha3LocaleJdk(String str, String str2) {
        try {
            Method declaredMethod = Locale.class.getDeclaredMethod("createConstant", String.class, String.class);
            declaredMethod.setAccessible(true);
            return (Locale) declaredMethod.invoke(null, str, str2);
        } catch (Exception e) {
            Logger.m296e(LOG_TAG, "Unable to create ISO-6390-Alpha3 per reflection", e, new Object[0]);
            return null;
        }
    }

    public static Locale forLanguageTag(String str) {
        Logger.m298d(LOG_TAG, "Assuming Locale.getDefault()", new Object[0]);
        Locale locale = Locale.getDefault();
        Locale locale2 = locale;
        if (StringUtils.hasLength(str)) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, HelpFormatter.DEFAULT_OPT_PREFIX);
            int countTokens = stringTokenizer.countTokens();
            int i = 2;
            if (countTokens == 1 || countTokens == 2) {
                if (countTokens != 1) {
                    i = 5;
                }
                if (i != str.length()) {
                    Logger.m298d(LOG_TAG, "number of tokens is correct but the length of the locale string does not match the expected length", new Object[0]);
                    locale2 = locale;
                } else {
                    String nextToken = stringTokenizer.nextToken();
                    String upperCase = (stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : "").toUpperCase(Locale.US);
                    if (NEW_ISO_CODES.contains(nextToken)) {
                        Logger.m298d(LOG_TAG, "New ISO-6390-Alpha3 locale detected trying to create new locale per reflection", new Object[0]);
                        Locale createIso639Alpha3LocaleJdk = createIso639Alpha3LocaleJdk(nextToken, upperCase);
                        Locale locale3 = createIso639Alpha3LocaleJdk;
                        if (createIso639Alpha3LocaleJdk == null) {
                            locale3 = createIso639Alpha3LocaleAndroid(nextToken, upperCase);
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
                Logger.m289w(LOG_TAG, "Unexpected number of tokens, must be at least one and at most two", new Object[0]);
                locale2 = locale;
            }
        }
        return locale2;
    }

    public static String toLanguageTag(Locale locale) {
        if (locale == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(locale.getLanguage());
        if (StringUtils.hasLength(locale.getCountry())) {
            sb.append(HelpFormatter.DEFAULT_OPT_PREFIX);
            sb.append(locale.getCountry().toLowerCase(Locale.US));
        }
        return sb.toString();
    }
}
