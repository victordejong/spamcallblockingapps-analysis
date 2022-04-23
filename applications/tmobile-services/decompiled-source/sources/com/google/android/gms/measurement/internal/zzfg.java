package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfg.class */
public final class zzfg {
    @VisibleForTesting

    /* renamed from: a */
    private final String f9218a;

    /* renamed from: b */
    private final String f9219b;

    /* renamed from: c */
    private final String f9220c;

    /* renamed from: d */
    private final long f9221d;

    /* renamed from: e */
    private final /* synthetic */ zzfd f9222e;

    private zzfg(zzfd zzfdVar, String str, long j) {
        this.f9222e = zzfdVar;
        Preconditions.m14527g(str);
        Preconditions.m14533a(j > 0);
        this.f9218a = String.valueOf(str).concat(":start");
        this.f9219b = String.valueOf(str).concat(":count");
        this.f9220c = String.valueOf(str).concat(":value");
        this.f9221d = j;
    }

    @WorkerThread
    /* renamed from: c */
    private final void m11435c() {
        this.f9222e.mo11316e();
        long a = this.f9222e.mo11085a().mo14335a();
        SharedPreferences.Editor edit = this.f9222e.m11460C().edit();
        edit.remove(this.f9219b);
        edit.remove(this.f9220c);
        edit.putLong(this.f9218a, a);
        edit.apply();
    }

    @WorkerThread
    /* renamed from: d */
    private final long m11434d() {
        return this.f9222e.m11460C().getLong(this.f9218a, 0L);
    }

    @WorkerThread
    /* renamed from: a */
    public final Pair<String, Long> m11437a() {
        long j;
        this.f9222e.mo11316e();
        this.f9222e.mo11316e();
        long d = m11434d();
        if (d == 0) {
            m11435c();
            j = 0;
        } else {
            j = Math.abs(d - this.f9222e.mo11085a().mo14335a());
        }
        long j2 = this.f9221d;
        if (j < j2) {
            return null;
        }
        if (j > (j2 << 1)) {
            m11435c();
            return null;
        }
        String string = this.f9222e.m11460C().getString(this.f9220c, null);
        long j3 = this.f9222e.m11460C().getLong(this.f9219b, 0L);
        m11435c();
        return (string == null || j3 <= 0) ? zzfd.f9180D : new Pair<>(string, Long.valueOf(j3));
    }

    @WorkerThread
    /* renamed from: b */
    public final void m11436b(String str, long j) {
        this.f9222e.mo11316e();
        if (m11434d() == 0) {
            m11435c();
        }
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        long j2 = this.f9222e.m11460C().getLong(this.f9219b, 0L);
        if (j2 <= 0) {
            SharedPreferences.Editor edit = this.f9222e.m11460C().edit();
            edit.putString(this.f9220c, str2);
            edit.putLong(this.f9219b, 1L);
            edit.apply();
            return;
        }
        long j3 = j2 + 1;
        boolean z = (this.f9222e.m11313j().m10992F0().nextLong() & Long.MAX_VALUE) < Long.MAX_VALUE / j3;
        SharedPreferences.Editor edit2 = this.f9222e.m11460C().edit();
        if (z) {
            edit2.putString(this.f9220c, str2);
        }
        edit2.putLong(this.f9219b, j3);
        edit2.apply();
    }
}
