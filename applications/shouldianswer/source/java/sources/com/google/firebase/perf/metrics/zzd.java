package com.google.firebase.perf.metrics;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/metrics/zzd.class */
final class zzd implements Parcelable.Creator<Trace> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Trace createFromParcel(Parcel parcel) {
        return new Trace(parcel, false, null);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Trace[] newArray(int i) {
        return new Trace[i];
    }
}
