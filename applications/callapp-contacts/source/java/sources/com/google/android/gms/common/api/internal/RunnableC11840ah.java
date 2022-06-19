package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import java.util.Map;
/* renamed from: com.google.android.gms.common.api.internal.ah */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/ah.class */
final class RunnableC11840ah implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ConnectionResult f39234a;

    /* renamed from: b */
    final /* synthetic */ C11841ai f39235b;

    public RunnableC11840ah(C11841ai c11841ai, ConnectionResult connectionResult) {
        this.f39235b = c11841ai;
        this.f39234a = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        map = this.f39235b.f39239d.f39361s;
        C11838af c11838af = (C11838af) map.get(this.f39235b.f39237b);
        if (c11838af == null) {
            return;
        }
        if (!this.f39234a.isSuccess()) {
            c11838af.m19429a(this.f39234a, (Exception) null);
            return;
        }
        this.f39235b.f39238c = true;
        if (this.f39235b.f39236a.requiresSignIn()) {
            this.f39235b.m19406a();
            return;
        }
        try {
            this.f39235b.f39236a.getRemoteService(null, this.f39235b.f39236a.mo19185a());
        } catch (SecurityException e) {
            Log.e("GoogleApiManager", "Failed to get service from broker. ", e);
            this.f39235b.f39236a.disconnect("Failed to get service from broker.");
            c11838af.m19429a(new ConnectionResult(10), (Exception) null);
        }
    }
}
