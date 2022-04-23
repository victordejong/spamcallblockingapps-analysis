package com.facebook.devicerequests.a;

import android.graphics.Bitmap;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.os.Build;
import com.facebook.g;
import com.facebook.internal.ad;
import com.facebook.internal.ae;
import com.facebook.internal.p;
import com.facebook.internal.q;
import com.google.zxing.WriterException;
import com.google.zxing.c;
import com.google.zxing.common.b;
import com.google.zxing.d;
import com.mopub.common.Constants;
import java.util.EnumMap;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/devicerequests/a/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19775a = "com.facebook.devicerequests.a.a";

    /* renamed from: b  reason: collision with root package name */
    private static HashMap<String, NsdManager.RegistrationListener> f19776b = new HashMap<>();

    public static String a() {
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("device", Build.DEVICE);
                jSONObject.put("model", Build.MODEL);
            } catch (JSONException e) {
            }
            return jSONObject.toString();
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return null;
        }
    }

    public static boolean a(String str) {
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return false;
        }
        try {
            if (b()) {
                return d(str);
            }
            return false;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return false;
        }
    }

    public static Bitmap b(String str) {
        Bitmap bitmap = null;
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return null;
        }
        try {
            EnumMap enumMap = new EnumMap(c.class);
            enumMap.put((EnumMap) c.MARGIN, (c) 2);
            try {
                b a2 = new d().a(str, com.google.zxing.a.QR_CODE, 200, 200, enumMap);
                int i = a2.f32981b;
                int i2 = a2.f32980a;
                int[] iArr = new int[i * i2];
                for (int i3 = 0; i3 < i; i3++) {
                    for (int i4 = 0; i4 < i2; i4++) {
                        iArr[(i3 * i2) + i4] = a2.a(i4, i3) ? -16777216 : -1;
                    }
                }
                bitmap = Bitmap.createBitmap(i2, i, Bitmap.Config.ARGB_8888);
                try {
                    bitmap.setPixels(iArr, 0, i2, 0, 0, i2, i);
                } catch (WriterException e) {
                }
            } catch (WriterException e2) {
            }
            return bitmap;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return null;
        }
    }

    public static boolean b() {
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return false;
        }
        try {
            p a2 = q.a(g.m());
            if (Build.VERSION.SDK_INT < 16 || a2 == null) {
                return false;
            }
            return a2.f19960c.contains(ad.Enabled);
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return false;
        }
    }

    public static void c(String str) {
        NsdManager.RegistrationListener registrationListener;
        if (!com.facebook.internal.b.b.a.a(a.class)) {
            try {
                if (!com.facebook.internal.b.b.a.a(a.class) && (registrationListener = f19776b.get(str)) != null) {
                    try {
                        ((NsdManager) g.i().getSystemService("servicediscovery")).unregisterService(registrationListener);
                    } catch (IllegalArgumentException e) {
                        ae.a(f19775a, (Exception) e);
                    }
                    f19776b.remove(str);
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, a.class);
            }
        }
    }

    private static boolean d(final String str) {
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return false;
        }
        try {
            if (f19776b.containsKey(str)) {
                return true;
            }
            final String format = String.format("%s_%s_%s", "fbsdk", String.format("%s-%s", Constants.ANDROID_PLATFORM, g.k().replace('.', '|')), str);
            NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
            nsdServiceInfo.setServiceType("_fb._tcp.");
            nsdServiceInfo.setServiceName(format);
            nsdServiceInfo.setPort(80);
            NsdManager nsdManager = (NsdManager) g.i().getSystemService("servicediscovery");
            NsdManager.RegistrationListener registrationListener = new NsdManager.RegistrationListener() { // from class: com.facebook.devicerequests.a.a.1
                @Override // android.net.nsd.NsdManager.RegistrationListener
                public final void onRegistrationFailed(NsdServiceInfo nsdServiceInfo2, int i) {
                    a.c(str);
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public final void onServiceRegistered(NsdServiceInfo nsdServiceInfo2) {
                    if (!format.equals(nsdServiceInfo2.getServiceName())) {
                        a.c(str);
                    }
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public final void onServiceUnregistered(NsdServiceInfo nsdServiceInfo2) {
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public final void onUnregistrationFailed(NsdServiceInfo nsdServiceInfo2, int i) {
                }
            };
            f19776b.put(str, registrationListener);
            nsdManager.registerService(nsdServiceInfo, 1, registrationListener);
            return true;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return false;
        }
    }
}
