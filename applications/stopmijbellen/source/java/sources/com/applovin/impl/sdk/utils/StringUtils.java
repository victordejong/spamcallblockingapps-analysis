package com.applovin.impl.sdk.utils;

import android.net.Uri;
import android.support.p012v4.media.C0082b;
import android.text.SpannableString;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/StringUtils.class */
public class StringUtils {

    /* renamed from: a */
    private static final char[] f5577a = "0123456789abcdef".toCharArray();

    /* renamed from: a */
    private static String m5100a(String str, Integer num) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes("UTF-8"));
            String hexString = toHexString(messageDigest.digest());
            return num.intValue() > 0 ? hexString.substring(0, Math.min(num.intValue(), hexString.length())) : hexString;
        } catch (Throwable th) {
            throw new RuntimeException(C0082b.m8755g("SHA-1 for \"", str, "\" failed."), th);
        }
    }

    public static String appendQueryParameter(String str, String str2, String str3) {
        String str4 = str;
        if (!TextUtils.isEmpty(str)) {
            if (TextUtils.isEmpty(str2)) {
                str4 = str;
            } else {
                Uri.Builder buildUpon = Uri.parse(str).buildUpon();
                buildUpon.appendQueryParameter(str2, str3);
                str4 = buildUpon.build().toString();
            }
        }
        return str4;
    }

    public static String appendQueryParameters(String str, Map<String, String> map, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String str2 = str;
        if (map != null) {
            if (map.isEmpty()) {
                str2 = str;
            } else {
                TreeMap treeMap = map;
                if (z) {
                    TreeMap treeMap2 = new TreeMap(new Comparator<String>() { // from class: com.applovin.impl.sdk.utils.StringUtils.1
                        /* renamed from: a */
                        public int compare(String str3, String str4) {
                            return str3.compareToIgnoreCase(str4);
                        }
                    });
                    treeMap2.putAll(map);
                    treeMap = treeMap2;
                }
                Uri.Builder buildUpon = Uri.parse(str).buildUpon();
                for (Map.Entry<String, String> entry : treeMap.entrySet()) {
                    buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
                }
                str2 = buildUpon.build().toString();
            }
        }
        return str2;
    }

    public static boolean containsIgnoreCase(String str, String str2) {
        return isValidString(str) && isValidString(str2) && str.toLowerCase().contains(str2.toLowerCase());
    }

    public static SpannedString createListItemDetailSpannedString(String str, int i) {
        return createSpannedString(str, i, 16);
    }

    public static SpannedString createListItemDetailSubSpannedString(String str, int i) {
        return createSpannedString(str, i, 12, 1);
    }

    public static SpannedString createSpannedString(String str, int i, int i2) {
        return createSpannedString(str, i, i2, 0);
    }

    public static SpannedString createSpannedString(String str, int i, int i2, int i3) {
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new ForegroundColorSpan(i), 0, spannableString.length(), 33);
        spannableString.setSpan(new AbsoluteSizeSpan(i2, true), 0, spannableString.length(), 33);
        spannableString.setSpan(new StyleSpan(i3), 0, spannableString.length(), 33);
        return new SpannedString(spannableString);
    }

    public static String emptyIfNull(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    public static String encodeUrlString(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return URLEncoder.encode(str, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                throw new UnsupportedOperationException(e);
            }
        }
        return "";
    }

    public static Boolean endsWith(String str, List<String> list) {
        for (String str2 : list) {
            if (str.endsWith(str2)) {
                return Boolean.TRUE;
            }
        }
        return Boolean.FALSE;
    }

    public static String getHostAndPath(String str) {
        Uri parse = Uri.parse(str);
        return parse.getHost() + parse.getPath();
    }

    public static boolean isAlphaNumeric(String str) {
        if (isValidString(str)) {
            return str.matches("^[a-zA-Z0-9]*$");
        }
        return false;
    }

    public static boolean isNumeric(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        char charAt = str.charAt(0);
        int i = (charAt == '-' || charAt == '+') ? 1 : 0;
        int length = str.length();
        int i2 = i;
        if (i == 1) {
            i2 = i;
            if (length == 1) {
                return false;
            }
        }
        while (i2 < length) {
            if (!Character.isDigit(str.charAt(i2))) {
                return false;
            }
            i2++;
        }
        return true;
    }

    public static boolean isValidString(String str) {
        return !TextUtils.isEmpty(str);
    }

    public static int parseInt(String str) {
        return parseInt(str, 0);
    }

    public static int parseInt(String str, int i) {
        if (isNumeric(str)) {
            i = Integer.parseInt(str);
        }
        return i;
    }

    public static String prefixToIndex(int i, String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int i2 = i;
        if (i > str.length()) {
            i2 = str.length();
        }
        return str.substring(0, i2);
    }

    public static String replace(String str, String str2, String str3) {
        if (str3 != null) {
            String str4 = str;
            if (str != null) {
                if (str.length() < 1) {
                    str4 = str;
                } else {
                    str4 = str;
                    if (str2 != null) {
                        if (str2.length() < 1) {
                            str4 = str;
                        } else {
                            StringBuilder sb = new StringBuilder(str);
                            int indexOf = sb.indexOf(str2);
                            while (true) {
                                int i = indexOf;
                                if (i == -1) {
                                    break;
                                }
                                sb.replace(i, str2.length() + i, str3);
                                indexOf = sb.indexOf(str2, str3.length() + i);
                            }
                            str4 = sb.toString();
                        }
                    }
                }
            }
            return str4;
        }
        throw new IllegalArgumentException("No replacement target specified");
    }

    public static String replace(String str, Map<String, String> map) {
        String str2 = str;
        if (str != null) {
            if (map != null) {
                Iterator<Map.Entry<String, String>> it2 = map.entrySet().iterator();
                while (true) {
                    str2 = str;
                    if (!it2.hasNext()) {
                        break;
                    }
                    Map.Entry<String, String> next = it2.next();
                    str = str.replace(next.getKey(), next.getValue());
                }
            } else {
                str2 = str;
            }
        }
        return str2;
    }

    public static String toDigitsOnlyVersionString(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String[] split = str.split("\\.");
        ArrayList arrayList = new ArrayList(split.length);
        for (String str2 : split) {
            if (isValidString(str2)) {
                String[] split2 = str2.split("[^0-9]+");
                if (split2.length > 0) {
                    arrayList.add(split2[0]);
                }
            }
        }
        return TextUtils.join(".", arrayList);
    }

    public static String toFullSHA1Hash(String str) {
        return m5100a(str, -1);
    }

    public static String toHexString(byte[] bArr) {
        if (bArr != null) {
            char[] cArr = new char[bArr.length * 2];
            for (int i = 0; i < bArr.length; i++) {
                int i2 = i * 2;
                char[] cArr2 = f5577a;
                cArr[i2] = cArr2[(bArr[i] & 240) >>> 4];
                cArr[i2 + 1] = cArr2[bArr[i] & 15];
            }
            return new String(cArr);
        }
        throw new IllegalArgumentException("No data specified");
    }

    public static String toHumanReadableString(String str) {
        String[] split;
        String str2;
        if (!isValidString(str)) {
            return "";
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (String str3 : str.split("_")) {
            if (isValidString(str3)) {
                if (str3.equals(FacebookAdapter.KEY_ID)) {
                    str2 = str3.toUpperCase(Locale.ENGLISH);
                } else {
                    String substring = str3.substring(0, 1);
                    Locale locale = Locale.ENGLISH;
                    sb.append(substring.toUpperCase(locale));
                    str2 = str3.substring(1).toLowerCase(locale);
                }
                sb.append(str2);
                sb.append(" ");
            }
        }
        return sb.deleteCharAt(sb.length() - 1).toString();
    }

    public static String toShortSHA1Hash(String str) {
        return m5100a(str, 16);
    }
}
