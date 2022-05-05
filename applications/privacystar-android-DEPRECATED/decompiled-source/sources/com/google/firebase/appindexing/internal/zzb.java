package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "MetadataImplCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzb.class */
public final class zzb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzb> CREATOR = new zzw();
    @SafeParcelable.Field(getter = "getEventStatus", m344id = 1)
    private int zzaq;
    @SafeParcelable.Field(getter = "isUploadable", m344id = 2)
    private final boolean zzca;
    @SafeParcelable.Field(getter = "isContextOnly", m344id = 6)
    private final boolean zzcb;
    @SafeParcelable.Field(getter = "getCompletionToken", m344id = 3)
    private final String zzcg;
    @SafeParcelable.Field(getter = "getAccountName", m344id = 4)
    private final String zzch;
    @SafeParcelable.Field(getter = "getSsbContext", m344id = 5)
    private final byte[] zzci;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzb(@SafeParcelable.Param(m343id = 1) int i, @SafeParcelable.Param(m343id = 2) boolean z, @SafeParcelable.Param(m343id = 3) String str, @SafeParcelable.Param(m343id = 4) String str2, @SafeParcelable.Param(m343id = 5) byte[] bArr, @SafeParcelable.Param(m343id = 6) boolean z2) {
        this.zzaq = 0;
        this.zzaq = i;
        this.zzca = z;
        this.zzcg = str;
        this.zzch = str2;
        this.zzci = bArr;
        this.zzcb = z2;
    }

    public zzb(boolean z, String str, String str2, byte[] bArr, boolean z2) {
        this.zzaq = 0;
        this.zzca = z;
        this.zzcg = null;
        this.zzch = null;
        this.zzci = null;
        this.zzcb = false;
    }

    public final String toString() {
        byte[] bArr;
        StringBuilder sb = new StringBuilder();
        sb.append("MetadataImpl { ");
        sb.append("{ eventStatus: '");
        sb.append(this.zzaq);
        sb.append("' } ");
        sb.append("{ uploadable: '");
        sb.append(this.zzca);
        sb.append("' } ");
        if (this.zzcg != null) {
            sb.append("{ completionToken: '");
            sb.append(this.zzcg);
            sb.append("' } ");
        }
        if (this.zzch != null) {
            sb.append("{ accountName: '");
            sb.append(this.zzch);
            sb.append("' } ");
        }
        if (this.zzci != null) {
            sb.append("{ ssbContext: [ ");
            for (byte b : this.zzci) {
                sb.append("0x");
                sb.append(Integer.toHexString(b));
                sb.append(" ");
            }
            sb.append("] } ");
        }
        sb.append("{ contextOnly: '");
        sb.append(this.zzcb);
        sb.append("' } ");
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zzaq);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzca);
        SafeParcelWriter.writeString(parcel, 3, this.zzcg, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzch, false);
        SafeParcelWriter.writeByteArray(parcel, 5, this.zzci, false);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zzcb);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final void zzd(int i) {
        this.zzaq = i;
    }
}
