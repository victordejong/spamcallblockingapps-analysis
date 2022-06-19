package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Iterator;
@SafeParcelable.Class(creator = "EventParamsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzaq.class */
public final class zzaq extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzaq> CREATOR = new zzar();
    @SafeParcelable.Field(getter = "z", m4805id = 2)
    private final Bundle zza;

    @SafeParcelable.Constructor
    public zzaq(@SafeParcelable.Param(m4804id = 2) Bundle bundle) {
        this.zza = bundle;
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new zzap(this);
    }

    public final String toString() {
        return this.zza.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 2, zzf(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final Object zza(String str) {
        return this.zza.get(str);
    }

    public final Long zzb(String str) {
        return Long.valueOf(this.zza.getLong(AppMeasurementSdk.ConditionalUserProperty.VALUE));
    }

    public final Double zzc(String str) {
        return Double.valueOf(this.zza.getDouble(AppMeasurementSdk.ConditionalUserProperty.VALUE));
    }

    public final String zzd(String str) {
        return this.zza.getString(str);
    }

    public final int zze() {
        return this.zza.size();
    }

    public final Bundle zzf() {
        return new Bundle(this.zza);
    }
}
