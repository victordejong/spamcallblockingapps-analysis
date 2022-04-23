package com.bytedance.sdk.openadsdk.utils;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import com.bytedance.sdk.openadsdk.core.g;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/ae.class */
public class ae {

    /* renamed from: a  reason: collision with root package name */
    private static String f10271a;

    /* JADX WARN: Not initialized variable reg: 6, insn: 0x00ea: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r6 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:44:0x00ea */
    public static String a(String str) {
        FileReader fileReader;
        Throwable th;
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
            }
        } catch (Exception e7) {
            e = e7;
            bufferedReader = null;
            fileReader = null;
        } catch (Throwable th4) {
            th = th4;
            bufferedReader2 = null;
            fileReader = null;
        }
    }

    public static String a(String str, String str2) {
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

    public static boolean a() {
        return q.c() && g.b().s() && g.b().t();
    }

    public static String b() {
        if (TextUtils.isEmpty(f10271a)) {
            f10271a = new String(Base64.decode("ZGV2aWNlX2lk", 0));
        }
        return f10271a;
    }

    public static String b(String str) {
        if (!a()) {
            return str;
        }
        String u = g.b().u();
        if (TextUtils.isEmpty(u)) {
            return str;
        }
        str = Uri.parse(str).buildUpon().appendQueryParameter(b(), u).appendQueryParameter("aid", "5001121").toString();
        return str;
    }
}
