package com.google.android.gms.gcm;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/zzi.class */
public final class zzi implements Parcelable.Creator<OneoffTask> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ OneoffTask createFromParcel(Parcel parcel) {
        return new OneoffTask(parcel, (zzi) null);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ OneoffTask[] newArray(int i) {
        return new OneoffTask[i];
    }
}
