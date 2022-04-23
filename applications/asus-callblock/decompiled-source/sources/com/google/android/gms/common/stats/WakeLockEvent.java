package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.asus.updatesdk.BuildConfig;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/WakeLockEvent.class */
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new g();

    /* renamed from: a  reason: collision with root package name */
    final int f4076a;

    /* renamed from: b  reason: collision with root package name */
    final long f4077b;
    int c;
    final String d;
    final String e;
    final String f;
    final int g;
    final List<String> h;
    final String i;
    final long j;
    int k;
    final String l;
    final float m;
    final long n;
    private long o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WakeLockEvent(int i, long j, int i2, String str, int i3, List<String> list, String str2, long j2, int i4, String str3, String str4, float f, long j3, String str5) {
        this.f4076a = i;
        this.f4077b = j;
        this.c = i2;
        this.d = str;
        this.e = str3;
        this.f = str5;
        this.g = i3;
        this.o = -1L;
        this.h = list;
        this.i = str2;
        this.j = j2;
        this.k = i4;
        this.l = str4;
        this.m = f;
        this.n = j3;
    }

    public WakeLockEvent(long j, int i, String str, int i2, List<String> list, String str2, long j2, int i3, String str3, String str4, float f, long j3, String str5) {
        this(2, j, i, str, i2, list, str2, j2, i3, str3, str4, f, j3, str5);
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long a() {
        return this.f4077b;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final int b() {
        return this.c;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long c() {
        return this.o;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final String d() {
        String valueOf = String.valueOf("\t");
        String valueOf2 = String.valueOf(this.d);
        String valueOf3 = String.valueOf("\t");
        int i = this.g;
        String valueOf4 = String.valueOf("\t");
        String join = this.h == null ? BuildConfig.FLAVOR : TextUtils.join(",", this.h);
        String valueOf5 = String.valueOf("\t");
        int i2 = this.k;
        String valueOf6 = String.valueOf("\t");
        String str = this.e == null ? BuildConfig.FLAVOR : this.e;
        String valueOf7 = String.valueOf("\t");
        String str2 = this.l == null ? BuildConfig.FLAVOR : this.l;
        String valueOf8 = String.valueOf("\t");
        float f = this.m;
        String valueOf9 = String.valueOf("\t");
        String str3 = this.f == null ? BuildConfig.FLAVOR : this.f;
        return new StringBuilder(String.valueOf(valueOf).length() + 37 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length() + String.valueOf(join).length() + String.valueOf(valueOf5).length() + String.valueOf(valueOf6).length() + String.valueOf(str).length() + String.valueOf(valueOf7).length() + String.valueOf(str2).length() + String.valueOf(valueOf8).length() + String.valueOf(valueOf9).length() + String.valueOf(str3).length()).append(valueOf).append(valueOf2).append(valueOf3).append(i).append(valueOf4).append(join).append(valueOf5).append(i2).append(valueOf6).append(str).append(valueOf7).append(str2).append(valueOf8).append(f).append(valueOf9).append(str3).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        g.a(this, parcel);
    }
}
