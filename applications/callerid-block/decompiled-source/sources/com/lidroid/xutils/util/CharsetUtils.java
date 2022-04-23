package com.lidroid.xutils.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/util/CharsetUtils.class */
public class CharsetUtils {
    public static final String DEFAULT_ENCODING_CHARSET = "ISO-8859-1";
    public static final List<String> SUPPORT_CHARSET;

    static {
        ArrayList arrayList = new ArrayList();
        SUPPORT_CHARSET = arrayList;
        arrayList.add(DEFAULT_ENCODING_CHARSET);
        arrayList.add("GB2312");
        arrayList.add("GBK");
        arrayList.add("GB18030");
        arrayList.add("US-ASCII");
        arrayList.add("ASCII");
        arrayList.add("ISO-2022-KR");
        arrayList.add("ISO-8859-2");
        arrayList.add("ISO-2022-JP");
        arrayList.add("ISO-2022-JP-2");
        arrayList.add("UTF-8");
    }

    private CharsetUtils() {
    }

    public static String getEncoding(String str, int i) {
        String str2;
        Iterator<String> it = SUPPORT_CHARSET.iterator();
        while (true) {
            if (!it.hasNext()) {
                str2 = DEFAULT_ENCODING_CHARSET;
                break;
            }
            String next = it.next();
            if (isCharset(str, next, i)) {
                str2 = next;
                break;
            }
        }
        return str2;
    }

    public static boolean isCharset(String str, String str2, int i) {
        String str3 = str;
        try {
            if (str.length() > i) {
                str3 = str.substring(0, i);
            }
            return str3.equals(new String(str3.getBytes(str2), str2));
        } catch (Throwable th) {
            return false;
        }
    }

    public static String toCharset(String str, String str2, int i) {
        try {
            return new String(str.getBytes(getEncoding(str, i)), str2);
        } catch (Throwable th) {
            LogUtils.m2001w(th);
            return str;
        }
    }
}
