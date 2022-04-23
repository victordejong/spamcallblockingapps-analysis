package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
@SafeParcelable.Class
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/WakeLockEvent.class */
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new zzb();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f23544a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final long f23545b;
    @SafeParcelable.Field

    /* renamed from: c */
    public int f23546c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final String f23547d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final String f23548e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final String f23549f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final int f23550g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final List<String> f23551h;
    @SafeParcelable.Field

    /* renamed from: i */
    public final String f23552i;
    @SafeParcelable.Field

    /* renamed from: j */
    public final long f23553j;
    @SafeParcelable.Field

    /* renamed from: k */
    public int f23554k;
    @SafeParcelable.Field

    /* renamed from: l */
    public final String f23555l;
    @SafeParcelable.Field

    /* renamed from: m */
    public final float f23556m;
    @SafeParcelable.Field

    /* renamed from: n */
    public final long f23557n;
    @SafeParcelable.Field

    /* renamed from: o */
    public final boolean f23558o;

    /* renamed from: p */
    public long f23559p = -1;

    @SafeParcelable.Constructor
    public WakeLockEvent(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) long j, @SafeParcelable.Param(id = 11) int i2, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) int i3, @SafeParcelable.Param(id = 6) List<String> list, @SafeParcelable.Param(id = 12) String str2, @SafeParcelable.Param(id = 8) long j2, @SafeParcelable.Param(id = 14) int i4, @SafeParcelable.Param(id = 10) String str3, @SafeParcelable.Param(id = 13) String str4, @SafeParcelable.Param(id = 15) float f, @SafeParcelable.Param(id = 16) long j3, @SafeParcelable.Param(id = 17) String str5, @SafeParcelable.Param(id = 18) boolean z) {
        this.f23544a = i;
        this.f23545b = j;
        this.f23546c = i2;
        this.f23547d = str;
        this.f23548e = str3;
        this.f23549f = str5;
        this.f23550g = i3;
        this.f23551h = list;
        this.f23552i = str2;
        this.f23553j = j2;
        this.f23554k = i4;
        this.f23555l = str4;
        this.f23556m = f;
        this.f23557n = j3;
        this.f23558o = z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m17235a(parcel);
        SafeParcelWriter.m17231a(parcel, 1, this.f23544a);
        SafeParcelWriter.m17230a(parcel, 2, zza());
        SafeParcelWriter.m17221a(parcel, 4, this.f23547d, false);
        SafeParcelWriter.m17231a(parcel, 5, this.f23550g);
        SafeParcelWriter.m17209b(parcel, 6, this.f23551h, false);
        SafeParcelWriter.m17230a(parcel, 8, this.f23553j);
        SafeParcelWriter.m17221a(parcel, 10, this.f23548e, false);
        SafeParcelWriter.m17231a(parcel, 11, zzb());
        SafeParcelWriter.m17221a(parcel, 12, this.f23552i, false);
        SafeParcelWriter.m17221a(parcel, 13, this.f23555l, false);
        SafeParcelWriter.m17231a(parcel, 14, this.f23554k);
        SafeParcelWriter.m17232a(parcel, 15, this.f23556m);
        SafeParcelWriter.m17230a(parcel, 16, this.f23557n);
        SafeParcelWriter.m17221a(parcel, 17, this.f23549f, false);
        SafeParcelWriter.m17218a(parcel, 18, this.f23558o);
        SafeParcelWriter.m17234a(parcel, a);
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long zza() {
        return this.f23545b;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final int zzb() {
        return this.f23546c;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long zzc() {
        return this.f23559p;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final String zzd() {
        String str = this.f23547d;
        int i = this.f23550g;
        List<String> list = this.f23551h;
        String str2 = "";
        String join = list == null ? "" : TextUtils.join(",", list);
        int i2 = this.f23554k;
        String str3 = this.f23548e;
        String str4 = str3;
        if (str3 == null) {
            str4 = "";
        }
        String str5 = this.f23555l;
        String str6 = str5;
        if (str5 == null) {
            str6 = "";
        }
        float f = this.f23556m;
        String str7 = this.f23549f;
        if (str7 != null) {
            str2 = str7;
        }
        boolean z = this.f23558o;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(join).length() + String.valueOf(str4).length() + String.valueOf(str6).length() + String.valueOf(str2).length());
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
