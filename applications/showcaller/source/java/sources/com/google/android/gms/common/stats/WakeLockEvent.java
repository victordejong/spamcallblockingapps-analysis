package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.safeparcel.C6170a;
import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/WakeLockEvent.class */
public final class WakeLockEvent extends StatsEvent {
    @RecentlyNonNull
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new C6220d();

    /* renamed from: d */
    final int f19686d;

    /* renamed from: e */
    private final long f19687e;

    /* renamed from: f */
    private int f19688f;

    /* renamed from: g */
    private final String f19689g;

    /* renamed from: h */
    private final String f19690h;

    /* renamed from: i */
    private final String f19691i;

    /* renamed from: j */
    private final int f19692j;

    /* renamed from: k */
    private final List<String> f19693k;

    /* renamed from: l */
    private final String f19694l;

    /* renamed from: m */
    private final long f19695m;

    /* renamed from: n */
    private int f19696n;

    /* renamed from: o */
    private final String f19697o;

    /* renamed from: p */
    private final float f19698p;

    /* renamed from: q */
    private final long f19699q;

    /* renamed from: r */
    private final boolean f19700r;

    /* renamed from: s */
    private long f19701s = -1;

    public WakeLockEvent(int i, long j, int i2, String str, int i3, List<String> list, String str2, long j2, int i4, String str3, String str4, float f, long j3, String str5, boolean z) {
        this.f19686d = i;
        this.f19687e = j;
        this.f19688f = i2;
        this.f19689g = str;
        this.f19690h = str3;
        this.f19691i = str5;
        this.f19692j = i3;
        this.f19693k = list;
        this.f19694l = str2;
        this.f19695m = j2;
        this.f19696n = i4;
        this.f19697o = str4;
        this.f19698p = f;
        this.f19699q = j3;
        this.f19700r = z;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    /* renamed from: c */
    public final long mo16851c() {
        return this.f19701s;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    /* renamed from: k0 */
    public final long mo16850k0() {
        return this.f19687e;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    /* renamed from: l0 */
    public final int mo16849l0() {
        return this.f19688f;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    @RecentlyNonNull
    /* renamed from: m0 */
    public final String mo16848m0() {
        List<String> list = this.f19693k;
        String str = this.f19689g;
        int i = this.f19692j;
        String str2 = "";
        String join = list == null ? "" : TextUtils.join(",", list);
        int i2 = this.f19696n;
        String str3 = this.f19690h;
        String str4 = str3;
        if (str3 == null) {
            str4 = "";
        }
        String str5 = this.f19697o;
        String str6 = str5;
        if (str5 == null) {
            str6 = "";
        }
        float f = this.f19698p;
        String str7 = this.f19691i;
        if (str7 != null) {
            str2 = str7;
        }
        boolean z = this.f19700r;
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

    @Override // android.os.Parcelable
    public final void writeToParcel(@RecentlyNonNull Parcel parcel, int i) {
        int m16947a = C6170a.m16947a(parcel);
        C6170a.m16937k(parcel, 1, this.f19686d);
        C6170a.m16934n(parcel, 2, this.f19687e);
        C6170a.m16930r(parcel, 4, this.f19689g, false);
        C6170a.m16937k(parcel, 5, this.f19692j);
        C6170a.m16928t(parcel, 6, this.f19693k, false);
        C6170a.m16934n(parcel, 8, this.f19695m);
        C6170a.m16930r(parcel, 10, this.f19690h, false);
        C6170a.m16937k(parcel, 11, this.f19688f);
        C6170a.m16930r(parcel, 12, this.f19694l, false);
        C6170a.m16930r(parcel, 13, this.f19697o, false);
        C6170a.m16937k(parcel, 14, this.f19696n);
        C6170a.m16940h(parcel, 15, this.f19698p);
        C6170a.m16934n(parcel, 16, this.f19699q);
        C6170a.m16930r(parcel, 17, this.f19691i, false);
        C6170a.m16945c(parcel, 18, this.f19700r);
        C6170a.m16946b(parcel, m16947a);
    }
}
