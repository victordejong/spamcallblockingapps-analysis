package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.google.android.gms.ads.internal.C2341q;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/car.class */
public final class car implements cah<cao> {

    /* renamed from: a */
    private final crs f12634a;

    /* renamed from: b */
    private final Context f12635b;

    public car(crs crsVar, Context context) {
        this.f12634a = crsVar;
        this.f12635b = context;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<cao> mo11479a() {
        return this.f12634a.mo10767a(new Callable(this) { // from class: com.google.android.gms.internal.ads.caq

            /* renamed from: a */
            private final car f12633a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12633a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12633a.m11504b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ cao m11504b() {
        int i;
        TelephonyManager telephonyManager = (TelephonyManager) this.f12635b.getSystemService("phone");
        String networkOperator = telephonyManager.getNetworkOperator();
        int networkType = telephonyManager.getNetworkType();
        int phoneType = telephonyManager.getPhoneType();
        int i2 = -2;
        boolean z = false;
        C2341q.m14744c();
        if (C3567ve.m7005a(this.f12635b, "android.permission.ACCESS_NETWORK_STATE")) {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f12635b.getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                i2 = activeNetworkInfo.getType();
                i = activeNetworkInfo.getDetailedState().ordinal();
            } else {
                i = -1;
                i2 = -1;
            }
            z = connectivityManager.isActiveNetworkMetered();
        } else {
            i = -1;
        }
        return new cao(networkOperator, i2, networkType, phoneType, z, i);
    }
}
