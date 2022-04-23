package com.inmobi.commons.core.utilities;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.PowerManager;
import com.android.volley.Request;
import com.inmobi.commons.core.utilities.Logger;
import com.inmobi.commons.p508a.C8326a;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.zip.GZIPInputStream;
/* renamed from: com.inmobi.commons.core.utilities.d */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/d.class */
public class C8407d {

    /* renamed from: a */
    public static final String f32689a = "d";

    /* renamed from: a */
    public static String m5647a(String str) {
        String str2;
        try {
            str2 = URLEncoder.encode(str, Request.DEFAULT_PARAMS_ENCODING);
        } catch (UnsupportedEncodingException e) {
            str2 = "";
        }
        return str2;
    }

    /* renamed from: a */
    public static String m5646a(String str, Map<String, String> map) {
        String str2 = str;
        if (map != null) {
            str2 = str;
            if (map.size() > 0) {
                Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
                while (true) {
                    str2 = str;
                    if (!it.hasNext()) {
                        break;
                    }
                    Map.Entry<String, String> next = it.next();
                    str = str.replace(next.getKey(), next.getValue());
                }
            }
        }
        return str2;
    }

    /* renamed from: a */
    public static String m5644a(Map<String, String> map, String str) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (sb.length() > 0) {
                sb.append(str);
            }
            sb.append(String.format(Locale.US, "%s=%s", m5647a(entry.getKey()), m5647a(entry.getValue())));
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static void m5649a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public static void m5645a(Map<String, String> map) {
        if (map != null) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (!(entry.getValue() == null || entry.getValue().trim().length() == 0 || entry.getKey() == null || entry.getKey().trim().length() == 0)) {
                    hashMap.put(entry.getKey().trim(), entry.getValue().trim());
                }
            }
            map.clear();
            map.putAll(hashMap);
        }
    }

    /* renamed from: a */
    public static boolean m5650a() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) C8326a.m5891b().getSystemService("connectivity")).getActiveNetworkInfo();
            boolean z = false;
            if (activeNetworkInfo != null) {
                z = false;
                if (activeNetworkInfo.isConnected()) {
                    z = false;
                    if (!m5642b()) {
                        z = true;
                    }
                }
            }
            return z;
        } catch (Exception e) {
            new StringBuilder("SDK encountered unexpected error in checking network availability; ").append(e.getMessage());
            return false;
        }
    }

    /* renamed from: a */
    public static byte[] m5648a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (-1 != read) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return byteArray;
                }
            } catch (Throwable th) {
                byteArrayOutputStream.close();
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static byte[] m5643a(byte[] bArr) {
        GZIPInputStream gZIPInputStream;
        Throwable th;
        IOException e;
        GZIPInputStream gZIPInputStream2;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        byte[] bArr2 = null;
        try {
            gZIPInputStream2 = new GZIPInputStream(byteArrayInputStream);
            gZIPInputStream = gZIPInputStream2;
            try {
                try {
                    bArr2 = m5648a((InputStream) gZIPInputStream2);
                } catch (IOException e2) {
                    e = e2;
                    gZIPInputStream = gZIPInputStream2;
                    Logger.m5723a(Logger.InternalLogLevel.DEBUG, f32689a, "Failed to decompress response", e);
                    m5649a((Closeable) byteArrayInputStream);
                    m5649a((Closeable) gZIPInputStream2);
                    return bArr2;
                }
            } catch (Throwable th2) {
                th = th2;
                m5649a((Closeable) byteArrayInputStream);
                m5649a((Closeable) gZIPInputStream);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            gZIPInputStream2 = null;
        } catch (Throwable th3) {
            th = th3;
            gZIPInputStream = null;
            m5649a((Closeable) byteArrayInputStream);
            m5649a((Closeable) gZIPInputStream);
            throw th;
        }
        m5649a((Closeable) byteArrayInputStream);
        m5649a((Closeable) gZIPInputStream2);
        return bArr2;
    }

    /* renamed from: b */
    public static boolean m5642b() {
        boolean z;
        try {
            PowerManager powerManager = (PowerManager) C8326a.m5891b().getSystemService("power");
            z = false;
            if (Build.VERSION.SDK_INT > 22) {
                z = powerManager.isDeviceIdleMode();
            }
        } catch (Exception e) {
            new StringBuilder("SDK encountered unexpected error in checking idle mode; ").append(e.getMessage());
            z = false;
        }
        return z;
    }
}
