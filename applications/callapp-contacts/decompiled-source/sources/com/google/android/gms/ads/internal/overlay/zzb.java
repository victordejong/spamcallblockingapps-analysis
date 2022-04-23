package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzb.class */
public final class zzb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzb> CREATOR = new zzc();
    public final Intent intent;
    public final String mimeType;
    public final String packageName;
    public final String url;
    public final zzv zzdjj;
    private final String zzdsu;
    public final String zzdsv;
    public final String zzdsw;
    private final String zzdsx;
    public final boolean zzdsy;

    public zzb(Intent intent, zzv zzvVar) {
        this(null, null, null, null, null, null, null, intent, d.a(zzvVar).asBinder(), false);
    }

    public zzb(String str, zzv zzvVar, boolean z) {
        this(null, str, null, null, null, null, null, null, d.a(zzvVar).asBinder(), true);
    }

    public zzb(String str, String str2, String str3, String str4, String str5, String str6, String str7, Intent intent, IBinder iBinder, boolean z) {
        this.zzdsu = str;
        this.url = str2;
        this.mimeType = str3;
        this.packageName = str4;
        this.zzdsv = str5;
        this.zzdsw = str6;
        this.zzdsx = str7;
        this.intent = intent;
        this.zzdjj = (zzv) d.a(b.a.a(iBinder));
        this.zzdsy = z;
    }

    public zzb(String str, String str2, String str3, String str4, String str5, String str6, String str7, zzv zzvVar) {
        this(str, str2, str3, str4, str5, str6, str7, null, d.a(zzvVar).asBinder(), false);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.zzdsu, false);
        a.a(parcel, 3, this.url, false);
        a.a(parcel, 4, this.mimeType, false);
        a.a(parcel, 5, this.packageName, false);
        a.a(parcel, 6, this.zzdsv, false);
        a.a(parcel, 7, this.zzdsw, false);
        a.a(parcel, 8, this.zzdsx, false);
        a.a(parcel, 9, this.intent, i, false);
        a.a(parcel, 10, d.a(this.zzdjj).asBinder());
        a.a(parcel, 11, this.zzdsy);
        a.b(parcel, a2);
    }
}
