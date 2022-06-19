package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzmi.class */
public final class zzmi extends zzmo {
    public static final Parcelable.Creator<zzmi> CREATOR = new eab();
    private final String description;
    private final String mimeType;
    private final int zzbds;
    private final byte[] zzbdt;

    public zzmi(Parcel parcel) {
        super("APIC");
        this.mimeType = parcel.readString();
        this.description = parcel.readString();
        this.zzbds = parcel.readInt();
        this.zzbdt = parcel.createByteArray();
    }

    public zzmi(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.mimeType = str;
        this.description = null;
        this.zzbds = 3;
        this.zzbdt = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzmi zzmiVar = (zzmi) obj;
        return this.zzbds == zzmiVar.zzbds && ede.m15194a(this.mimeType, zzmiVar.mimeType) && ede.m15194a(this.description, zzmiVar.description) && Arrays.equals(this.zzbdt, zzmiVar.zzbdt);
    }

    public final int hashCode() {
        int i = this.zzbds;
        String str = this.mimeType;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.description;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return ((((((i + 527) * 31) + hashCode) * 31) + i2) * 31) + Arrays.hashCode(this.zzbdt);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mimeType);
        parcel.writeString(this.description);
        parcel.writeInt(this.zzbds);
        parcel.writeByteArray(this.zzbdt);
    }
}
