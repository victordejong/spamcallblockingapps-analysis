package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
@SafeParcelable.Class(creator = "DocumentSectionCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzl.class */
public final class zzl extends AbstractSafeParcelable {
    @SafeParcelable.Field(m344id = 1)
    private final String zzq;
    @SafeParcelable.Field(m344id = 3)
    private final zzs zzr;
    @SafeParcelable.Field(defaultValue = "-1", m344id = 4)
    public final int zzs;
    @SafeParcelable.Field(m344id = 5)
    private final byte[] zzt;
    private static final int zzo = Integer.parseInt("-1");
    public static final Parcelable.Creator<zzl> CREATOR = new zzm();
    private static final zzs zzp = new zzt("SsbContext").zzb(true).zzc("blob").zzb();

    public zzl(String str, zzs zzsVar) {
        this(str, zzsVar, zzo, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzl(@SafeParcelable.Param(m343id = 1) String str, @SafeParcelable.Param(m343id = 3) zzs zzsVar, @SafeParcelable.Param(m343id = 4) int i, @SafeParcelable.Param(m343id = 5) byte[] bArr) {
        String str2;
        boolean z = i == zzo || zzr.zza(i) != null;
        StringBuilder sb = new StringBuilder(32);
        sb.append("Invalid section type ");
        sb.append(i);
        Preconditions.checkArgument(z, sb.toString());
        this.zzq = str;
        this.zzr = zzsVar;
        this.zzs = i;
        this.zzt = bArr;
        if (this.zzs == zzo || zzr.zza(this.zzs) != null) {
            str2 = (this.zzq == null || this.zzt == null) ? null : "Both content and blobContent set";
        } else {
            int i2 = this.zzs;
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append("Invalid section type ");
            sb2.append(i2);
            str2 = sb2.toString();
        }
        if (str2 != null) {
            throw new IllegalArgumentException(str2);
        }
    }

    @VisibleForTesting
    public zzl(String str, zzs zzsVar, String str2) {
        this(str, zzsVar, zzr.zzb(str2), null);
    }

    public zzl(byte[] bArr, zzs zzsVar) {
        this(null, zzsVar, zzo, bArr);
    }

    public static zzl zza(byte[] bArr) {
        return new zzl(bArr, zzp);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzq, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzr, i, false);
        SafeParcelWriter.writeInt(parcel, 4, this.zzs);
        SafeParcelWriter.writeByteArray(parcel, 5, this.zzt, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
