package com.tenor.android.core.constant;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import com.tenor.android.core.util.AbstractListUtils;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Collection;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/constant/StringConstant.class */
public abstract class StringConstant {

    /* renamed from: AT */
    public static final String f9511AT = "@";
    public static final String COLON = ":";
    public static final String COMMA = ",";
    public static final String DASH = "-";
    public static final String DOT = ".";
    public static final String EMPTY = "";
    public static final String HASH = "#";
    public static final String NEW_LINE = "\n";
    public static final String PIPE = "|";
    public static final String SLASH = "/";
    public static final String SPACE = " ";
    public static final String UNKNOWN = "UNKNOWN";
    public static final String UTF8 = "UTF-8";

    /* loaded from: classes3-dex2jar.jar:com/tenor/android/core/constant/StringConstant$IJoinable.class */
    public interface IJoinable<T> {
        String getJoinableString(T t);
    }

    public static boolean copy(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(str, str2));
        return true;
    }

    public static String decode(String str) {
        return decode(str, UTF8);
    }

    public static String decode(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            if (TextUtils.isEmpty(str2)) {
                str2 = UTF8;
            }
            str = URLDecoder.decode(str, str2);
        } catch (Throwable th) {
        }
        return str;
    }

    public static String encode(String str) {
        return encode(str, UTF8);
    }

    public static String encode(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            if (TextUtils.isEmpty(str2)) {
                str2 = UTF8;
            }
            str = URLEncoder.encode(str, str2);
        } catch (Throwable th) {
        }
        return str;
    }

    public static <T> T getOrDef(T t, T t2) {
        if (t == null) {
            t = t2;
        }
        return t;
    }

    public static CharSequence getOrEmpty(CharSequence charSequence) {
        return (CharSequence) getOrDef(charSequence, "");
    }

    public static String getOrEmpty(String str) {
        return (String) getOrDef(str, "");
    }

    public static String getString(Context context, String str, String str2) {
        PackageManager packageManager = context.getPackageManager();
        try {
            Resources resourcesForApplication = packageManager.getResourcesForApplication(str);
            int identifier = resourcesForApplication.getIdentifier(str + ":string/" + str2, null, null);
            return identifier != 0 ? packageManager.getText(str, identifier, null).toString() : "";
        } catch (Exception e) {
            return "";
        }
    }

    public static String join(Collection<String> collection, String str) {
        return join(collection, str, new 1());
    }

    public static <T> String join(Collection<T> collection, String str, IJoinable<T> iJoinable) {
        if (AbstractListUtils.isEmpty(collection) || iJoinable == null) {
            return "";
        }
        if (str == null) {
            join(collection, "", iJoinable);
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (T t : collection) {
            String joinableString = iJoinable.getJoinableString(t);
            if (z) {
                z = false;
            } else {
                sb.append(str);
            }
            sb.append(joinableString);
        }
        return sb.toString();
    }

    public static int parse(String str, int i) {
        if (!TextUtils.isEmpty(str) && TextUtils.isDigitsOnly(str)) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException e) {
            }
        }
        return i;
    }
}
