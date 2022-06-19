package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzarf.class */
public final class zzarf implements Comparator<zzare>, Parcelable {
    public static final Parcelable.Creator<zzarf> CREATOR = new zzarc();
    public final int zza;
    private final zzare[] zzb;
    private int zzc;

    public zzarf(Parcel parcel) {
        zzare[] zzareVarArr = (zzare[]) parcel.createTypedArray(zzare.CREATOR);
        this.zzb = zzareVarArr;
        this.zza = zzareVarArr.length;
    }

    public zzarf(List<zzare> list) {
        this(false, (zzare[]) list.toArray(new zzare[list.size()]));
    }

    private zzarf(boolean z, zzare... zzareVarArr) {
        UUID uuid;
        UUID uuid2;
        UUID uuid3;
        zzare[] zzareVarArr2 = z ? (zzare[]) zzareVarArr.clone() : zzareVarArr;
        Arrays.sort(zzareVarArr2, this);
        int i = 1;
        while (true) {
            int length = zzareVarArr2.length;
            if (i >= length) {
                this.zzb = zzareVarArr2;
                this.zza = length;
                return;
            }
            uuid = zzareVarArr2[i - 1].zze;
            uuid2 = zzareVarArr2[i].zze;
            if (uuid.equals(uuid2)) {
                uuid3 = zzareVarArr2[i].zze;
                throw new IllegalArgumentException("Duplicate data for uuid: ".concat(String.valueOf(uuid3)));
            }
            i++;
        }
    }

    public zzarf(zzare... zzareVarArr) {
        this(true, zzareVarArr);
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzare zzareVar, zzare zzareVar2) {
        UUID uuid;
        int i;
        UUID uuid2;
        UUID uuid3;
        UUID uuid4;
        zzare zzareVar3 = zzareVar;
        zzare zzareVar4 = zzareVar2;
        UUID uuid5 = zzaor.zzb;
        uuid = zzareVar3.zze;
        if (uuid5.equals(uuid)) {
            uuid4 = zzareVar4.zze;
            if (uuid5.equals(uuid4)) {
                return 0;
            }
            i = 1;
        } else {
            uuid2 = zzareVar3.zze;
            uuid3 = zzareVar4.zze;
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
        if (obj != null && zzarf.class == obj.getClass()) {
            return Arrays.equals(this.zzb, ((zzarf) obj).zzb);
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

    public final zzare zza(int i) {
        return this.zzb[i];
    }
}
