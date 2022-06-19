package com.facebook.devicerequests.p297a;

import android.graphics.Bitmap;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.os.Build;
import com.facebook.C10181g;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10302p;
import com.facebook.internal.C10306q;
import com.facebook.internal.EnumC10211ad;
import com.facebook.internal.p299b.p301b.C10249a;
import com.google.zxing.C16196d;
import com.google.zxing.EnumC16139a;
import com.google.zxing.EnumC16165c;
import com.google.zxing.WriterException;
import com.google.zxing.common.C16191b;
import com.mopub.common.Constants;
import java.util.EnumMap;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.devicerequests.a.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/devicerequests/a/a.class */
public class C10177a {

    /* renamed from: a */
    private static final String f33593a = "com.facebook.devicerequests.a.a";

    /* renamed from: b */
    private static HashMap<String, NsdManager.RegistrationListener> f33594b = new HashMap<>();

    /* renamed from: a */
    public static String m23315a() {
        if (C10249a.m23108a(C10177a.class)) {
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
            C10249a.m23106a(th, C10177a.class);
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m23314a(String str) {
        if (C10249a.m23108a(C10177a.class)) {
            return false;
        }
        try {
            if (!m23313b()) {
                return false;
            }
            return m23310d(str);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10177a.class);
            return false;
        }
    }

    /* renamed from: b */
    public static Bitmap m23312b(String str) {
        Bitmap bitmap;
        if (C10249a.m23108a(C10177a.class)) {
            return null;
        }
        try {
            EnumMap enumMap = new EnumMap(EnumC16165c.class);
            enumMap.put((EnumMap) EnumC16165c.MARGIN, (EnumC16165c) 2);
            try {
                C16191b mo7642a = new C16196d().mo7642a(str, EnumC16139a.QR_CODE, 200, 200, enumMap);
                int i = mo7642a.f57158b;
                int i2 = mo7642a.f57157a;
                int[] iArr = new int[i * i2];
                for (int i3 = 0; i3 < i; i3++) {
                    for (int i4 = 0; i4 < i2; i4++) {
                        iArr[(i3 * i2) + i4] = mo7642a.m7678a(i4, i3) ? -16777216 : -1;
                    }
                }
                bitmap = Bitmap.createBitmap(i2, i, Bitmap.Config.ARGB_8888);
                try {
                    bitmap.setPixels(iArr, 0, i2, 0, 0, i2, i);
                } catch (WriterException e) {
                }
            } catch (WriterException e2) {
                bitmap = null;
            }
            return bitmap;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10177a.class);
            return null;
        }
    }

    /* renamed from: b */
    public static boolean m23313b() {
        if (C10249a.m23108a(C10177a.class)) {
            return false;
        }
        try {
            C10302p m23028a = C10306q.m23028a(C10181g.m23286m());
            if (Build.VERSION.SDK_INT < 16 || m23028a == null) {
                return false;
            }
            return m23028a.f33846c.contains(EnumC10211ad.Enabled);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10177a.class);
            return false;
        }
    }

    /* renamed from: c */
    public static void m23311c(String str) {
        NsdManager.RegistrationListener registrationListener;
        if (C10249a.m23108a(C10177a.class)) {
            return;
        }
        try {
            if (C10249a.m23108a(C10177a.class) || (registrationListener = f33594b.get(str)) == null) {
                return;
            }
            try {
                ((NsdManager) C10181g.m23290i().getSystemService("servicediscovery")).unregisterService(registrationListener);
            } catch (IllegalArgumentException e) {
                C10213ae.m23228a(f33593a, (Exception) e);
            }
            f33594b.remove(str);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10177a.class);
        }
    }

    /* renamed from: d */
    private static boolean m23310d(final String str) {
        if (C10249a.m23108a(C10177a.class)) {
            return false;
        }
        try {
            if (f33594b.containsKey(str)) {
                return true;
            }
            final String format = String.format("%s_%s_%s", "fbsdk", String.format("%s-%s", Constants.ANDROID_PLATFORM, C10181g.m23288k().replace('.', '|')), str);
            NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
            nsdServiceInfo.setServiceType("_fb._tcp.");
            nsdServiceInfo.setServiceName(format);
            nsdServiceInfo.setPort(80);
            NsdManager nsdManager = (NsdManager) C10181g.m23290i().getSystemService("servicediscovery");
            NsdManager.RegistrationListener registrationListener = new NsdManager.RegistrationListener() { // from class: com.facebook.devicerequests.a.a.1
                @Override // android.net.nsd.NsdManager.RegistrationListener
                public final void onRegistrationFailed(NsdServiceInfo nsdServiceInfo2, int i) {
                    C10177a.m23311c(str);
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public final void onServiceRegistered(NsdServiceInfo nsdServiceInfo2) {
                    if (!format.equals(nsdServiceInfo2.getServiceName())) {
                        C10177a.m23311c(str);
                    }
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public final void onServiceUnregistered(NsdServiceInfo nsdServiceInfo2) {
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public final void onUnregistrationFailed(NsdServiceInfo nsdServiceInfo2, int i) {
                }
            };
            f33594b.put(str, registrationListener);
            nsdManager.registerService(nsdServiceInfo, 1, registrationListener);
            return true;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10177a.class);
            return false;
        }
    }
}
