package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.internal.ads.cqh;
import com.google.android.gms.internal.ads.cyc;
import com.google.android.gms.internal.ads.zzvh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzaq.class */
public final class zzaq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaq> CREATOR = new zzas();
    public final int errorCode;
    public final String zzacu;

    public zzaq(String str, int i) {
        this.zzacu = str == null ? "" : str;
        this.errorCode = i;
    }

    public static zzaq zzc(Throwable th) {
        zzvh m17322a = cqh.m17322a(th);
        return new zzaq(cyc.m17069a(th.getMessage()) ? m17322a.zzchs : th.getMessage(), m17322a.errorCode);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 1, this.zzacu, false);
        C12050a.m19112a(parcel, 2, this.errorCode);
        C12050a.m19095b(parcel, m19116a);
    }
}
