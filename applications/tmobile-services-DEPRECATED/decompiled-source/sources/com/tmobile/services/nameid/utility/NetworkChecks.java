package com.tmobile.services.nameid.utility;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\bÆ\u0002\u0018��:\u0001\u0014B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013J%\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\t\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0010\u001a\u00020\u000f8\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcom/tmobile/services/nameid/utility/NetworkChecks;", "Landroid/content/Context;", "context", "", "", "types", "", "checkConnectivity", "(Landroid/content/Context;[Ljava/lang/Integer;)Z", "isMobileDataOn", "(Landroid/content/Context;)Z", "Lcom/tmobile/services/nameid/utility/NetworkChecks$NetworkType;", "typeCheck", "isNetworkAvailable", "(Landroid/content/Context;Lcom/tmobile/services/nameid/utility/NetworkChecks$NetworkType;)Z", "", "LOG_TAG", "Ljava/lang/String;", "<init>", "()V", "NetworkType", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/NetworkChecks.class */
public final class NetworkChecks {

    /* renamed from: a */
    private static final String f14406a = "NetworkChecks";

    /* renamed from: b */
    public static final NetworkChecks f14407b = new NetworkChecks();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��:\u0004\t\n\u000b\fB\u0017\b\u0002\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001¢\u0006\u0004\b\u0007\u0010\bR\u001f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0004\r\u000e\u000f\u0010¨\u0006\u0011"}, d2 = {"Lcom/tmobile/services/nameid/utility/NetworkChecks$NetworkType;", "", "", "types", "[Ljava/lang/Integer;", "getTypes", "()[Ljava/lang/Integer;", "<init>", "([Ljava/lang/Integer;)V", "Any", "Mobile", "VPN", "Wifi", "Lcom/tmobile/services/nameid/utility/NetworkChecks$NetworkType$VPN;", "Lcom/tmobile/services/nameid/utility/NetworkChecks$NetworkType$Mobile;", "Lcom/tmobile/services/nameid/utility/NetworkChecks$NetworkType$Wifi;", "Lcom/tmobile/services/nameid/utility/NetworkChecks$NetworkType$Any;", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/NetworkChecks$NetworkType.class */
    public static abstract class NetworkType {
        @NotNull

        /* renamed from: a */
        private final Integer[] f14408a;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/utility/NetworkChecks$NetworkType$Any;", "com/tmobile/services/nameid/utility/NetworkChecks$NetworkType", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/NetworkChecks$NetworkType$Any.class */
        public static final class Any extends NetworkType {

            /* renamed from: b */
            public static final Any f14409b = new Any();

            private Any() {
                super(new Integer[]{0, 1}, null);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/utility/NetworkChecks$NetworkType$Mobile;", "com/tmobile/services/nameid/utility/NetworkChecks$NetworkType", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/NetworkChecks$NetworkType$Mobile.class */
        public static final class Mobile extends NetworkType {

            /* renamed from: b */
            public static final Mobile f14410b = new Mobile();

            private Mobile() {
                super(new Integer[]{0}, null);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/utility/NetworkChecks$NetworkType$VPN;", "com/tmobile/services/nameid/utility/NetworkChecks$NetworkType", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/NetworkChecks$NetworkType$VPN.class */
        public static final class VPN extends NetworkType {

            /* renamed from: b */
            public static final VPN f14411b = new VPN();

            private VPN() {
                super(new Integer[]{4}, null);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/utility/NetworkChecks$NetworkType$Wifi;", "com/tmobile/services/nameid/utility/NetworkChecks$NetworkType", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/NetworkChecks$NetworkType$Wifi.class */
        public static final class Wifi extends NetworkType {

            /* renamed from: b */
            public static final Wifi f14412b = new Wifi();

            private Wifi() {
                super(new Integer[]{1}, null);
            }
        }

        private NetworkType(Integer[] numArr) {
            this.f14408a = numArr;
        }

        public /* synthetic */ NetworkType(Integer[] numArr, DefaultConstructorMarker defaultConstructorMarker) {
            this(numArr);
        }

        @NotNull
        /* renamed from: a */
        public final Integer[] m5477a() {
            return this.f14408a;
        }
    }

    private NetworkChecks() {
    }

    /* renamed from: a */
    private final boolean m5482a(Context context, Integer[] numArr) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        for (Network network : connectivityManager.getAllNetworks()) {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(network);
            for (Integer num : numArr) {
                int intValue = num.intValue();
                if (networkCapabilities != null && networkCapabilities.hasTransport(intValue)) {
                    if (intValue != 4 || Build.VERSION.SDK_INT < 23) {
                        if (networkCapabilities.hasCapability(12)) {
                            return true;
                        }
                    } else if (networkCapabilities.hasCapability(12) || networkCapabilities.hasCapability(16)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: e */
    public static /* synthetic */ boolean m5478e(NetworkChecks networkChecks, Context context, NetworkType networkType, int i, Object obj) {
        if ((i & 2) != 0) {
            networkType = NetworkType.Any.f14409b;
        }
        return networkChecks.m5479d(context, networkType);
    }

    /* renamed from: b */
    public final boolean m5481b(@NotNull Context context) {
        Intrinsics.m1830e(context, "context");
        boolean z = true;
        if (BuildUtils.m5848f()) {
            return true;
        }
        boolean z2 = Settings.Global.getInt(context.getContentResolver(), "mobile_data", 1) == 1;
        boolean z3 = Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
        boolean d = m5479d(context, NetworkType.Mobile.f14410b);
        int i = Build.VERSION.SDK_INT;
        if (i == 21 || i == 22) {
            d = true;
        }
        boolean z4 = d;
        if (!d) {
            Object systemService = context.getSystemService("phone");
            if (systemService != null) {
                z4 = ((TelephonyManager) systemService).getNetworkType() == 13;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type android.telephony.TelephonyManager");
            }
        }
        if (!z2 || z3 || !z4) {
            z = false;
        }
        return z;
    }

    @JvmOverloads
    /* renamed from: c */
    public final boolean m5480c(@NotNull Context context) {
        return m5478e(this, context, null, 2, null);
    }

    @JvmOverloads
    /* renamed from: d */
    public final boolean m5479d(@NotNull Context context, @NotNull NetworkType typeCheck) {
        Intrinsics.m1830e(context, "context");
        Intrinsics.m1830e(typeCheck, "typeCheck");
        boolean a = m5482a(context, typeCheck.m5477a());
        LogUtil.m5643d(f14406a + "isNetworkAvailable", "is network[" + typeCheck + "] available? <-- " + a);
        return a;
    }
}
