package com.flurry.sdk;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.exoplayer2.C0515C;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.flurry.sdk.md */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/md.class */
public final class C0505md {

    /* renamed from: a */
    private static final String f3584a = "md";

    /* renamed from: a */
    public static double m4491a(double d, int i) {
        double d2;
        if (i == -1) {
            return d;
        }
        return Math.round(d * Math.pow(10.0d, d2)) / Math.pow(10.0d, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* renamed from: a */
    public static long m4485a(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[1024];
        ?? r0 = 0;
        while (true) {
            char c = r0;
            int read = inputStream.read(bArr);
            if (read >= 0) {
                outputStream.write(bArr, 0, read);
                r0 = c + read;
            } else {
                return c;
            }
        }
    }

    /* renamed from: a */
    public static String m4484a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String str2 = str;
        if (Uri.parse(str).getScheme() == null) {
            str2 = "http://" + str;
        }
        return str2;
    }

    /* renamed from: a */
    public static String m4483a(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        for (byte b : bArr) {
            sb.append(cArr[(byte) ((b & 240) >> 4)]);
            sb.append(cArr[(byte) (b & 15)]);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static void m4492a() {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        throw new IllegalStateException("Must be called from the main thread!");
    }

    /* renamed from: a */
    public static void m4487a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m4490a(long j) {
        return j == 0 || System.currentTimeMillis() <= j;
    }

    /* renamed from: a */
    public static boolean m4489a(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        } catch (Exception e) {
            String str2 = f3584a;
            C0478ku.m4596a(6, str2, "Error occured when checking if app has permission.  Error: " + e.getMessage());
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m4488a(Intent intent) {
        return C0462kg.m4652a().f3460a.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    /* renamed from: a */
    public static byte[] m4486a(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m4485a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: b */
    public static String m4481b(String str) {
        return str == null ? "" : str.length() <= 255 ? str : str.substring(0, 255);
    }

    /* renamed from: b */
    public static String m4480b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            return new String(bArr, "ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            String str = f3584a;
            C0478ku.m4596a(5, str, "Unsupported ISO-8859-1:" + e.getMessage());
            return null;
        }
    }

    /* renamed from: b */
    public static void m4482b() {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            return;
        }
        throw new IllegalStateException("Must be called from a background thread!");
    }

    /* renamed from: c */
    public static String m4479c(String str) {
        try {
            return URLEncoder.encode(str, C0515C.UTF8_NAME);
        } catch (UnsupportedEncodingException e) {
            String str2 = f3584a;
            C0478ku.m4596a(5, str2, "Cannot encode '" + str + "'");
            return "";
        }
    }

    /* renamed from: d */
    public static byte[] m4478d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return str.getBytes(C0515C.UTF8_NAME);
        } catch (UnsupportedEncodingException e) {
            String str2 = f3584a;
            C0478ku.m4596a(5, str2, "Unsupported UTF-8: " + e.getMessage());
            return null;
        }
    }

    /* renamed from: e */
    public static byte[] m4477e(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes(), 0, str.length());
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            String str2 = f3584a;
            C0478ku.m4596a(6, str2, "Unsupported SHA1: " + e.getMessage());
            return null;
        }
    }

    /* renamed from: f */
    public static String m4476f(String str) {
        return str.replace("\\b", "").replace("\\n", "").replace("\\r", "").replace("\\t", "").replace("\\", "\\\\").replace("'", "\\'").replace("\"", "\\\"");
    }

    /* renamed from: g */
    public static Map<String, String> m4475g(String str) {
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            for (String str2 : str.split("&")) {
                String[] split = str2.split("=");
                if (!split[0].equals("event")) {
                    hashMap.put(m4474h(split[0]), m4474h(split[1]));
                }
            }
        }
        return hashMap;
    }

    /* renamed from: h */
    public static String m4474h(String str) {
        try {
            return URLDecoder.decode(str, C0515C.UTF8_NAME);
        } catch (UnsupportedEncodingException e) {
            String str2 = f3584a;
            C0478ku.m4596a(5, str2, "Cannot decode '" + str + "'");
            return "";
        }
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: i */
    public static long m4473i(String str) {
        if (str == null) {
            return 0L;
        }
        char c = 65509;
        for (int i = 0; i < str.length(); i++) {
            c = (c * 31) + str.charAt(i);
        }
        return c;
    }
}
