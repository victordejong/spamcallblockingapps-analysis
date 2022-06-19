package com.google.firebase.perf.metrics;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/metrics/zzb.class */
public class zzb implements Parcelable {
    public static final Parcelable.Creator<zzb> CREATOR = new zza();
    private final String mName;
    private AtomicLong zzfk;

    private zzb(Parcel parcel) {
        this.mName = parcel.readString();
        this.zzfk = new AtomicLong(parcel.readLong());
    }

    public /* synthetic */ zzb(Parcel parcel, zza zzaVar) {
        this(parcel);
    }

    public zzb(String str) {
        this.mName = str;
        this.zzfk = new AtomicLong(0L);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final long getCount() {
        return this.zzfk.get();
    }

    public final String getName() {
        return this.mName;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mName);
        parcel.writeLong(this.zzfk.get());
    }

    public final void zzl(long j) {
        this.zzfk.addAndGet(j);
    }

    public final void zzm(long j) {
        this.zzfk.set(j);
    }
}
