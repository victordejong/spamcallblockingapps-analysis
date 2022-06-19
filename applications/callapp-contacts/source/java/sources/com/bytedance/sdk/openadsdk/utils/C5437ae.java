package com.bytedance.sdk.openadsdk.utils;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.bytedance.sdk.openadsdk.core.C4570g;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
/* renamed from: com.bytedance.sdk.openadsdk.utils.ae */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/ae.class */
public class C5437ae {

    /* renamed from: a */
    private static String f18971a;

    /* JADX WARN: Not initialized variable reg: 6, insn: 0x00ea: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r6 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:44:0x00ea */
    /* renamed from: a */
    public static String m32316a(String str) {
        FileReader fileReader;
        Throwable th;
        FileReader fileReader2;
        Exception e;
        BufferedReader bufferedReader;
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader2 = null;
        try {
            try {
                File file = new File("data/data/com.union_test.internationad/" + str);
                if (!file.exists()) {
                    return null;
                }
                fileReader = new FileReader(file);
                try {
                    bufferedReader = new BufferedReader(fileReader);
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            sb.append(readLine);
                        } catch (Exception e2) {
                            e = e2;
                            e.printStackTrace();
                            if (fileReader != null) {
                                try {
                                    fileReader.close();
                                } catch (Exception e3) {
                                    e3.printStackTrace();
                                    return sb.toString();
                                }
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            return sb.toString();
                        }
                    }
                    String sb2 = sb.toString();
                    try {
                        fileReader.close();
                        bufferedReader.close();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    return sb2;
                } catch (Exception e5) {
                    e = e5;
                    bufferedReader = null;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader2 = null;
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (Exception e6) {
                            e6.printStackTrace();
                            throw th;
                        }
                    }
                    if (bufferedReader2 != null) {
                        bufferedReader2.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                fileReader = fileReader2;
            }
        } catch (Exception e7) {
            e = e7;
            bufferedReader = null;
            fileReader = null;
        } catch (Throwable th4) {
            th = th4;
            fileReader = null;
            bufferedReader2 = null;
        }
    }

    /* renamed from: a */
    public static String m32315a(String str, String str2) {
        if (str.contains("https://pangolin.snssdk.com")) {
            return str.replace("https://pangolin.snssdk.com", str2);
        }
        if (str.contains("https://is.snssdk.com")) {
            return str.replace("https://is.snssdk.com", str2);
        }
        String str3 = str;
        if (str.contains("https://pangolin16.snssdk.com")) {
            str3 = str.replace("https://pangolin16.snssdk.com", str2);
        }
        return str3;
    }

    /* renamed from: a */
    public static boolean m32317a() {
        return C5478q.m32110c() && C4570g.m35020b().m34989s() && C4570g.m35020b().m34988t();
    }

    /* renamed from: b */
    public static String m32314b() {
        if (TextUtils.isEmpty(f18971a)) {
            f18971a = new String(Base64.decode("ZGV2aWNlX2lk", 0));
        }
        return f18971a;
    }

    /* renamed from: b */
    public static String m32313b(String str) {
        if (!m32317a()) {
            return str;
        }
        String m34987u = C4570g.m35020b().m34987u();
        if (TextUtils.isEmpty(m34987u)) {
            return str;
        }
        str = Uri.parse(str).buildUpon().appendQueryParameter(m32314b(), m34987u).appendQueryParameter("aid", "5001121").toString();
        return str;
    }
}
