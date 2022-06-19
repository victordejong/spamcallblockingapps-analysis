package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
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
        this(null, null, null, null, null, null, null, intent, BinderC12129d.m18979a(zzvVar).asBinder(), false);
    }

    public zzb(String str, zzv zzvVar, boolean z) {
        this(null, str, null, null, null, null, null, null, BinderC12129d.m18979a(zzvVar).asBinder(), true);
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
        this.zzdjj = (zzv) BinderC12129d.m18980a(AbstractC12126b.AbstractBinderC12127a.m18981a(iBinder));
        this.zzdsy = z;
    }

    public zzb(String str, String str2, String str3, String str4, String str5, String str6, String str7, zzv zzvVar) {
        this(str, str2, str3, str4, str5, str6, str7, null, BinderC12129d.m18979a(zzvVar).asBinder(), false);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 2, this.zzdsu, false);
        C12050a.m19104a(parcel, 3, this.url, false);
        C12050a.m19104a(parcel, 4, this.mimeType, false);
        C12050a.m19104a(parcel, 5, this.packageName, false);
        C12050a.m19104a(parcel, 6, this.zzdsv, false);
        C12050a.m19104a(parcel, 7, this.zzdsw, false);
        C12050a.m19104a(parcel, 8, this.zzdsx, false);
        C12050a.m19107a(parcel, 9, this.intent, i, false);
        C12050a.m19109a(parcel, 10, BinderC12129d.m18979a(this.zzdjj).asBinder());
        C12050a.m19101a(parcel, 11, this.zzdsy);
        C12050a.m19095b(parcel, m19116a);
    }
}
