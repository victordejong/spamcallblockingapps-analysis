package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.List;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/stats/WakeLockEvent.class */
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new C12091d();
    final int zza;
    private final long zzb;
    private int zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;
    private final int zzg;
    private final List<String> zzh;
    private final String zzi;
    private final long zzj;
    private int zzk;
    private final String zzl;
    private final float zzm;
    private final long zzn;
    private final boolean zzo;
    private long zzp = -1;

    public WakeLockEvent(int i, long j, int i2, String str, int i3, List<String> list, String str2, long j2, int i4, String str3, String str4, float f, long j3, String str5, boolean z) {
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
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zza);
        C12050a.m19111a(parcel, 2, this.zzb);
        C12050a.m19104a(parcel, 4, this.zzd, false);
        C12050a.m19112a(parcel, 5, this.zzg);
        C12050a.m19103a(parcel, 6, this.zzh);
        C12050a.m19111a(parcel, 8, this.zzj);
        C12050a.m19104a(parcel, 10, this.zze, false);
        C12050a.m19112a(parcel, 11, this.zzc);
        C12050a.m19104a(parcel, 12, this.zzi, false);
        C12050a.m19104a(parcel, 13, this.zzl, false);
        C12050a.m19112a(parcel, 14, this.zzk);
        C12050a.m19113a(parcel, 15, this.zzm);
        C12050a.m19111a(parcel, 16, this.zzn);
        C12050a.m19104a(parcel, 17, this.zzf, false);
        C12050a.m19101a(parcel, 18, this.zzo);
        C12050a.m19095b(parcel, m19116a);
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final int zzb() {
        return this.zzc;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long zzc() {
        return this.zzp;
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
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(join).length() + str4.length() + str6.length() + str2.length());
        sb.append("\t");
        sb.append(str);
        sb.append("\t");
        sb.append(i);
        sb.append("\t");
        sb.append(join);
        sb.append("\t");
        sb.append(i2);
        sb.append("\t");
        sb.append(str4);
        sb.append("\t");
        sb.append(str6);
        sb.append("\t");
        sb.append(f);
        sb.append("\t");
        sb.append(str2);
        sb.append("\t");
        sb.append(z);
        return sb.toString();
    }
}
