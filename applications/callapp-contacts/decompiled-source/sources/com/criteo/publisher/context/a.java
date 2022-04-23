package com.criteo.publisher.context;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.core.content.b;
import com.callapp.contacts.model.Constants;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/context/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final g f17211a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f17212b;

    /* renamed from: com.criteo.publisher.context.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/context/a$a.class */
    public enum EnumC0340a {
        WIRED(1),
        WIFI(2),
        CELLULAR_UNKNOWN(3),
        CELLULAR_2G(4),
        CELLULAR_3G(5),
        CELLULAR_4G(6),
        CELLULAR_5G(7);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f17216a;

        EnumC0340a(int i2) {
            this.f17216a = i2;
        }

        public final int a() {
            return this.f17216a;
        }
    }

    public a(Context context) {
        p.c(context, "context");
        this.f17212b = context;
        g a2 = h.a(a.class);
        p.a((Object) a2, "LoggerFactory.getLogger(…nTypeFetcher::class.java)");
        this.f17211a = a2;
    }

    private static EnumC0340a a(int i) {
        EnumC0340a aVar;
        switch (i) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                aVar = EnumC0340a.CELLULAR_2G;
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
                aVar = EnumC0340a.CELLULAR_3G;
                break;
            case 13:
            case 18:
            case 19:
                aVar = EnumC0340a.CELLULAR_4G;
                break;
            case 20:
                aVar = EnumC0340a.CELLULAR_5G;
                break;
            default:
                aVar = EnumC0340a.CELLULAR_UNKNOWN;
                break;
        }
        return aVar;
    }

    public final EnumC0340a a() {
        Object systemService = this.f17212b.getSystemService("connectivity");
        boolean z = systemService instanceof ConnectivityManager;
        Object systemService2 = null;
        if (!z) {
            systemService = null;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        EnumC0340a aVar = null;
        if (connectivityManager != null) {
            boolean z2 = true;
            try {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                Integer valueOf = activeNetworkInfo != null ? Integer.valueOf(activeNetworkInfo.getType()) : null;
                if (valueOf != null && valueOf.intValue() == 9) {
                    aVar = EnumC0340a.WIRED;
                } else if (valueOf == null || valueOf.intValue() != 1) {
                    aVar = null;
                    if (valueOf != null) {
                        aVar = null;
                        if (valueOf.intValue() == 0) {
                            aVar = a(activeNetworkInfo.getSubtype());
                        }
                    }
                } else {
                    aVar = EnumC0340a.WIFI;
                }
            } catch (LinkageError e) {
                this.f17211a.a("Deprecated way to get connection type is not available, fallback on new API", e);
                NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
                aVar = null;
                if (networkCapabilities != null) {
                    p.c(networkCapabilities, "networkCapabilities");
                    if (networkCapabilities.hasTransport(3)) {
                        aVar = EnumC0340a.WIRED;
                    } else {
                        p.c(networkCapabilities, "networkCapabilities");
                        if (networkCapabilities.hasTransport(1)) {
                            aVar = EnumC0340a.WIFI;
                        } else {
                            p.c(networkCapabilities, "networkCapabilities");
                            aVar = null;
                            if (networkCapabilities.hasTransport(0)) {
                                systemService2 = this.f17212b.getSystemService(Constants.EXTRA_PHONE_NUMBER);
                                if (!(systemService2 instanceof TelephonyManager)) {
                                }
                                TelephonyManager telephonyManager = (TelephonyManager) systemService2;
                                if (telephonyManager != null) {
                                    if (b.a(this.f17212b, "android.permission.READ_PHONE_STATE") != 0) {
                                        z2 = false;
                                    }
                                    if (z2) {
                                        aVar = Build.VERSION.SDK_INT >= 24 ? a(telephonyManager.getDataNetworkType()) : a(telephonyManager.getNetworkType());
                                    }
                                }
                                aVar = EnumC0340a.CELLULAR_UNKNOWN;
                            }
                        }
                    }
                }
            }
        }
        return aVar;
    }
}
