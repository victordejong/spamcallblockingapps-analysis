package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.C2664b;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/WakeLockEvent.class */
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new C2698e();

    /* renamed from: a */
    private final int f7464a;

    /* renamed from: b */
    private final long f7465b;

    /* renamed from: c */
    private int f7466c;

    /* renamed from: d */
    private final String f7467d;

    /* renamed from: e */
    private final String f7468e;

    /* renamed from: f */
    private final String f7469f;

    /* renamed from: g */
    private final int f7470g;

    /* renamed from: h */
    private final List<String> f7471h;

    /* renamed from: i */
    private final String f7472i;

    /* renamed from: j */
    private final long f7473j;

    /* renamed from: k */
    private int f7474k;

    /* renamed from: l */
    private final String f7475l;

    /* renamed from: m */
    private final float f7476m;

    /* renamed from: n */
    private final long f7477n;

    /* renamed from: o */
    private final boolean f7478o;

    /* renamed from: p */
    private long f7479p;

    public WakeLockEvent(int i, long j, int i2, String str, int i3, List<String> list, String str2, long j2, int i4, String str3, String str4, float f, long j3, String str5, boolean z) {
        this.f7464a = i;
        this.f7465b = j;
        this.f7466c = i2;
        this.f7467d = str;
        this.f7468e = str3;
        this.f7469f = str5;
        this.f7470g = i3;
        this.f7479p = -1L;
        this.f7471h = list;
        this.f7472i = str2;
        this.f7473j = j2;
        this.f7474k = i4;
        this.f7475l = str4;
        this.f7476m = f;
        this.f7477n = j3;
        this.f7478o = z;
    }

    public WakeLockEvent(long j, int i, String str, int i2, List<String> list, String str2, long j2, int i3, String str3, String str4, float f, long j3, String str5, boolean z) {
        this(2, j, i, str, i2, list, str2, j2, i3, str3, str4, f, j3, str5, z);
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    /* renamed from: a */
    public final long mo13897a() {
        return this.f7465b;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    /* renamed from: b */
    public final int mo13896b() {
        return this.f7466c;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    /* renamed from: c */
    public final long mo13895c() {
        return this.f7479p;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    /* renamed from: d */
    public final String mo13894d() {
        String str = this.f7467d;
        int i = this.f7470g;
        String join = this.f7471h == null ? "" : TextUtils.join(",", this.f7471h);
        int i2 = this.f7474k;
        String str2 = this.f7468e == null ? "" : this.f7468e;
        String str3 = this.f7475l == null ? "" : this.f7475l;
        float f = this.f7476m;
        String str4 = this.f7469f == null ? "" : this.f7469f;
        return new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(join).length() + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length()).append("\t").append(str).append("\t").append(i).append("\t").append(join).append("\t").append(i2).append("\t").append(str2).append("\t").append(str3).append("\t").append(f).append("\t").append(str4).append("\t").append(this.f7478o).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13941a(parcel, 1, this.f7464a);
        C2664b.m13940a(parcel, 2, mo13897a());
        C2664b.m13932a(parcel, 4, this.f7467d, false);
        C2664b.m13941a(parcel, 5, this.f7470g);
        C2664b.m13923b(parcel, 6, this.f7471h, false);
        C2664b.m13940a(parcel, 8, this.f7473j);
        C2664b.m13932a(parcel, 10, this.f7468e, false);
        C2664b.m13941a(parcel, 11, mo13896b());
        C2664b.m13932a(parcel, 12, this.f7472i, false);
        C2664b.m13932a(parcel, 13, this.f7475l, false);
        C2664b.m13941a(parcel, 14, this.f7474k);
        C2664b.m13942a(parcel, 15, this.f7476m);
        C2664b.m13940a(parcel, 16, this.f7477n);
        C2664b.m13932a(parcel, 17, this.f7469f, false);
        C2664b.m13930a(parcel, 18, this.f7478o);
        C2664b.m13943a(parcel, m13944a);
    }
}
