package com.yanzhenjie.nohttp;

import android.os.Build;
import android.text.TextUtils;
import com.zhy.http.okhttp.BuildConfig;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/UserAgent.class */
public class UserAgent {
    private static String userAgent;

    public static String instance() {
        if (TextUtils.isEmpty(userAgent)) {
            userAgent = newInstance();
        }
        return userAgent;
    }

    public static String newInstance() {
        StringBuffer stringBuffer = new StringBuffer();
        String str = Build.VERSION.RELEASE;
        if (str.length() > 0) {
            stringBuffer.append(str);
        } else {
            stringBuffer.append(BuildConfig.VERSION_NAME);
        }
        stringBuffer.append("; ");
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        if (language != null) {
            stringBuffer.append(language.toLowerCase(locale));
            String country = locale.getCountry();
            if (!TextUtils.isEmpty(country)) {
                stringBuffer.append("-");
                stringBuffer.append(country.toLowerCase(locale));
            }
        } else {
            stringBuffer.append("en");
        }
        if ("REL".equals(Build.VERSION.CODENAME)) {
            String str2 = Build.MODEL;
            if (str2.length() > 0) {
                stringBuffer.append("; ");
                stringBuffer.append(str2);
            }
        }
        if (Build.ID.length() > 0) {
            stringBuffer.append(" Build/");
            stringBuffer.append(Build.ID);
        }
        return String.format("Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko) Version/5.0 %sSafari/533.1", stringBuffer, "Mobile ");
    }
}
