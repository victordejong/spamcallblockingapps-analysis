package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzmi.class */
public final class zzmi extends zzmo {
    public static final Parcelable.Creator<zzmi> CREATOR = new zzmk();
    private final String description;
    private final String mimeType;
    private final int zzbdi;
    private final byte[] zzbdj;

    public zzmi(Parcel parcel) {
        super("APIC");
        this.mimeType = parcel.readString();
        this.description = parcel.readString();
        this.zzbdi = parcel.readInt();
        this.zzbdj = parcel.createByteArray();
    }

    public zzmi(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.mimeType = str;
        this.description = null;
        this.zzbdi = 3;
        this.zzbdj = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzmi zzmiVar = (zzmi) obj;
        return this.zzbdi == zzmiVar.zzbdi && zzpt.zza(this.mimeType, zzmiVar.mimeType) && zzpt.zza(this.description, zzmiVar.description) && Arrays.equals(this.zzbdj, zzmiVar.zzbdj);
    }

    public final int hashCode() {
        int i = this.zzbdi;
        String str = this.mimeType;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.description;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return ((((((i + 527) * 31) + hashCode) * 31) + i2) * 31) + Arrays.hashCode(this.zzbdj);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mimeType);
        parcel.writeString(this.description);
        parcel.writeInt(this.zzbdi);
        parcel.writeByteArray(this.zzbdj);
    }
}
