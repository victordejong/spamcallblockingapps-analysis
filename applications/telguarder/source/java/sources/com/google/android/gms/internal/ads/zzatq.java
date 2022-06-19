package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzatq.class */
public final class zzatq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzatq> CREATOR = new zzatt();
    private final ApplicationInfo applicationInfo;
    public final String packageName;
    public final zzazn zzdtx;
    public final PackageInfo zzdue;
    public final List<String> zzduo;
    public final String zzdux;
    public final Bundle zzdxi;
    public final String zzdxj;
    public zzdpf zzdxk;
    public String zzdxl;

    public zzatq(Bundle bundle, zzazn zzaznVar, ApplicationInfo applicationInfo, String str, List<String> list, PackageInfo packageInfo, String str2, String str3, zzdpf zzdpfVar, String str4) {
        this.zzdxi = bundle;
        this.zzdtx = zzaznVar;
        this.packageName = str;
        this.applicationInfo = applicationInfo;
        this.zzduo = list;
        this.zzdue = packageInfo;
        this.zzdux = str2;
        this.zzdxj = str3;
        this.zzdxk = zzdpfVar;
        this.zzdxl = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 1, this.zzdxi, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzdtx, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.applicationInfo, i, false);
        SafeParcelWriter.writeString(parcel, 4, this.packageName, false);
        SafeParcelWriter.writeStringList(parcel, 5, this.zzduo, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zzdue, i, false);
        SafeParcelWriter.writeString(parcel, 7, this.zzdux, false);
        SafeParcelWriter.writeString(parcel, 9, this.zzdxj, false);
        SafeParcelWriter.writeParcelable(parcel, 10, this.zzdxk, i, false);
        SafeParcelWriter.writeString(parcel, 11, this.zzdxl, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
