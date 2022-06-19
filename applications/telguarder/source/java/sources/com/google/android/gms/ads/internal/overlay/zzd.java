package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzd.class */
public final class zzd extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzd> CREATOR = new zza();
    public final Intent intent;
    public final String mimeType;
    public final String packageName;
    public final String url;
    public final zzt zzdif;
    private final String zzdsc;
    public final String zzdsd;
    public final String zzdse;
    private final String zzdsf;
    public final boolean zzdsg;

    public zzd(Intent intent, zzt zztVar) {
        this(null, null, null, null, null, null, null, intent, ObjectWrapper.wrap(zztVar).asBinder(), false);
    }

    public zzd(String str, zzt zztVar, boolean z) {
        this(null, str, null, null, null, null, null, null, ObjectWrapper.wrap(zztVar).asBinder(), true);
    }

    public zzd(String str, String str2, String str3, String str4, String str5, String str6, String str7, Intent intent, IBinder iBinder, boolean z) {
        this.zzdsc = str;
        this.url = str2;
        this.mimeType = str3;
        this.packageName = str4;
        this.zzdsd = str5;
        this.zzdse = str6;
        this.zzdsf = str7;
        this.intent = intent;
        this.zzdif = (zzt) ObjectWrapper.unwrap(IObjectWrapper.Stub.asInterface(iBinder));
        this.zzdsg = z;
    }

    public zzd(String str, String str2, String str3, String str4, String str5, String str6, String str7, zzt zztVar) {
        this(str, str2, str3, str4, str5, str6, str7, null, ObjectWrapper.wrap(zztVar).asBinder(), false);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zzdsc, false);
        SafeParcelWriter.writeString(parcel, 3, this.url, false);
        SafeParcelWriter.writeString(parcel, 4, this.mimeType, false);
        SafeParcelWriter.writeString(parcel, 5, this.packageName, false);
        SafeParcelWriter.writeString(parcel, 6, this.zzdsd, false);
        SafeParcelWriter.writeString(parcel, 7, this.zzdse, false);
        SafeParcelWriter.writeString(parcel, 8, this.zzdsf, false);
        SafeParcelWriter.writeParcelable(parcel, 9, this.intent, i, false);
        SafeParcelWriter.writeIBinder(parcel, 10, ObjectWrapper.wrap(this.zzdif).asBinder(), false);
        SafeParcelWriter.writeBoolean(parcel, 11, this.zzdsg);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
