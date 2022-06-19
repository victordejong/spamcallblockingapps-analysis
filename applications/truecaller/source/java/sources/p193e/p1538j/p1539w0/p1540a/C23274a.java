package p193e.p1538j.p1539w0.p1540a;

import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import com.facebook.internal.C1124c0;
import com.facebook.internal.C1127d0;
import com.facebook.internal.C1168q0;
import com.facebook.internal.EnumC1163p0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.mopub.common.Constants;
import java.util.HashMap;
import p193e.p1538j.C23228f0;
/* renamed from: e.j.w0.a.a */
/* loaded from: classes2-dex2jar.jar:e/j/w0/a/a.class */
public class C23274a {

    /* renamed from: a */
    public static final String f64428a = "e.j.w0.a.a";

    /* renamed from: b */
    public static HashMap<String, NsdManager.RegistrationListener> f64429b = new HashMap<>();

    /* renamed from: e.j.w0.a.a$a */
    /* loaded from: classes2-dex2jar.jar:e/j/w0/a/a$a.class */
    public static final class C23275a implements NsdManager.RegistrationListener {

        /* renamed from: a */
        public final /* synthetic */ String f64430a;

        /* renamed from: b */
        public final /* synthetic */ String f64431b;

        public C23275a(String str, String str2) {
            this.f64430a = str;
            this.f64431b = str2;
        }

        @Override // android.net.nsd.NsdManager.RegistrationListener
        public void onRegistrationFailed(NsdServiceInfo nsdServiceInfo, int i) {
            C23274a.m7299a(this.f64431b);
        }

        @Override // android.net.nsd.NsdManager.RegistrationListener
        public void onServiceRegistered(NsdServiceInfo nsdServiceInfo) {
            if (!this.f64430a.equals(nsdServiceInfo.getServiceName())) {
                C23274a.m7299a(this.f64431b);
            }
        }

        @Override // android.net.nsd.NsdManager.RegistrationListener
        public void onServiceUnregistered(NsdServiceInfo nsdServiceInfo) {
        }

        @Override // android.net.nsd.NsdManager.RegistrationListener
        public void onUnregistrationFailed(NsdServiceInfo nsdServiceInfo, int i) {
        }
    }

    /* renamed from: a */
    public static void m7299a(String str) {
        if (C1220a.m41623b(C23274a.class)) {
            return;
        }
        try {
            m7298b(str);
        } catch (Throwable th) {
            C1220a.m41624a(th, C23274a.class);
        }
    }

    /* renamed from: b */
    public static void m7298b(String str) {
        if (C1220a.m41623b(C23274a.class)) {
            return;
        }
        try {
            NsdManager.RegistrationListener registrationListener = f64429b.get(str);
            if (registrationListener == null) {
                return;
            }
            try {
                ((NsdManager) C23228f0.m7354a().getSystemService("servicediscovery")).unregisterService(registrationListener);
            } catch (IllegalArgumentException e) {
                C1168q0.m41696F(f64428a, e);
            }
            f64429b.remove(str);
        } catch (Throwable th) {
            C1220a.m41624a(th, C23274a.class);
        }
    }

    /* renamed from: c */
    public static boolean m7297c() {
        if (C1220a.m41623b(C23274a.class)) {
            return false;
        }
        try {
            C1124c0 m41742b = C1127d0.m41742b(C23228f0.m7353b());
            boolean z = false;
            if (m41742b != null) {
                z = false;
                if (m41742b.f3093c.contains(EnumC1163p0.Enabled)) {
                    z = true;
                }
            }
            return z;
        } catch (Throwable th) {
            C1220a.m41624a(th, C23274a.class);
            return false;
        }
    }

    /* renamed from: d */
    public static boolean m7296d(String str) {
        if (C1220a.m41623b(C23274a.class)) {
            return false;
        }
        try {
            if (f64429b.containsKey(str)) {
                return true;
            }
            C23228f0 c23228f0 = C23228f0.f64291a;
            String format = String.format("%s_%s_%s", "fbsdk", String.format("%s-%s", Constants.ANDROID_PLATFORM, "13.0.0".replace('.', '|')), str);
            NsdServiceInfo nsdServiceInfo = new NsdServiceInfo();
            nsdServiceInfo.setServiceType("_fb._tcp.");
            nsdServiceInfo.setServiceName(format);
            nsdServiceInfo.setPort(80);
            NsdManager nsdManager = (NsdManager) C23228f0.m7354a().getSystemService("servicediscovery");
            C23275a c23275a = new C23275a(format, str);
            f64429b.put(str, c23275a);
            nsdManager.registerService(nsdServiceInfo, 1, c23275a);
            return true;
        } catch (Throwable th) {
            C1220a.m41624a(th, C23274a.class);
            return false;
        }
    }
}
