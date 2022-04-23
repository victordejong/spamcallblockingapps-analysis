package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzva.class */
public final class zzva extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzva> CREATOR = new zzvd();
    @SafeParcelable.Field

    /* renamed from: a */
    public final int f28995a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final String f28996b;
    @SafeParcelable.Field

    /* renamed from: c */
    public final String f28997c;
    @SafeParcelable.Field

    /* renamed from: d */
    public zzva f28998d;
    @SafeParcelable.Field

    /* renamed from: e */
    public IBinder f28999e;

    @SafeParcelable.Constructor
    public zzva(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) zzva zzvaVar, @SafeParcelable.Param(id = 5) IBinder iBinder) {
        this.f28995a = i;
        this.f28996b = str;
        this.f28997c = str2;
        this.f28998d = zzvaVar;
        this.f28999e = iBinder;
    }

    /* renamed from: f */
    public final AdError m11207f() {
        zzva zzvaVar = this.f28998d;
        return new AdError(this.f28995a, this.f28996b, this.f28997c, zzvaVar == null ? null : new AdError(zzvaVar.f28995a, zzvaVar.f28996b, zzvaVar.f28997c));
    }

    /* renamed from: i */
    public final LoadAdError m11206i() {
        zzva zzvaVar = this.f28998d;
        zzyn zzynVar = null;
        AdError adError = zzvaVar == null ? null : new AdError(zzvaVar.f28995a, zzvaVar.f28996b, zzvaVar.f28997c);
        int i = this.f28995a;
        String str = this.f28996b;
        String str2 = this.f28997c;
        IBinder iBinder = this.f28999e;
        if (iBinder != null) {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            zzynVar = queryLocalInterface instanceof zzyn ? (zzyn) queryLocalInterface : new zzyp(iBinder);
        }
        return new LoadAdError(i, str, str2, adError, ResponseInfo.m18093a(zzynVar));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f28995a);
        SafeParcelWriter.m17221a(parcel, 2, this.f28996b, false);
        SafeParcelWriter.m17221a(parcel, 3, this.f28997c, false);
        SafeParcelWriter.m17226a(parcel, 4, (Parcelable) this.f28998d, i, false);
        SafeParcelWriter.m17228a(parcel, 5, this.f28999e, false);
        SafeParcelWriter.m17234a(parcel, a);
    }
}
