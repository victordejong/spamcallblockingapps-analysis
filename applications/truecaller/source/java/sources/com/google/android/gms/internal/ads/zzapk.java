package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzapk.class */
public final class zzapk implements Comparator<zzapj>, Parcelable {
    public static final Parcelable.Creator<zzapk> CREATOR = new zzaph();
    public final int zza;
    private final zzapj[] zzb;
    private int zzc;

    public zzapk(Parcel parcel) {
        zzapj[] zzapjVarArr = (zzapj[]) parcel.createTypedArray(zzapj.CREATOR);
        this.zzb = zzapjVarArr;
        this.zza = zzapjVarArr.length;
    }

    public zzapk(List<zzapj> list) {
        this(false, (zzapj[]) list.toArray(new zzapj[list.size()]));
    }

    private zzapk(boolean z, zzapj... zzapjVarArr) {
        UUID uuid;
        UUID uuid2;
        UUID uuid3;
        zzapj[] zzapjVarArr2 = z ? (zzapj[]) zzapjVarArr.clone() : zzapjVarArr;
        Arrays.sort(zzapjVarArr2, this);
        int i = 1;
        while (true) {
            int length = zzapjVarArr2.length;
            if (i >= length) {
                this.zzb = zzapjVarArr2;
                this.zza = length;
                return;
            }
            uuid = zzapjVarArr2[i - 1].zze;
            uuid2 = zzapjVarArr2[i].zze;
            if (uuid.equals(uuid2)) {
                uuid3 = zzapjVarArr2[i].zze;
                String valueOf = String.valueOf(uuid3);
                valueOf.length();
                throw new IllegalArgumentException("Duplicate data for uuid: ".concat(valueOf));
            }
            i++;
        }
    }

    public zzapk(zzapj... zzapjVarArr) {
        this(true, zzapjVarArr);
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzapj zzapjVar, zzapj zzapjVar2) {
        UUID uuid;
        int i;
        UUID uuid2;
        UUID uuid3;
        UUID uuid4;
        zzapj zzapjVar3 = zzapjVar;
        zzapj zzapjVar4 = zzapjVar2;
        UUID uuid5 = zzamx.zzb;
        uuid = zzapjVar3.zze;
        if (uuid5.equals(uuid)) {
            uuid4 = zzapjVar4.zze;
            if (uuid5.equals(uuid4)) {
                return 0;
            }
            i = 1;
        } else {
            uuid2 = zzapjVar3.zze;
            uuid3 = zzapjVar4.zze;
            i = uuid2.compareTo(uuid3);
        }
        return i;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzapk.class == obj.getClass()) {
            return Arrays.equals(this.zzb, ((zzapk) obj).zzb);
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzc;
        int i2 = i;
        if (i == 0) {
            i2 = Arrays.hashCode(this.zzb);
            this.zzc = i2;
        }
        return i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.zzb, 0);
    }

    public final zzapj zza(int i) {
        return this.zzb[i];
    }
}
