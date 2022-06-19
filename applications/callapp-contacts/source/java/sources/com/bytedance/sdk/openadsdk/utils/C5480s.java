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
/* renamed from: com.bytedance.sdk.openadsdk.utils.s */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/s.class */
public class C5480s {

    /* renamed from: c */
    private static volatile C5480s f19022c;

    /* renamed from: a */
    private Map<String, String> f19023a;

    /* renamed from: b */
    private volatile boolean f19024b = false;

    /* renamed from: d */
    private Context f19025d;

    private C5480s(Context context) {
        if (context != null && this.f19025d == null) {
            this.f19025d = context.getApplicationContext();
            m32104a();
        }
        this.f19025d = context;
    }

    /* renamed from: a */
    static C5480s m32102a(Context context) {
        if (f19022c == null) {
            synchronized (C5480s.class) {
                try {
                    if (f19022c == null) {
                        f19022c = new C5480s(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f19022c;
    }

    /* renamed from: a */
    public static String m32101a(Context context, String str) {
        String str2 = str;
        if (str != null) {
            str2 = str;
            String str3 = str;
            try {
                if (str.startsWith("http")) {
                    str2 = str;
                    if (str.contains("?")) {
                        String str4 = str.split("\\?")[0];
                        str2 = str4;
                        if (str4.endsWith("/")) {
                            str3 = str4;
                            str2 = str4.substring(0, str4.length() - 1);
                        }
                    }
                }
            } catch (Throwable th) {
                str2 = str3;
            }
        }
        return m32102a(context).m32099a(str2);
    }

    /* renamed from: a */
    private void m32104a() {
        if (this.f19025d != null && !this.f19024b) {
            synchronized (this) {
                if (!this.f19024b) {
                    List<String> list = (List) AccessController.doPrivileged(new PrivilegedAction<List<String>>() { // from class: com.bytedance.sdk.openadsdk.utils.s.1
                        /* renamed from: a */
                        public List<String> run() {
                            BufferedReader bufferedReader;
                            InputStream inputStream;
                            try {
                                ArrayList arrayList = new ArrayList();
                                inputStream = C5480s.this.f19025d.getAssets().open("tt_mime_type.pro");
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
                                inputStream = null;
                            }
                        }
                    });
                    this.f19023a = new HashMap(list.size());
                    String str = "";
                    for (String str2 : list) {
                        String str3 = str + str2;
                        if (str3.endsWith("\\")) {
                            str = str3.substring(0, str3.length() - 1);
                        } else {
                            m32093f(str3);
                            str = "";
                        }
                    }
                    if (!str.isEmpty()) {
                        m32093f(str);
                    }
                    this.f19024b = true;
                }
            }
        }
    }

    /* renamed from: a */
    private void m32098a(String str, String str2) {
        if (str == null || str.isEmpty() || str2 == null || str2.isEmpty() || this.f19023a.containsKey(str)) {
            return;
        }
        this.f19023a.put(str, str2);
    }

    /* renamed from: a */
    private static boolean m32103a(char c) {
        return c > ' ' && c < 127 && "()<>@,;:/[]?=\\\"".indexOf(c) < 0;
    }

    /* renamed from: b */
    private static String m32097b(String str) {
        int indexOf = str.indexOf(47);
        int indexOf2 = str.indexOf(59);
        if (indexOf < 0) {
            return null;
        }
        String lowerCase = str.substring(0, indexOf).trim().toLowerCase(Locale.ENGLISH);
        if (!m32096c(lowerCase)) {
            return null;
        }
        int i = indexOf + 1;
        String lowerCase2 = (indexOf2 < 0 ? str.substring(i) : str.substring(i, indexOf2)).trim().toLowerCase(Locale.ENGLISH);
        if (!m32096c(lowerCase2)) {
            return null;
        }
        StringBuilder sb = new StringBuilder(lowerCase.length() + lowerCase2.length() + 1);
        sb.append(lowerCase);
        sb.append('/');
        sb.append(lowerCase2);
        return sb.toString();
    }

    /* renamed from: c */
    private static boolean m32096c(String str) {
        int length = str.length();
        if (length == 0) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (!m32103a(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    private String m32095d(String str) {
        String str2;
        String str3;
        String m32094e = m32094e(str);
        if (m32094e.isEmpty()) {
            return null;
        }
        m32104a();
        Map<String, String> map = this.f19023a;
        if (map == null || map.isEmpty()) {
            return null;
        }
        do {
            str2 = this.f19023a.get(m32094e);
            str3 = m32094e;
            if (str2 == null) {
                str3 = m32094e(m32094e);
            }
            if (str2 != null) {
                break;
            }
            m32094e = str3;
        } while (!str3.isEmpty());
        return str2;
    }

    /* renamed from: e */
    private static String m32094e(String str) {
        int indexOf;
        return (str == null || str.isEmpty() || (indexOf = str.indexOf(46)) < 0 || indexOf >= str.length() - 1) ? "" : str.substring(indexOf + 1);
    }

    /* renamed from: f */
    private void m32093f(String str) {
        String trim = str.trim();
        if (!trim.isEmpty()) {
            if (trim.charAt(0) == '#') {
                return;
            }
            String replaceAll = trim.replaceAll("\\s*#.*", "");
            if (replaceAll.indexOf(61) <= 0) {
                String[] split = replaceAll.split("\\s+");
                for (int i = 1; i < split.length; i++) {
                    m32098a(split[i], split[0]);
                }
                return;
            }
            Matcher matcher = Pattern.compile("\\btype=(\"\\p{Graph}+?/\\p{Graph}+?\"|\\p{Graph}+/\\p{Graph}+\\b)").matcher(replaceAll);
            if (!matcher.find()) {
                return;
            }
            String substring = matcher.group().substring(5);
            String str2 = substring;
            if (substring.charAt(0) == '\"') {
                str2 = substring.substring(1, substring.length() - 1);
            }
            Matcher matcher2 = Pattern.compile("\\bexts=(\"[\\p{Graph}|\\p{Blank}]+?\"|\\p{Graph}+\\b)").matcher(replaceAll);
            if (!matcher2.find()) {
                return;
            }
            String substring2 = matcher2.group().substring(5);
            String str3 = substring2;
            if (substring2.charAt(0) == '\"') {
                str3 = substring2.substring(1, substring2.length() - 1);
            }
            for (String str4 : str3.split("[\\p{Blank}|\\p{Punct}]+")) {
                m32098a(str4, str2);
            }
        }
    }

    /* renamed from: a */
    public final String m32099a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String m32095d = m32095d(str);
        if (!TextUtils.isEmpty(m32095d)) {
            return m32097b(m32095d);
        }
        return null;
    }
}
