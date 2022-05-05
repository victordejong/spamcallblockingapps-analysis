package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/ConnectionEvent.class */
public final class ConnectionEvent extends StatsEvent {
    public static final Parcelable.Creator<ConnectionEvent> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final int f4074a;

    /* renamed from: b  reason: collision with root package name */
    final long f4075b;
    int c;
    final String d;
    final String e;
    final String f;
    final String g;
    final String h;
    final String i;
    final long j;
    final long k;
    private long l = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConnectionEvent(int i, long j, int i2, String str, String str2, String str3, String str4, String str5, String str6, long j2, long j3) {
        this.f4074a = i;
        this.f4075b = j;
        this.c = i2;
        this.d = str;
        this.e = str2;
        this.f = str3;
        this.g = str4;
        this.h = str5;
        this.i = str6;
        this.j = j2;
        this.k = j3;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long a() {
        return this.f4075b;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final int b() {
        return this.c;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long c() {
        return this.l;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final String d() {
        String valueOf = String.valueOf("\t");
        String valueOf2 = String.valueOf(this.d);
        String valueOf3 = String.valueOf(this.e);
        String valueOf4 = String.valueOf("\t");
        String valueOf5 = String.valueOf(this.f);
        String valueOf6 = String.valueOf(this.g);
        String valueOf7 = String.valueOf("\t");
        String str = this.h == null ? BuildConfig.FLAVOR : this.h;
        String valueOf8 = String.valueOf("\t");
        return new StringBuilder(String.valueOf(valueOf).length() + 22 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length() + String.valueOf(valueOf5).length() + String.valueOf(valueOf6).length() + String.valueOf(valueOf7).length() + String.valueOf(str).length() + String.valueOf(valueOf8).length()).append(valueOf).append(valueOf2).append("/").append(valueOf3).append(valueOf4).append(valueOf5).append("/").append(valueOf6).append(valueOf7).append(str).append(valueOf8).append(this.k).toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel);
    }
}
