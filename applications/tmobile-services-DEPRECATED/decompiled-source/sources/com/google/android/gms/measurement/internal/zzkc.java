package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzmu;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkc.class */
public final class zzkc {

    /* renamed from: a */
    final /* synthetic */ zzju f9645a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkc(zzju zzjuVar) {
        this.f9645a = zzjuVar;
    }

    @VisibleForTesting
    @WorkerThread
    /* renamed from: c */
    private final void m11124c(long j, boolean z) {
        this.f9645a.mo11316e();
        if (this.f9645a.f9354a.m11357p()) {
            this.f9645a.m11312k().f9202u.m11432b(j);
            this.f9645a.mo11081c().m11552L().m11539b("Session started, time", Long.valueOf(this.f9645a.mo11085a().mo14334b()));
            Long valueOf = Long.valueOf(j / 1000);
            this.f9645a.m11600o().m11270a0("auto", "_sid", valueOf, j);
            this.f9645a.m11312k().f9199r.m11439a(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", valueOf.longValue());
            if (this.f9645a.m11311l().m10880r(zzat.f8949k0) && z) {
                bundle.putLong("_aib", 1L);
            }
            this.f9645a.m11600o().m11276U("auto", "_s", j, bundle);
            if (zzmu.m11891a() && this.f9645a.m11311l().m10880r(zzat.f8959p0)) {
                String a = this.f9645a.m11312k().f9207z.m11428a();
                if (!TextUtils.isEmpty(a)) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("_ffr", a);
                    this.f9645a.m11600o().m11276U("auto", "_ssr", j, bundle2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: a */
    public final void m11126a() {
        this.f9645a.mo11316e();
        if (this.f9645a.m11312k().m11446w(this.f9645a.mo11085a().mo14335a())) {
            this.f9645a.m11312k().f9199r.m11439a(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                this.f9645a.mo11081c().m11552L().m11540a("Detected application was in foreground");
                m11124c(this.f9645a.mo11085a().mo14335a(), false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: b */
    public final void m11125b(long j, boolean z) {
        this.f9645a.mo11316e();
        this.f9645a.m11145E();
        if (this.f9645a.m11312k().m11446w(j)) {
            this.f9645a.m11312k().f9199r.m11439a(true);
        }
        this.f9645a.m11312k().f9202u.m11432b(j);
        if (this.f9645a.m11312k().f9199r.m11438b()) {
            m11124c(j, z);
        }
    }
}
