package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
import javax.annotation.Nullable;
@KeepForSdk
@Deprecated
@SafeParcelable.Class(creator = "WakeLockEventCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/WakeLockEvent.class */
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new zza();
    @SafeParcelable.VersionField(m4803id = 1)
    public final int zza;
    @SafeParcelable.Field(getter = "getTimeMillis", m4805id = 2)
    private final long zzb;
    @SafeParcelable.Field(getter = "getEventType", m4805id = 11)
    private int zzc;
    @SafeParcelable.Field(getter = "getWakeLockName", m4805id = 4)
    private final String zzd;
    @SafeParcelable.Field(getter = "getSecondaryWakeLockName", m4805id = 10)
    private final String zze;
    @SafeParcelable.Field(getter = "getCodePackage", m4805id = 17)
    private final String zzf;
    @SafeParcelable.Field(getter = "getWakeLockType", m4805id = 5)
    private final int zzg;
    @Nullable
    @SafeParcelable.Field(getter = "getCallingPackages", m4805id = 6)
    private final List<String> zzh;
    @SafeParcelable.Field(getter = "getEventKey", m4805id = 12)
    private final String zzi;
    @SafeParcelable.Field(getter = "getElapsedRealtime", m4805id = 8)
    private final long zzj;
    @SafeParcelable.Field(getter = "getDeviceState", m4805id = 14)
    private int zzk;
    @SafeParcelable.Field(getter = "getHostPackage", m4805id = 13)
    private final String zzl;
    @SafeParcelable.Field(getter = "getBeginPowerPercentage", m4805id = 15)
    private final float zzm;
    @SafeParcelable.Field(getter = "getTimeout", m4805id = 16)
    private final long zzn;
    @SafeParcelable.Field(getter = "getAcquiredWithTimeout", m4805id = 18)
    private final boolean zzo;
    private long zzp = -1;

    @SafeParcelable.Constructor
    public WakeLockEvent(@SafeParcelable.Param(m4804id = 1) int i, @SafeParcelable.Param(m4804id = 2) long j, @SafeParcelable.Param(m4804id = 11) int i2, @SafeParcelable.Param(m4804id = 4) String str, @SafeParcelable.Param(m4804id = 5) int i3, @SafeParcelable.Param(m4804id = 6) @Nullable List<String> list, @SafeParcelable.Param(m4804id = 12) String str2, @SafeParcelable.Param(m4804id = 8) long j2, @SafeParcelable.Param(m4804id = 14) int i4, @SafeParcelable.Param(m4804id = 10) String str3, @SafeParcelable.Param(m4804id = 13) String str4, @SafeParcelable.Param(m4804id = 15) float f, @SafeParcelable.Param(m4804id = 16) long j3, @SafeParcelable.Param(m4804id = 17) String str5, @SafeParcelable.Param(m4804id = 18) boolean z) {
        this.zza = i;
        this.zzb = j;
        this.zzc = i2;
        this.zzd = str;
        this.zze = str3;
        this.zzf = str5;
        this.zzg = i3;
        this.zzh = list;
        this.zzi = str2;
        this.zzj = j2;
        this.zzk = i4;
        this.zzl = str4;
        this.zzm = f;
        this.zzn = j3;
        this.zzo = z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeLong(parcel, 2, this.zzb);
        SafeParcelWriter.writeString(parcel, 4, this.zzd, false);
        SafeParcelWriter.writeInt(parcel, 5, this.zzg);
        SafeParcelWriter.writeStringList(parcel, 6, this.zzh, false);
        SafeParcelWriter.writeLong(parcel, 8, this.zzj);
        SafeParcelWriter.writeString(parcel, 10, this.zze, false);
        SafeParcelWriter.writeInt(parcel, 11, this.zzc);
        SafeParcelWriter.writeString(parcel, 12, this.zzi, false);
        SafeParcelWriter.writeString(parcel, 13, this.zzl, false);
        SafeParcelWriter.writeInt(parcel, 14, this.zzk);
        SafeParcelWriter.writeFloat(parcel, 15, this.zzm);
        SafeParcelWriter.writeLong(parcel, 16, this.zzn);
        SafeParcelWriter.writeString(parcel, 17, this.zzf, false);
        SafeParcelWriter.writeBoolean(parcel, 18, this.zzo);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final int zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long zzb() {
        return this.zzp;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final String zzd() {
        List<String> list = this.zzh;
        String str = this.zzd;
        int i = this.zzg;
        String str2 = "";
        String join = list == null ? "" : TextUtils.join(",", list);
        int i2 = this.zzk;
        String str3 = this.zze;
        String str4 = str3;
        if (str3 == null) {
            str4 = "";
        }
        String str5 = this.zzl;
        String str6 = str5;
        if (str5 == null) {
            str6 = "";
        }
        float f = this.zzm;
        String str7 = this.zzf;
        if (str7 != null) {
            str2 = str7;
        }
        boolean z = this.zzo;
        int length = String.valueOf(str).length();
        int length2 = String.valueOf(join).length();
        StringBuilder sb = new StringBuilder(str2.length() + str6.length() + str4.length() + length + 51 + length2);
        sb.append("\t");
        sb.append(str);
        sb.append("\t");
        sb.append(i);
        sb.append("\t");
        sb.append(join);
        sb.append("\t");
        sb.append(i2);
        C0082b.m8749m(sb, "\t", str4, "\t", str6);
        sb.append("\t");
        sb.append(f);
        sb.append("\t");
        sb.append(str2);
        sb.append("\t");
        sb.append(z);
        return sb.toString();
    }
}
