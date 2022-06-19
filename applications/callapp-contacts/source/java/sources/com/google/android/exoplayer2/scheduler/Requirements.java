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
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/scheduler/Requirements.class */
public final class Requirements implements Parcelable {
    public static final Parcelable.Creator<Requirements> CREATOR = new Parcelable.Creator<Requirements>() { // from class: com.google.android.exoplayer2.scheduler.Requirements.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ Requirements createFromParcel(Parcel parcel) {
            return new Requirements(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Requirements[] newArray(int i) {
            return new Requirements[i];
        }
    };
    public static final int DEVICE_CHARGING = 8;
    public static final int DEVICE_IDLE = 4;
    public static final int DEVICE_STORAGE_NOT_LOW = 16;
    public static final int NETWORK = 1;
    public static final int NETWORK_UNMETERED = 2;
    private final int requirements;

    public Requirements(int i) {
        this.requirements = (i & 2) != 0 ? i | 1 : i;
    }

    private int getNotMetNetworkRequirements(Context context) {
        if (!isNetworkRequired()) {
            return 0;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) C11593a.m20020b(context.getSystemService("connectivity"));
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return (activeNetworkInfo == null || !activeNetworkInfo.isConnected() || !isInternetConnectivityValidated(connectivityManager)) ? this.requirements & 3 : (!isUnmeteredNetworkRequired() || !connectivityManager.isActiveNetworkMetered()) ? 0 : 2;
    }

    private boolean isDeviceCharging(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            return false;
        }
        int intExtra = registerReceiver.getIntExtra("status", -1);
        return intExtra == 2 || intExtra == 5;
    }

    private boolean isDeviceIdle(Context context) {
        PowerManager powerManager = (PowerManager) C11593a.m20020b(context.getSystemService("power"));
        return C11599af.f38648a >= 23 ? powerManager.isDeviceIdleMode() : C11599af.f38648a >= 20 ? !powerManager.isInteractive() : !powerManager.isScreenOn();
    }

    private static boolean isInternetConnectivityValidated(ConnectivityManager connectivityManager) {
        NetworkCapabilities networkCapabilities;
        if (C11599af.f38648a < 24) {
            return true;
        }
        Network activeNetwork = connectivityManager.getActiveNetwork();
        return (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null || !networkCapabilities.hasCapability(16)) ? false : true;
    }

    private boolean isStorageNotLow(Context context) {
        return context.registerReceiver(null, new IntentFilter("android.intent.action.DEVICE_STORAGE_LOW")) == null;
    }

    public final boolean checkRequirements(Context context) {
        return getNotMetRequirements(context) == 0;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.requirements == ((Requirements) obj).requirements;
    }

    public final Requirements filterRequirements(int i) {
        int i2 = this.requirements;
        int i3 = i & i2;
        return i3 == i2 ? this : new Requirements(i3);
    }

    public final int getNotMetRequirements(Context context) {
        int notMetNetworkRequirements = getNotMetNetworkRequirements(context);
        int i = notMetNetworkRequirements;
        if (isChargingRequired()) {
            i = notMetNetworkRequirements;
            if (!isDeviceCharging(context)) {
                i = notMetNetworkRequirements | 8;
            }
        }
        int i2 = i;
        if (isIdleRequired()) {
            i2 = i;
            if (!isDeviceIdle(context)) {
                i2 = i | 4;
            }
        }
        int i3 = i2;
        if (isStorageNotLowRequired()) {
            i3 = i2;
            if (!isStorageNotLow(context)) {
                i3 = i2 | 16;
            }
        }
        return i3;
    }

    public final int getRequirements() {
        return this.requirements;
    }

    public final int hashCode() {
        return this.requirements;
    }

    public final boolean isChargingRequired() {
        return (this.requirements & 8) != 0;
    }

    public final boolean isIdleRequired() {
        return (this.requirements & 4) != 0;
    }

    public final boolean isNetworkRequired() {
        return (this.requirements & 1) != 0;
    }

    public final boolean isStorageNotLowRequired() {
        return (this.requirements & 16) != 0;
    }

    public final boolean isUnmeteredNetworkRequired() {
        return (this.requirements & 2) != 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.requirements);
    }
}
