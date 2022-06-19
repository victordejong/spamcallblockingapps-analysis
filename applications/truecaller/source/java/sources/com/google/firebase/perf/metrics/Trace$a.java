package com.google.firebase.perf.metrics;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/google/firebase/perf/metrics/Trace$a.class */
public class Trace$a implements Parcelable.Creator<Trace> {
    @Override // android.os.Parcelable.Creator
    public Trace createFromParcel(Parcel parcel) {
        return new Trace(parcel, false, (Trace$a) null);
    }

    @Override // android.os.Parcelable.Creator
    public Trace[] newArray(int i) {
        return new Trace[i];
    }
}
