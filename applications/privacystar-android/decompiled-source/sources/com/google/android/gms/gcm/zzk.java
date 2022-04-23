package com.google.android.gms.gcm;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/zzk.class */
final class zzk implements Parcelable.Creator<PeriodicTask> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PeriodicTask createFromParcel(Parcel parcel) {
        return new PeriodicTask(parcel, (zzk) null);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PeriodicTask[] newArray(int i) {
        return new PeriodicTask[i];
    }
}
