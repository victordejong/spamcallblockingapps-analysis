package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzaja.class */
public final class zzaja extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaja> CREATOR = new C12630ie();
    public final byte[] data;
    public final int statusCode;
    public final boolean zzak;
    public final long zzal;
    public final String zzchs;
    public final String[] zzdju;
    public final String[] zzdjv;
    public final boolean zzdjw;

    public zzaja(boolean z, String str, int i, byte[] bArr, String[] strArr, String[] strArr2, boolean z2, long j) {
        this.zzdjw = z;
        this.zzchs = str;
        this.statusCode = i;
        this.data = bArr;
        this.zzdju = strArr;
        this.zzdjv = strArr2;
        this.zzak = z2;
        this.zzal = j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19101a(parcel, 1, this.zzdjw);
        C12050a.m19104a(parcel, 2, this.zzchs, false);
        C12050a.m19112a(parcel, 3, this.statusCode);
        C12050a.m19100a(parcel, 4, this.data, false);
        C12050a.m19097a(parcel, 5, this.zzdju, false);
        C12050a.m19097a(parcel, 6, this.zzdjv, false);
        C12050a.m19101a(parcel, 7, this.zzak);
        C12050a.m19111a(parcel, 8, this.zzal);
        C12050a.m19095b(parcel, m19116a);
    }
}
