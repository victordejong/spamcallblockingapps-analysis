package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p235d.p248r.C7068e;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/stats/WakeLockEvent.class */
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new C7068e();

    /* renamed from: a */
    public final int f6653a;

    /* renamed from: b */
    public final long f6654b;

    /* renamed from: c */
    public int f6655c;

    /* renamed from: d */
    public final String f6656d;

    /* renamed from: e */
    public final String f6657e;

    /* renamed from: f */
    public final String f6658f;

    /* renamed from: g */
    public final int f6659g;

    /* renamed from: h */
    public final List<String> f6660h;

    /* renamed from: i */
    public final String f6661i;

    /* renamed from: j */
    public final long f6662j;

    /* renamed from: k */
    public int f6663k;

    /* renamed from: l */
    public final String f6664l;

    /* renamed from: m */
    public final float f6665m;

    /* renamed from: n */
    public final long f6666n;

    /* renamed from: o */
    public final boolean f6667o;

    /* renamed from: p */
    public long f6668p;

    public WakeLockEvent(int i, long j, int i2, String str, int i3, List<String> list, String str2, long j2, int i4, String str3, String str4, float f, long j3, String str5, boolean z) {
        this.f6653a = i;
        this.f6654b = j;
        this.f6655c = i2;
        this.f6656d = str;
        this.f6657e = str3;
        this.f6658f = str5;
        this.f6659g = i3;
        this.f6668p = -1L;
        this.f6660h = list;
        this.f6661i = str2;
        this.f6662j = j2;
        this.f6663k = i4;
        this.f6664l = str4;
        this.f6665m = f;
        this.f6666n = j3;
        this.f6667o = z;
    }

    public WakeLockEvent(long j, int i, String str, int i2, List<String> list, String str2, long j2, int i3, String str3, String str4, float f, long j3, String str5, boolean z) {
        this(2, j, i, str, i2, list, str2, j2, i3, str3, str4, f, j3, str5, z);
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    /* renamed from: H */
    public final int mo31903H() {
        return this.f6655c;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    /* renamed from: I */
    public final long mo31902I() {
        return this.f6654b;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    /* renamed from: c */
    public final long mo31901c() {
        return this.f6668p;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    /* renamed from: j */
    public final String mo31900j() {
        String str = this.f6656d;
        int i = this.f6659g;
        List<String> list = this.f6660h;
        String str2 = "";
        String join = list == null ? "" : TextUtils.join(",", list);
        int i2 = this.f6663k;
        String str3 = this.f6657e;
        String str4 = str3;
        if (str3 == null) {
            str4 = "";
        }
        String str5 = this.f6664l;
        String str6 = str5;
        if (str5 == null) {
            str6 = "";
        }
        float f = this.f6665m;
        String str7 = this.f6658f;
        if (str7 != null) {
            str2 = str7;
        }
        boolean z = this.f6667o;
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
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6653a);
        C7031b.m21224a(parcel, 2, mo31902I());
        C7031b.m21215a(parcel, 4, this.f6656d, false);
        C7031b.m21225a(parcel, 5, this.f6659g);
        C7031b.m21203b(parcel, 6, this.f6660h, false);
        C7031b.m21224a(parcel, 8, this.f6662j);
        C7031b.m21215a(parcel, 10, this.f6657e, false);
        C7031b.m21225a(parcel, 11, mo31903H());
        C7031b.m21215a(parcel, 12, this.f6661i, false);
        C7031b.m21215a(parcel, 13, this.f6664l, false);
        C7031b.m21225a(parcel, 14, this.f6663k);
        C7031b.m21226a(parcel, 15, this.f6665m);
        C7031b.m21224a(parcel, 16, this.f6666n);
        C7031b.m21215a(parcel, 17, this.f6658f, false);
        C7031b.m21212a(parcel, 18, this.f6667o);
        C7031b.m21229a(parcel, a);
    }
}
