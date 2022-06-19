package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
@KeepForSdk
@SafeParcelable.Class(creator = "FeatureCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/Feature.class */
public class Feature extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new zzc();
    @SafeParcelable.Field(getter = "getName", m4805id = 1)
    private final String zza;
    @Deprecated
    @SafeParcelable.Field(getter = "getOldVersion", m4805id = 2)
    private final int zzb;
    @SafeParcelable.Field(defaultValue = "-1", getter = "getVersion", m4805id = 3)
    private final long zzc;

    @SafeParcelable.Constructor
    public Feature(@SafeParcelable.Param(m4804id = 1) String str, @SafeParcelable.Param(m4804id = 2) int i, @SafeParcelable.Param(m4804id = 3) long j) {
        this.zza = str;
        this.zzb = i;
        this.zzc = j;
    }

    @KeepForSdk
    public Feature(String str, long j) {
        this.zza = str;
        this.zzc = j;
        this.zzb = -1;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Feature) {
            Feature feature = (Feature) obj;
            return ((getName() != null && getName().equals(feature.getName())) || (getName() == null && feature.getName() == null)) && getVersion() == feature.getVersion();
        }
        return false;
    }

    @KeepForSdk
    public String getName() {
        return this.zza;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    @KeepForSdk
    public long getVersion() {
        ?? r0 = this.zzc;
        char c = r0;
        if (r0 == -1) {
            c = this.zzb;
        }
        return c;
    }

    public final int hashCode() {
        return Objects.hashCode(getName(), Long.valueOf(getVersion()));
    }

    public final String toString() {
        Objects.ToStringHelper stringHelper = Objects.toStringHelper(this);
        stringHelper.add(AppMeasurementSdk.ConditionalUserProperty.NAME, getName());
        stringHelper.add("version", Long.valueOf(getVersion()));
        return stringHelper.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getName(), false);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        SafeParcelWriter.writeLong(parcel, 3, getVersion());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
