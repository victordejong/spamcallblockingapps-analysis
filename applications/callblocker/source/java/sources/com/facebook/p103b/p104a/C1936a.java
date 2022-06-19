package com.facebook.p103b.p104a;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.os.Build;
import com.facebook.C2095j;
import com.facebook.internal.C2048l;
import com.facebook.internal.C2050m;
import com.facebook.internal.C2079x;
import com.facebook.internal.EnumC2078w;
import com.google.zxing.C5122d;
import com.google.zxing.EnumC5069a;
import com.google.zxing.EnumC5095c;
import com.google.zxing.WriterException;
import com.google.zxing.common.C5117b;
import java.util.EnumMap;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.b.a.a */
/* loaded from: classes-dex2jar.jar:com/facebook/b/a/a.class */
public class C1936a {

    /* renamed from: a */
    private static final String f5829a = C1936a.class.getCanonicalName();

    /* renamed from: b */
    private static HashMap<String, NsdManager.RegistrationListener> f5830b = new HashMap<>();

    /* renamed from: a */
    public static String m15818a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device", Build.DEVICE);
            jSONObject.put("model", Build.MODEL);
        } catch (JSONException e) {
        }
        return jSONObject.toString();
    }

    /* renamed from: a */
    public static boolean m15817a(String str) {
        return m15816b() ? m15813d(str) : false;
    }

    /* renamed from: b */
    public static Bitmap m15815b(String str) {
        Bitmap bitmap;
        EnumMap enumMap = new EnumMap(EnumC5095c.class);
        enumMap.put((EnumMap) EnumC5095c.MARGIN, (EnumC5095c) 2);
        try {
            C5117b mo1394a = new C5122d().mo1394a(str, EnumC5069a.QR_CODE, 200, 200, enumMap);
            int m1457c = mo1394a.m1457c();
            int m1459b = mo1394a.m1459b();
            int[] iArr = new int[m1457c * m1459b];
            for (int i = 0; i < m1457c; i++) {
                for (int i2 = 0; i2 < m1459b; i2++) {
                    iArr[(i * m1459b) + i2] = mo1394a.m1463a(i2, i) ? -16777216 : -1;
                }
            }
            bitmap = Bitmap.createBitmap(m1459b, m1457c, Bitmap.Config.ARGB_8888);
            try {
                bitmap.setPixels(iArr, 0, m1459b, 0, 0, m1459b, m1457c);
            } catch (WriterException e) {
            }
        } catch (WriterException e2) {
            bitmap = null;
        }
        return bitmap;
    }

    /* renamed from: b */
    public static boolean m15816b() {
        C2048l m15586a = C2050m.m15586a(C2095j.m15356l());
        return Build.VERSION.SDK_INT >= 16 && m15586a != null && m15586a.m15600f().contains(EnumC2078w.Enabled);
    }

    /* renamed from: c */
    public static void m15814c(String str) {
        m15812e(str);
    }

    @TargetApi(16)
    /* renamed from: d */
    private static boolean m15813d(final String str) {
        if (f5830b.containsKey(str)) {
            return true;
        }
        final String format = String.format("%s_%s_%s", "fbsdk", String.format("%s-%s", "android", C2095j.m15358j().replace('.', '|')), str);
        NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
        nsdServiceInfo.setServiceType("_fb._tcp.");
        nsdServiceInfo.setServiceName(format);
        nsdServiceInfo.setPort(80);
        NsdManager nsdManager = (NsdManager) C2095j.m15360h().getSystemService("servicediscovery");
        NsdManager.RegistrationListener registrationListener = new NsdManager.RegistrationListener() { // from class: com.facebook.b.a.a.1
            @Override // android.net.nsd.NsdManager.RegistrationListener
            public void onRegistrationFailed(NsdServiceInfo nsdServiceInfo2, int i) {
                C1936a.m15814c(str);
            }

            @Override // android.net.nsd.NsdManager.RegistrationListener
            public void onServiceRegistered(NsdServiceInfo nsdServiceInfo2) {
                if (!format.equals(nsdServiceInfo2.getServiceName())) {
                    C1936a.m15814c(str);
                }
            }

            @Override // android.net.nsd.NsdManager.RegistrationListener
            public void onServiceUnregistered(NsdServiceInfo nsdServiceInfo2) {
            }

            @Override // android.net.nsd.NsdManager.RegistrationListener
            public void onUnregistrationFailed(NsdServiceInfo nsdServiceInfo2, int i) {
            }
        };
        f5830b.put(str, registrationListener);
        nsdManager.registerService(nsdServiceInfo, 1, registrationListener);
        return true;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002a -> B:6:0x0020). Please submit an issue!!! */
    @TargetApi(16)
    /* renamed from: e */
    private static void m15812e(String str) {
        NsdManager.RegistrationListener registrationListener = f5830b.get(str);
        if (registrationListener != null) {
            try {
                ((NsdManager) C2095j.m15360h().getSystemService("servicediscovery")).unregisterService(registrationListener);
            } catch (IllegalArgumentException e) {
                C2079x.m15470a(f5829a, (Exception) e);
            }
            f5830b.remove(str);
        }
    }
}
