package com.flurry.sdk;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.google.i18n.phonenumbers.prefixmapper.PrefixTimeZonesMap;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.flurry.sdk.la */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/la.class */
public final class C3445la {

    /* renamed from: a */
    public static final String f5920a = "la";

    /* renamed from: a */
    public static double m32469a(double d, int i) {
        double d2;
        if (i == -1) {
            return d;
        }
        return Math.round(d * Math.pow(10.0d, d2)) / Math.pow(10.0d, i);
    }

    /* renamed from: a */
    public static long m32463a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read < 0) {
                return j;
            }
            outputStream.write(bArr, 0, read);
            j += read;
        }
    }

    /* renamed from: a */
    public static String m32462a(String str) {
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
    public static String m32461a(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        for (byte b : bArr) {
            sb.append(cArr[(byte) ((b & 240) >> 4)]);
            sb.append(cArr[(byte) (b & 15)]);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static void m32470a() {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Must be called from the main thread!");
        }
    }

    /* renamed from: a */
    public static void m32465a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m32468a(long j) {
        return j == 0 || System.currentTimeMillis() <= j;
    }

    /* renamed from: a */
    public static boolean m32467a(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        } catch (Exception e) {
            String str2 = f5920a;
            C3356jq.m32615a(6, str2, "Error occured when checking if app has permission.  Error: " + e.getMessage());
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m32466a(Intent intent) {
        return C3331jb.m32681a().f5679a.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    /* renamed from: a */
    public static byte[] m32464a(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m32463a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: b */
    public static String m32459b(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                bufferedReader.close();
                return sb.toString();
            } else if (z) {
                sb.append(readLine);
                z = false;
            } else {
                sb.append("\n");
                sb.append(readLine);
            }
        }
    }

    /* renamed from: b */
    public static String m32458b(String str) {
        return str == null ? "" : str.length() <= 255 ? str : str.substring(0, 255);
    }

    /* renamed from: b */
    public static String m32457b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            return new String(bArr, "ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            String str = f5920a;
            C3356jq.m32615a(5, str, "Unsupported ISO-8859-1:" + e.getMessage());
            return null;
        }
    }

    /* renamed from: b */
    public static void m32460b() {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            throw new IllegalStateException("Must be called from a background thread!");
        }
    }

    /* renamed from: c */
    public static String m32455c(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            String str2 = f5920a;
            C3356jq.m32615a(5, str2, "Cannot encode '" + str + "'");
            return "";
        }
    }

    /* renamed from: c */
    public static boolean m32456c() {
        return Build.VERSION.SDK_INT >= 21;
    }

    /* renamed from: d */
    public static byte[] m32454d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            String str2 = f5920a;
            C3356jq.m32615a(5, str2, "Unsupported UTF-8: " + e.getMessage());
            return null;
        }
    }

    /* renamed from: e */
    public static byte[] m32453e(String str) {
        byte[] bArr = new byte[str.length() / 2];
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i += 2) {
            StringBuilder sb = new StringBuilder(2);
            sb.append(charArray[i]);
            sb.append(charArray[i + 1]);
            bArr[i / 2] = (byte) Integer.parseInt(sb.toString(), 16);
        }
        return bArr;
    }

    /* renamed from: f */
    public static String m32452f(String str) {
        return str.replace("\\b", "").replace("\\n", "").replace("\\r", "").replace("\\t", "").replace("\\", "\\\\").replace("'", "\\'").replace("\"", "\\\"");
    }

    /* renamed from: g */
    public static Map<String, String> m32451g(String str) {
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            for (String str2 : str.split(PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR)) {
                String[] split = str2.split("=");
                if (!split[0].equals(NotificationCompat.CATEGORY_EVENT)) {
                    hashMap.put(m32450h(split[0]), m32450h(split[1]));
                }
            }
        }
        return hashMap;
    }

    /* renamed from: h */
    public static String m32450h(String str) {
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            String str2 = f5920a;
            C3356jq.m32615a(5, str2, "Cannot decode '" + str + "'");
            return "";
        }
    }

    /* renamed from: i */
    public static long m32449i(String str) {
        if (str == null) {
            return 0L;
        }
        long j = 1125899906842597L;
        int length = str.length();
        for (int i = 0; i < length; i++) {
            j = (j * 31) + str.charAt(i);
        }
        return j;
    }
}
