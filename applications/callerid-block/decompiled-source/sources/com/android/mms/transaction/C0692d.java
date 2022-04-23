package com.android.mms.transaction;

import android.content.Context;
import android.net.http.AndroidHttpClient;
import e.a.b.a;
import java.io.IOException;
import java.util.Locale;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
/* renamed from: com.android.mms.transaction.d */
/* loaded from: classes-dex2jar.jar:com/android/mms/transaction/d.class */
public class C0692d {

    /* renamed from: a */
    private static final String f3346a = m11392d(Locale.getDefault());

    /* renamed from: a */
    private static void m11395a(StringBuilder sb, Locale locale) {
        String b = m11394b(locale.getLanguage());
        if (b != null) {
            sb.append(b);
            String country = locale.getCountry();
            if (country != null) {
                sb.append("-");
                sb.append(country);
            }
        }
    }

    /* renamed from: b */
    private static String m11394b(String str) {
        if (str == null) {
            return null;
        }
        if ("iw".equals(str)) {
            return "he";
        }
        if ("in".equals(str)) {
            return "id";
        }
        String str2 = str;
        if ("ji".equals(str)) {
            str2 = "yi";
        }
        return str2;
    }

    /* renamed from: c */
    private static AndroidHttpClient m11393c(Context context) {
        String k = a.k();
        AndroidHttpClient newInstance = AndroidHttpClient.newInstance(k, context);
        HttpParams params = newInstance.getParams();
        HttpProtocolParams.setContentCharset(params, "UTF-8");
        int d = a.d();
        if (e.d.a.a.a.f("Mms", 3)) {
            e.d.a.a.a.a("Mms", "[HttpUtils] createHttpClient w/ socket timeout " + d + " ms, , UA=" + k);
        }
        HttpConnectionParams.setSoTimeout(params, d);
        return newInstance;
    }

    /* renamed from: d */
    public static String m11392d(Locale locale) {
        StringBuilder sb = new StringBuilder();
        m11395a(sb, locale);
        if (!Locale.US.equals(locale)) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append("en-US");
        }
        return sb.toString();
    }

    /* renamed from: e */
    private static void m11391e(Exception exc, String str) {
        e.d.a.a.a.b("Mms", "Url: " + str + "\n" + exc.getMessage());
        IOException iOException = new IOException(exc.getMessage());
        iOException.initCause(exc);
        throw iOException;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0708  */
    /* JADX WARN: Type inference failed for: r18v1, types: [android.net.http.AndroidHttpClient] */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r18v70, types: [java.lang.StringBuilder] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] m11390f(android.content.Context r6, long r7, java.lang.String r9, byte[] r10, int r11, boolean r12, java.lang.String r13, int r14) {
        /*
            Method dump skipped, instructions count: 1826
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.mms.transaction.C0692d.m11390f(android.content.Context, long, java.lang.String, byte[], int, boolean, java.lang.String, int):byte[]");
    }
}
