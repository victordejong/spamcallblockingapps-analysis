package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzc.class */
public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new zzv();
    @SafeParcelable.Field
    private int zzaq;
    @SafeParcelable.Field
    private final boolean zzel;
    @SafeParcelable.Field
    private final boolean zzem;
    @SafeParcelable.Field
    private final String zzes;
    @SafeParcelable.Field
    private final String zzet;
    @SafeParcelable.Field
    private final byte[] zzeu;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzc(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) String str2, @SafeParcelable.Param(id = 5) byte[] bArr, @SafeParcelable.Param(id = 6) boolean z2) {
        this.zzaq = 0;
        this.zzaq = i;
        this.zzel = z;
        this.zzes = str;
        this.zzet = str2;
        this.zzeu = bArr;
        this.zzem = z2;
    }

    public zzc(boolean z, String str, String str2, byte[] bArr, boolean z2) {
        this.zzaq = 0;
        this.zzel = z;
        this.zzes = null;
        this.zzet = null;
        this.zzeu = null;
        this.zzem = false;
    }

    public final String toString() {
        byte[] bArr;
        StringBuilder sb = new StringBuilder();
        sb.append("MetadataImpl { ");
        sb.append("{ eventStatus: '");
        sb.append(this.zzaq);
        sb.append("' } ");
        sb.append("{ uploadable: '");
        sb.append(this.zzel);
        sb.append("' } ");
        if (this.zzes != null) {
            sb.append("{ completionToken: '");
            sb.append(this.zzes);
            sb.append("' } ");
        }
        if (this.zzet != null) {
            sb.append("{ accountName: '");
            sb.append(this.zzet);
            sb.append("' } ");
        }
        if (this.zzeu != null) {
            sb.append("{ ssbContext: [ ");
            for (byte b : this.zzeu) {
                sb.append("0x");
                sb.append(Integer.toHexString(b));
                sb.append(" ");
            }
            sb.append("] } ");
        }
        sb.append("{ contextOnly: '");
        sb.append(this.zzem);
        sb.append("' } ");
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.zzaq);
        SafeParcelWriter.m14461c(parcel, 2, this.zzel);
        SafeParcelWriter.m14447q(parcel, 3, this.zzes, false);
        SafeParcelWriter.m14447q(parcel, 4, this.zzet, false);
        SafeParcelWriter.m14458f(parcel, 5, this.zzeu, false);
        SafeParcelWriter.m14461c(parcel, 6, this.zzem);
        SafeParcelWriter.m14462b(parcel, a);
    }

    public final void zzf(int i) {
        this.zzaq = i;
    }
}
