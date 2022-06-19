package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjo.class */
public final class zzjo implements Parcelable, Comparator<zza> {
    public static final Parcelable.Creator<zzjo> CREATOR = new zzjq();
    private int zzahx;
    private final zza[] zzaoi;
    public final int zzaoj;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjo$zza.class */
    public static final class zza implements Parcelable {
        public static final Parcelable.Creator<zza> CREATOR = new zzjs();
        private final byte[] data;
        private final String mimeType;
        private final UUID uuid;
        private int zzahx;
        public final boolean zzaon;

        public zza(Parcel parcel) {
            this.uuid = new UUID(parcel.readLong(), parcel.readLong());
            this.mimeType = parcel.readString();
            this.data = parcel.createByteArray();
            this.zzaon = parcel.readByte() != 0;
        }

        public zza(UUID uuid, String str, byte[] bArr) {
            this(uuid, str, bArr, false);
        }

        private zza(UUID uuid, String str, byte[] bArr, boolean z) {
            this.uuid = (UUID) zzpg.checkNotNull(uuid);
            this.mimeType = (String) zzpg.checkNotNull(str);
            this.data = (byte[]) zzpg.checkNotNull(bArr);
            this.zzaon = false;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            zza zzaVar = (zza) obj;
            return this.mimeType.equals(zzaVar.mimeType) && zzpt.zza(this.uuid, zzaVar.uuid) && Arrays.equals(this.data, zzaVar.data);
        }

        public final int hashCode() {
            if (this.zzahx == 0) {
                this.zzahx = (((this.uuid.hashCode() * 31) + this.mimeType.hashCode()) * 31) + Arrays.hashCode(this.data);
            }
            return this.zzahx;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.uuid.getMostSignificantBits());
            parcel.writeLong(this.uuid.getLeastSignificantBits());
            parcel.writeString(this.mimeType);
            parcel.writeByteArray(this.data);
            parcel.writeByte(this.zzaon ? (byte) 1 : (byte) 0);
        }
    }

    public zzjo(Parcel parcel) {
        zza[] zzaVarArr = (zza[]) parcel.createTypedArray(zza.CREATOR);
        this.zzaoi = zzaVarArr;
        this.zzaoj = zzaVarArr.length;
    }

    public zzjo(List<zza> list) {
        this(false, (zza[]) list.toArray(new zza[list.size()]));
    }

    private zzjo(boolean z, zza... zzaVarArr) {
        zza[] zzaVarArr2 = z ? (zza[]) zzaVarArr.clone() : zzaVarArr;
        Arrays.sort(zzaVarArr2, this);
        for (int i = 1; i < zzaVarArr2.length; i++) {
            if (zzaVarArr2[i - 1].uuid.equals(zzaVarArr2[i].uuid)) {
                String valueOf = String.valueOf(zzaVarArr2[i].uuid);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
                sb.append("Duplicate data for uuid: ");
                sb.append(valueOf);
                throw new IllegalArgumentException(sb.toString());
            }
        }
        this.zzaoi = zzaVarArr2;
        this.zzaoj = zzaVarArr2.length;
    }

    public zzjo(zza... zzaVarArr) {
        this(true, zzaVarArr);
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zza zzaVar, zza zzaVar2) {
        zza zzaVar3 = zzaVar;
        zza zzaVar4 = zzaVar2;
        return zzhf.UUID_NIL.equals(zzaVar3.uuid) ? zzhf.UUID_NIL.equals(zzaVar4.uuid) ? 0 : 1 : zzaVar3.uuid.compareTo(zzaVar4.uuid);
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
        if (obj != null && getClass() == obj.getClass()) {
            return Arrays.equals(this.zzaoi, ((zzjo) obj).zzaoi);
        }
        return false;
    }

    public final int hashCode() {
        if (this.zzahx == 0) {
            this.zzahx = Arrays.hashCode(this.zzaoi);
        }
        return this.zzahx;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.zzaoi, 0);
    }

    public final zza zzac(int i) {
        return this.zzaoi[i];
    }
}
