package com.criteo.publisher.context;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.core.content.C0790b;
import com.callapp.contacts.model.Constants;
import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.context.a */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/context/a.class */
public class C8264a {

    /* renamed from: a */
    private final C8402g f29817a;

    /* renamed from: b */
    private final Context f29818b;

    /* renamed from: com.criteo.publisher.context.a$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/context/a$a.class */
    public enum EnumC8265a {
        WIRED(1),
        WIFI(2),
        CELLULAR_UNKNOWN(3),
        CELLULAR_2G(4),
        CELLULAR_3G(5),
        CELLULAR_4G(6),
        CELLULAR_5G(7);
        

        /* renamed from: a */
        private final int f29827a;

        EnumC8265a(int i) {
            this.f29827a = i;
        }

        /* renamed from: a */
        public final int m25951a() {
            return this.f29827a;
        }
    }

    public C8264a(Context context) {
        C18524p.m3841c(context, "context");
        this.f29818b = context;
        C8402g m25741a = C8404h.m25741a(C8264a.class);
        C18524p.m3849a((Object) m25741a, "LoggerFactory.getLogger(…nTypeFetcher::class.java)");
        this.f29817a = m25741a;
    }

    /* renamed from: a */
    private static EnumC8265a m25952a(int i) {
        EnumC8265a enumC8265a;
        switch (i) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                enumC8265a = EnumC8265a.CELLULAR_2G;
                break;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                enumC8265a = EnumC8265a.CELLULAR_3G;
                break;
            case 13:
            case 18:
            case 19:
                enumC8265a = EnumC8265a.CELLULAR_4G;
                break;
            case 20:
                enumC8265a = EnumC8265a.CELLULAR_5G;
                break;
            default:
                enumC8265a = EnumC8265a.CELLULAR_UNKNOWN;
                break;
        }
        return enumC8265a;
    }

    /* renamed from: a */
    public final EnumC8265a m25953a() {
        Object systemService = this.f29818b.getSystemService("connectivity");
        if (!(systemService instanceof ConnectivityManager)) {
            systemService = null;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        EnumC8265a enumC8265a = null;
        if (connectivityManager != null) {
            boolean z = true;
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                Integer valueOf = activeNetworkInfo != null ? Integer.valueOf(activeNetworkInfo.getType()) : null;
                if (valueOf != null && valueOf.intValue() == 9) {
                    enumC8265a = EnumC8265a.WIRED;
                } else if (valueOf == null || valueOf.intValue() != 1) {
                    enumC8265a = null;
                    if (valueOf != null) {
                        enumC8265a = null;
                        if (valueOf.intValue() == 0) {
                            enumC8265a = m25952a(activeNetworkInfo.getSubtype());
                        }
                    }
                } else {
                    enumC8265a = EnumC8265a.WIFI;
                }
            } catch (LinkageError e) {
                this.f29817a.m25743a("Deprecated way to get connection type is not available, fallback on new API", e);
                NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
                enumC8265a = null;
                if (networkCapabilities != null) {
                    C18524p.m3841c(networkCapabilities, "networkCapabilities");
                    if (networkCapabilities.hasTransport(3)) {
                        enumC8265a = EnumC8265a.WIRED;
                    } else {
                        C18524p.m3841c(networkCapabilities, "networkCapabilities");
                        if (networkCapabilities.hasTransport(1)) {
                            enumC8265a = EnumC8265a.WIFI;
                        } else {
                            C18524p.m3841c(networkCapabilities, "networkCapabilities");
                            enumC8265a = null;
                            if (networkCapabilities.hasTransport(0)) {
                                Object systemService2 = this.f29818b.getSystemService(Constants.EXTRA_PHONE_NUMBER);
                                if (!(systemService2 instanceof TelephonyManager)) {
                                    systemService2 = null;
                                }
                                TelephonyManager telephonyManager = (TelephonyManager) systemService2;
                                if (telephonyManager != null) {
                                    if (C0790b.m44498a(this.f29818b, "android.permission.READ_PHONE_STATE") != 0) {
                                        z = false;
                                    }
                                    if (z) {
                                        enumC8265a = Build.VERSION.SDK_INT >= 24 ? m25952a(telephonyManager.getDataNetworkType()) : m25952a(telephonyManager.getNetworkType());
                                    }
                                }
                                enumC8265a = EnumC8265a.CELLULAR_UNKNOWN;
                            }
                        }
                    }
                }
            }
        }
        return enumC8265a;
    }
}
