package com.google.android.exoplayer2.scheduler;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/scheduler/Requirements.class */
public final class Requirements implements Parcelable {
    public static final Parcelable.Creator<Requirements> CREATOR = new C5192a();

    /* renamed from: d */
    private final int f16291d;

    /* renamed from: com.google.android.exoplayer2.scheduler.Requirements$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/scheduler/Requirements$a.class */
    static final class C5192a implements Parcelable.Creator<Requirements> {
        C5192a() {
        }

        /* renamed from: a */
        public Requirements createFromParcel(Parcel parcel) {
            return new Requirements(parcel.readInt());
        }

        /* renamed from: b */
        public Requirements[] newArray(int i) {
            return new Requirements[i];
        }
    }

    public Requirements(int i) {
        this.f16291d = (i & 2) != 0 ? i | 1 : i;
    }

    /* renamed from: b */
    private int m20185b(Context context) {
        if (!m20178i()) {
            return 0;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) C5508e.m18911e(connectivityManager)).getActiveNetworkInfo();
        return (activeNetworkInfo == null || !activeNetworkInfo.isConnected() || !m20179h(connectivityManager)) ? this.f16291d & 3 : (!m20177j() || !connectivityManager.isActiveNetworkMetered()) ? 0 : 2;
    }

    /* renamed from: e */
    private boolean m20182e(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver == null) {
            return false;
        }
        int intExtra = registerReceiver.getIntExtra("status", -1);
        if (intExtra == 2 || intExtra == 5) {
            z = true;
        }
        return z;
    }

    /* renamed from: f */
    private boolean m20181f(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        int i = C5515h0.f17876a;
        boolean z = true;
        if (i >= 23) {
            z = powerManager.isDeviceIdleMode();
        } else if (i < 20 ? powerManager.isScreenOn() : powerManager.isInteractive()) {
            z = false;
        }
        return z;
    }

    /* renamed from: h */
    private static boolean m20179h(ConnectivityManager connectivityManager) {
        boolean z = true;
        if (C5515h0.f17876a < 24) {
            return true;
        }
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null) {
            return false;
        }
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
        if (networkCapabilities == null || !networkCapabilities.hasCapability(16)) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public boolean m20186a(Context context) {
        return m20184c(context) == 0;
    }

    /* renamed from: c */
    public int m20184c(Context context) {
        int m20185b = m20185b(context);
        int i = m20185b;
        if (m20183d()) {
            i = m20185b;
            if (!m20182e(context)) {
                i = m20185b | 8;
            }
        }
        int i2 = i;
        if (m20180g()) {
            i2 = i;
            if (!m20181f(context)) {
                i2 = i | 4;
            }
        }
        return i2;
    }

    /* renamed from: d */
    public boolean m20183d() {
        return (this.f16291d & 8) != 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || Requirements.class != obj.getClass()) {
            return false;
        }
        if (this.f16291d != ((Requirements) obj).f16291d) {
            z = false;
        }
        return z;
    }

    /* renamed from: g */
    public boolean m20180g() {
        return (this.f16291d & 4) != 0;
    }

    public int hashCode() {
        return this.f16291d;
    }

    /* renamed from: i */
    public boolean m20178i() {
        boolean z = true;
        if ((this.f16291d & 1) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: j */
    public boolean m20177j() {
        return (this.f16291d & 2) != 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f16291d);
    }
}
