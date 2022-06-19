package com.google.android.gms.common.api.internal;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.C5984a;
import java.util.Map;
/* renamed from: com.google.android.gms.common.api.internal.e0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/e0.class */
final class RunnableC6023e0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ ConnectionResult f19254d;

    /* renamed from: e */
    final /* synthetic */ C6026f0 f19255e;

    public RunnableC6023e0(C6026f0 c6026f0, ConnectionResult connectionResult) {
        this.f19255e = c6026f0;
        this.f19254d = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        C6012b c6012b;
        C5984a.AbstractC5993f abstractC5993f;
        C5984a.AbstractC5993f abstractC5993f2;
        C5984a.AbstractC5993f abstractC5993f3;
        C5984a.AbstractC5993f abstractC5993f4;
        map = this.f19255e.f19284f.f19273s;
        c6012b = this.f19255e.f19280b;
        C6017c0 c6017c0 = (C6017c0) map.get(c6012b);
        if (c6017c0 == null) {
            return;
        }
        if (!this.f19254d.m17502o0()) {
            c6017c0.m17399p(this.f19254d, null);
            return;
        }
        this.f19255e.f19283e = true;
        abstractC5993f = this.f19255e.f19279a;
        if (abstractC5993f.mo5855p()) {
            this.f19255e.m17339h();
            return;
        }
        try {
            abstractC5993f3 = this.f19255e.f19279a;
            abstractC5993f4 = this.f19255e.f19279a;
            abstractC5993f3.mo17318d(null, abstractC5993f4.mo17068c());
        } catch (SecurityException e) {
            Log.e("GoogleApiManager", "Failed to get service from broker. ", e);
            abstractC5993f2 = this.f19255e.f19279a;
            abstractC5993f2.mo17317e("Failed to get service from broker.");
            c6017c0.m17399p(new ConnectionResult(10), null);
        }
    }
}
