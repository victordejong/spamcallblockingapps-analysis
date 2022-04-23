package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.internal.ads.cqh;
import com.google.android.gms.internal.ads.cyc;
import com.google.android.gms.internal.ads.zzvh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzaq.class */
public final class zzaq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaq> CREATOR = new zzas();
    public final int errorCode;
    public final String zzacu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaq(String str, int i) {
        this.zzacu = str == null ? "" : str;
        this.errorCode = i;
    }

    public static zzaq zzc(Throwable th) {
        zzvh a2 = cqh.a(th);
        return new zzaq(cyc.a(th.getMessage()) ? a2.zzchs : th.getMessage(), a2.errorCode);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 1, this.zzacu, false);
        a.a(parcel, 2, this.errorCode);
        a.b(parcel, a2);
    }
}
