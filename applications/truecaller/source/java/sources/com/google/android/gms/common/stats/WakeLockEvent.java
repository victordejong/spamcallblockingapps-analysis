package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
@KeepForSdk
@Deprecated
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/stats/WakeLockEvent.class */
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new zza();
    @SafeParcelable.VersionField

    /* renamed from: a */
    public final int f6115a;
    @SafeParcelable.Field

    /* renamed from: b */
    public final long f6116b;
    @SafeParcelable.Field

    /* renamed from: c */
    public int f6117c;
    @SafeParcelable.Field

    /* renamed from: d */
    public final String f6118d;
    @SafeParcelable.Field

    /* renamed from: e */
    public final String f6119e;
    @SafeParcelable.Field

    /* renamed from: f */
    public final String f6120f;
    @SafeParcelable.Field

    /* renamed from: g */
    public final int f6121g;
    @SafeParcelable.Field

    /* renamed from: h */
    public final List<String> f6122h;
    @SafeParcelable.Field

    /* renamed from: i */
    public final String f6123i;
    @SafeParcelable.Field

    /* renamed from: j */
    public final long f6124j;
    @SafeParcelable.Field

    /* renamed from: k */
    public int f6125k;
    @SafeParcelable.Field

    /* renamed from: l */
    public final String f6126l;
    @SafeParcelable.Field

    /* renamed from: m */
    public final float f6127m;
    @SafeParcelable.Field

    /* renamed from: n */
    public final long f6128n;
    @SafeParcelable.Field

    /* renamed from: o */
    public final boolean f6129o;

    /* renamed from: p */
    public long f6130p = -1;

    @SafeParcelable.Constructor
    public WakeLockEvent(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) long j, @SafeParcelable.Param(id = 11) int i2, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) int i3, @SafeParcelable.Param(id = 6) List<String> list, @SafeParcelable.Param(id = 12) String str2, @SafeParcelable.Param(id = 8) long j2, @SafeParcelable.Param(id = 14) int i4, @SafeParcelable.Param(id = 10) String str3, @SafeParcelable.Param(id = 13) String str4, @SafeParcelable.Param(id = 15) float f, @SafeParcelable.Param(id = 16) long j3, @SafeParcelable.Param(id = 17) String str5, @SafeParcelable.Param(id = 18) boolean z) {
        this.f6115a = i;
        this.f6116b = j;
        this.f6117c = i2;
        this.f6118d = str;
        this.f6119e = str3;
        this.f6120f = str5;
        this.f6121g = i3;
        this.f6122h = list;
        this.f6123i = str2;
        this.f6124j = j2;
        this.f6125k = i4;
        this.f6126l = str4;
        this.f6127m = f;
        this.f6128n = j3;
        this.f6129o = z;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    /* renamed from: o2 */
    public final String mo38799o2() {
        List<String> list = this.f6122h;
        String str = this.f6118d;
        int i = this.f6121g;
        String str2 = "";
        String join = list == null ? "" : TextUtils.join(",", list);
        int i2 = this.f6125k;
        String str3 = this.f6119e;
        String str4 = str3;
        if (str3 == null) {
            str4 = "";
        }
        String str5 = this.f6126l;
        String str6 = str5;
        if (str5 == null) {
            str6 = "";
        }
        float f = this.f6127m;
        String str7 = this.f6120f;
        if (str7 != null) {
            str2 = str7;
        }
        boolean z = this.f6129o;
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
        C22128a.m8666T0(sb, "\t", str4, "\t", str6);
        sb.append("\t");
        sb.append(f);
        sb.append("\t");
        sb.append(str2);
        sb.append("\t");
        sb.append(z);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.f6115a;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        long j = this.f6116b;
        parcel.writeInt(524290);
        parcel.writeLong(j);
        SafeParcelWriter.m38846q(parcel, 4, this.f6118d, false);
        int i3 = this.f6121g;
        parcel.writeInt(262149);
        parcel.writeInt(i3);
        SafeParcelWriter.m38844s(parcel, 6, this.f6122h, false);
        long j2 = this.f6124j;
        parcel.writeInt(524296);
        parcel.writeLong(j2);
        SafeParcelWriter.m38846q(parcel, 10, this.f6119e, false);
        int i4 = this.f6117c;
        parcel.writeInt(262155);
        parcel.writeInt(i4);
        SafeParcelWriter.m38846q(parcel, 12, this.f6123i, false);
        SafeParcelWriter.m38846q(parcel, 13, this.f6126l, false);
        int i5 = this.f6125k;
        parcel.writeInt(262158);
        parcel.writeInt(i5);
        float f = this.f6127m;
        parcel.writeInt(262159);
        parcel.writeFloat(f);
        long j3 = this.f6128n;
        parcel.writeInt(524304);
        parcel.writeLong(j3);
        SafeParcelWriter.m38846q(parcel, 17, this.f6120f, false);
        boolean z = this.f6129o;
        parcel.writeInt(262162);
        parcel.writeInt(z ? 1 : 0);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final int zza() {
        return this.f6117c;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long zzb() {
        return this.f6130p;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long zzc() {
        return this.f6116b;
    }
}
