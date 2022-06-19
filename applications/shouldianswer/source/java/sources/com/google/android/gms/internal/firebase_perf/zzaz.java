package com.google.android.gms.internal.firebase_perf;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.firebase-perf.zzay;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzaz.class */
public class zzaz implements Parcelable {
    public static final Parcelable.Creator<zzaz> CREATOR = new zzay();
    private long zzhl;
    private long zzhm;

    public zzaz() {
        this.zzhl = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        this.zzhm = System.nanoTime();
    }

    private zzaz(Parcel parcel) {
        this.zzhl = parcel.readLong();
        this.zzhm = parcel.readLong();
    }

    public /* synthetic */ zzaz(Parcel parcel, zzay zzayVar) {
        this(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final void reset() {
        this.zzhl = TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
        this.zzhm = System.nanoTime();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.zzhl);
        parcel.writeLong(this.zzhm);
    }

    public final long zzbx() {
        return this.zzhl;
    }

    public final long zzby() {
        return TimeUnit.NANOSECONDS.toMicros(System.nanoTime() - this.zzhm);
    }

    public final long zzbz() {
        return this.zzhl + zzby();
    }

    public final long zzk(com.google.android.gms.internal.firebase-perf.zzaz zzazVar) {
        return TimeUnit.NANOSECONDS.toMicros(zzazVar.zzhm - this.zzhm);
    }
}
