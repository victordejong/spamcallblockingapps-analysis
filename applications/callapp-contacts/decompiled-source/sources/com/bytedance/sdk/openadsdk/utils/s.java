package com.bytedance.sdk.openadsdk.utils;

import android.content.Context;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/s.class */
public class s {

    /* renamed from: c  reason: collision with root package name */
    private static volatile s f10311c;

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f10312a;

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f10313b = false;

    /* renamed from: d  reason: collision with root package name */
    private Context f10314d;

    private s(Context context) {
        if (context != null && this.f10314d == null) {
            this.f10314d = context.getApplicationContext();
            a();
        }
        this.f10314d = context;
    }

    static s a(Context context) {
        if (f10311c == null) {
            synchronized (s.class) {
                try {
                    if (f10311c == null) {
                        f10311c = new s(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f10311c;
    }

    public static String a(Context context, String str) {
        String str2 = str;
        if (str != null) {
            str2 = str;
            str2 = str;
            try {
                if (str.startsWith("http")) {
                    str2 = str;
                    if (str.contains("?")) {
                        String str3 = str.split("\\?")[0];
                        str2 = str3;
                        if (str3.endsWith("/")) {
                            str2 = str3;
                            str2 = str3.substring(0, str3.length() - 1);
                        }
                    }
                }
            } catch (Throwable th) {
            }
        }
        return a(context).a(str2);
    }

    private void a() {
        if (this.f10314d != null && !this.f10313b) {
            synchronized (this) {
                if (!this.f10313b) {
                    List<String> list = (List) AccessController.doPrivileged(new PrivilegedAction<List<String>>() { // from class: com.bytedance.sdk.openadsdk.utils.s.1
                        /* renamed from: a */
                        public List<String> run() {
                            BufferedReader bufferedReader;
                            InputStream inputStream = null;
                            try {
                                ArrayList arrayList = new ArrayList();
                                inputStream = s.this.f10314d.getAssets().open("tt_mime_type.pro");
                                try {
                                    bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                                    while (true) {
                                        try {
                                            String readLine = bufferedReader.readLine();
                                            if (readLine == null) {
                                                break;
                                            } else if (!TextUtils.isEmpty(readLine)) {
                                                arrayList.add(readLine);
                                            }
                                        } catch (Throwable th) {
                                            try {
                                                List<String> emptyList = Collections.emptyList();
                                                if (inputStream != null) {
                                                    try {
                                                        inputStream.close();
                                                    } catch (Throwable th2) {
                                                    }
                                                }
                                                if (bufferedReader != null) {
                                                    try {
                                                        bufferedReader.close();
                                                    } catch (Throwable th3) {
                                                    }
                                                }
                                                return emptyList;
                                            } catch (Throwable th4) {
                                                if (inputStream != null) {
                                                    try {
                                                        inputStream.close();
                                                    } catch (Throwable th5) {
                                                    }
                                                }
                                                if (bufferedReader != null) {
                                                    try {
                                                        bufferedReader.close();
                                                    } catch (Throwable th6) {
                                                    }
                                                }
                                                throw th4;
                                            }
                                        }
                                    }
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (Throwable th7) {
                                        }
                                    }
                                    try {
                                        bufferedReader.close();
                                    } catch (Throwable th8) {
                                    }
                                    return arrayList;
                                } catch (Throwable th9) {
                                    bufferedReader = null;
                                }
                            } catch (Throwable th10) {
                                bufferedReader = null;
                            }
                        }
                    });
                    this.f10312a = new HashMap(list.size());
                    String str = "";
                    for (String str2 : list) {
                        String str3 = str + str2;
                        if (str3.endsWith("\\")) {
                            str = str3.substring(0, str3.length() - 1);
                        } else {
                            f(str3);
                            str = "";
                        }
                    }
                    if (!str.isEmpty()) {
                        f(str);
                    }
                    this.f10313b = true;
                }
            }
        }
    }

    private void a(String str, String str2) {
        if (str != null && !str.isEmpty() && str2 != null && !str2.isEmpty() && !this.f10312a.containsKey(str)) {
            this.f10312a.put(str, str2);
        }
    }

    private static boolean a(char c2) {
        return c2 > ' ' && c2 < 127 && "()<>@,;:/[]?=\\\"".indexOf(c2) < 0;
    }

    private static String b(String str) {
        int indexOf = str.indexOf(47);
        int indexOf2 = str.indexOf(59);
        if (indexOf < 0) {
            return null;
        }
        String lowerCase = str.substring(0, indexOf).trim().toLowerCase(Locale.ENGLISH);
        if (!c(lowerCase)) {
            return null;
        }
        int i = indexOf + 1;
        String lowerCase2 = (indexOf2 < 0 ? str.substring(i) : str.substring(i, indexOf2)).trim().toLowerCase(Locale.ENGLISH);
        if (!c(lowerCase2)) {
            return null;
        }
        StringBuilder sb = new StringBuilder(lowerCase.length() + lowerCase2.length() + 1);
        sb.append(lowerCase);
        sb.append('/');
        sb.append(lowerCase2);
        return sb.toString();
    }

    private static boolean c(String str) {
        int length = str.length();
        if (length == 0) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (!a(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    private String d(String str) {
        String str2;
        String str3;
        String e = e(str);
        if (e.isEmpty()) {
            return null;
        }
        a();
        Map<String, String> map = this.f10312a;
        if (map == null || map.isEmpty()) {
            return null;
        }
        do {
            str2 = this.f10312a.get(e);
            str3 = e;
            if (str2 == null) {
                str3 = e(e);
            }
            if (str2 != null) {
                break;
            }
            e = str3;
        } while (!str3.isEmpty());
        return str2;
    }

    private static String e(String str) {
        int indexOf;
        return (str == null || str.isEmpty() || (indexOf = str.indexOf(46)) < 0 || indexOf >= str.length() - 1) ? "" : str.substring(indexOf + 1);
    }

    private void f(String str) {
        String trim = str.trim();
        if (!trim.isEmpty()) {
            if (trim.charAt(0) != '#') {
                String replaceAll = trim.replaceAll("\\s*#.*", "");
                if (replaceAll.indexOf(61) > 0) {
                    Matcher matcher = Pattern.compile("\\btype=(\"\\p{Graph}+?/\\p{Graph}+?\"|\\p{Graph}+/\\p{Graph}+\\b)").matcher(replaceAll);
                    if (matcher.find()) {
                        String substring = matcher.group().substring(5);
                        String str2 = substring;
                        if (substring.charAt(0) == '\"') {
                            str2 = substring.substring(1, substring.length() - 1);
                        }
                        Matcher matcher2 = Pattern.compile("\\bexts=(\"[\\p{Graph}|\\p{Blank}]+?\"|\\p{Graph}+\\b)").matcher(replaceAll);
                        if (matcher2.find()) {
                            String substring2 = matcher2.group().substring(5);
                            String str3 = substring2;
                            if (substring2.charAt(0) == '\"') {
                                str3 = substring2.substring(1, substring2.length() - 1);
                            }
                            for (String str4 : str3.split("[\\p{Blank}|\\p{Punct}]+")) {
                                a(str4, str2);
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                String[] split = replaceAll.split("\\s+");
                for (int i = 1; i < split.length; i++) {
                    a(split[i], split[0]);
                }
            }
        }
    }

    public final String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String d2 = d(str);
        if (TextUtils.isEmpty(d2)) {
            return null;
        }
        return b(d2);
    }
}
