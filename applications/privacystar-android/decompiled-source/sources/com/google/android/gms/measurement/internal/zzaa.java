package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Iterator;
@SafeParcelable.Class(creator = "EventParamsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzaa.class */
public final class zzaa extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzaa> CREATOR = new zzac();
    @SafeParcelable.Field(getter = "z", m344id = 2)
    private final Bundle zzaim;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzaa(@SafeParcelable.Param(m343id = 2) Bundle bundle) {
        this.zzaim = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object get(String str) {
        return this.zzaim.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Long getLong(String str) {
        return Long.valueOf(this.zzaim.getLong(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String getString(String str) {
        return this.zzaim.getString(str);
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new zzab(this);
    }

    public final int size() {
        return this.zzaim.size();
    }

    public final String toString() {
        return this.zzaim.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 2, zziv(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Double zzbq(String str) {
        return Double.valueOf(this.zzaim.getDouble(str));
    }

    public final Bundle zziv() {
        return new Bundle(this.zzaim);
    }
}
