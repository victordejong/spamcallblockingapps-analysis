package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzaja.class */
public final class zzaja extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaja> CREATOR = new ie();
    public final byte[] data;
    public final int statusCode;
    public final boolean zzak;
    public final long zzal;
    public final String zzchs;
    public final String[] zzdju;
    public final String[] zzdjv;
    public final boolean zzdjw;

    /* JADX INFO: Access modifiers changed from: package-private */
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
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zzdjw);
        a.a(parcel, 2, this.zzchs, false);
        a.a(parcel, 3, this.statusCode);
        a.a(parcel, 4, this.data, false);
        a.a(parcel, 5, this.zzdju, false);
        a.a(parcel, 6, this.zzdjv, false);
        a.a(parcel, 7, this.zzak);
        a.a(parcel, 8, this.zzal);
        a.b(parcel, a2);
    }
}
