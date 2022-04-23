package p081h.p115c.p116a.p118j;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import androidx.annotation.NonNull;
/* renamed from: h.c.a.j.a */
/* loaded from: classes-dex2jar.jar:h/c/a/j/a.class */
public class C5758a {

    /* renamed from: h.c.a.j.a$a */
    /* loaded from: classes-dex2jar.jar:h/c/a/j/a$a.class */
    public enum EnumC5759a {
        NONE("none"),
        ETHERNET("ethernet"),
        CELLULAR_UNKNOWN("cellular_unknown"),
        WIFI("wifi"),
        UNKNOWN("unknown"),
        CELLULAR_2G("cellular_2g"),
        CELLULAR_3G("cellular_3g"),
        CELLULAR_4G("cellular_4g"),
        CELLULAR_5G("cellular_5g");
        

        /* renamed from: a */
        public final String f14412a;

        EnumC5759a(String str) {
            this.f14412a = str;
        }

        @Override // java.lang.Enum
        @NonNull
        public final String toString() {
            return this.f14412a;
        }
    }

    /* renamed from: a */
    public static EnumC5759a m24548a(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return EnumC5759a.NONE;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return EnumC5759a.NONE;
        }
        if (activeNetworkInfo.getType() == 9) {
            return EnumC5759a.ETHERNET;
        }
        if (activeNetworkInfo.getType() == 1) {
            return EnumC5759a.WIFI;
        }
        if (activeNetworkInfo.getType() != 0) {
            return EnumC5759a.UNKNOWN;
        }
        switch (activeNetworkInfo.getSubtype()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                return EnumC5759a.CELLULAR_2G;
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
                return EnumC5759a.CELLULAR_3G;
            case 13:
            case 18:
            case 19:
                return EnumC5759a.CELLULAR_4G;
            case 20:
                return EnumC5759a.CELLULAR_5G;
            default:
                return EnumC5759a.CELLULAR_UNKNOWN;
        }
    }
}
