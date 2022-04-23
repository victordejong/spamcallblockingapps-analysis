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
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new zza();
    @SafeParcelable.VersionField

    /* renamed from: f */
    private final int f7622f;
    @SafeParcelable.Field

    /* renamed from: g */
    private final long f7623g;
    @SafeParcelable.Field

    /* renamed from: h */
    private int f7624h;
    @SafeParcelable.Field

    /* renamed from: i */
    private final String f7625i;
    @SafeParcelable.Field

    /* renamed from: j */
    private final String f7626j;
    @SafeParcelable.Field

    /* renamed from: k */
    private final String f7627k;
    @SafeParcelable.Field

    /* renamed from: l */
    private final int f7628l;
    @SafeParcelable.Field

    /* renamed from: m */
    private final List<String> f7629m;
    @SafeParcelable.Field

    /* renamed from: n */
    private final String f7630n;
    @SafeParcelable.Field

    /* renamed from: o */
    private final long f7631o;
    @SafeParcelable.Field

    /* renamed from: p */
    private int f7632p;
    @SafeParcelable.Field

    /* renamed from: q */
    private final String f7633q;
    @SafeParcelable.Field

    /* renamed from: r */
    private final float f7634r;
    @SafeParcelable.Field

    /* renamed from: s */
    private final long f7635s;
    @SafeParcelable.Field

    /* renamed from: t */
    private final boolean f7636t;

    /* renamed from: u */
    private long f7637u;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public WakeLockEvent(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) long j, @SafeParcelable.Param(id = 11) int i2, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) int i3, @SafeParcelable.Param(id = 6) List<String> list, @SafeParcelable.Param(id = 12) String str2, @SafeParcelable.Param(id = 8) long j2, @SafeParcelable.Param(id = 14) int i4, @SafeParcelable.Param(id = 10) String str3, @SafeParcelable.Param(id = 13) String str4, @SafeParcelable.Param(id = 15) float f, @SafeParcelable.Param(id = 16) long j3, @SafeParcelable.Param(id = 17) String str5, @SafeParcelable.Param(id = 18) boolean z) {
        this.f7622f = i;
        this.f7623g = j;
        this.f7624h = i2;
        this.f7625i = str;
        this.f7626j = str3;
        this.f7627k = str5;
        this.f7628l = i3;
        this.f7637u = -1L;
        this.f7629m = list;
        this.f7630n = str2;
        this.f7631o = j2;
        this.f7632p = i4;
        this.f7633q = str4;
        this.f7634r = f;
        this.f7635s = j3;
        this.f7636t = z;
    }

    public WakeLockEvent(long j, int i, String str, int i2, List<String> list, String str2, long j2, int i3, String str3, String str4, float f, long j3, String str5, boolean z) {
        this(2, j, i, str, i2, list, str2, j2, i3, str3, str4, f, j3, str5, z);
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    /* renamed from: B */
    public final int mo14366B() {
        return this.f7624h;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    /* renamed from: I */
    public final long mo14365I() {
        return this.f7623g;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    /* renamed from: W */
    public final long mo14364W() {
        return this.f7637u;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    /* renamed from: Y */
    public final String mo14363Y() {
        String str = this.f7625i;
        int i = this.f7628l;
        List<String> list = this.f7629m;
        String str2 = "";
        String join = list == null ? "" : TextUtils.join(",", list);
        int i2 = this.f7632p;
        String str3 = this.f7626j;
        String str4 = str3;
        if (str3 == null) {
            str4 = "";
        }
        String str5 = this.f7633q;
        String str6 = str5;
        if (str5 == null) {
            str6 = "";
        }
        float f = this.f7634r;
        String str7 = this.f7627k;
        if (str7 != null) {
            str2 = str7;
        }
        boolean z = this.f7636t;
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

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = SafeParcelWriter.m14463a(parcel);
        SafeParcelWriter.m14453k(parcel, 1, this.f7622f);
        SafeParcelWriter.m14451m(parcel, 2, mo14365I());
        SafeParcelWriter.m14447q(parcel, 4, this.f7625i, false);
        SafeParcelWriter.m14453k(parcel, 5, this.f7628l);
        SafeParcelWriter.m14445s(parcel, 6, this.f7629m, false);
        SafeParcelWriter.m14451m(parcel, 8, this.f7631o);
        SafeParcelWriter.m14447q(parcel, 10, this.f7626j, false);
        SafeParcelWriter.m14453k(parcel, 11, mo14366B());
        SafeParcelWriter.m14447q(parcel, 12, this.f7630n, false);
        SafeParcelWriter.m14447q(parcel, 13, this.f7633q, false);
        SafeParcelWriter.m14453k(parcel, 14, this.f7632p);
        SafeParcelWriter.m14456h(parcel, 15, this.f7634r);
        SafeParcelWriter.m14451m(parcel, 16, this.f7635s);
        SafeParcelWriter.m14447q(parcel, 17, this.f7627k, false);
        SafeParcelWriter.m14461c(parcel, 18, this.f7636t);
        SafeParcelWriter.m14462b(parcel, a);
    }
}
