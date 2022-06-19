package com.google.android.gms.common.api.internal;

import android.os.Handler;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Objects;
import p1727n3.p1788g.C26177c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zaab.class */
public final class zaab extends zap {

    /* renamed from: f */
    public final C26177c<ApiKey<?>> f5782f = new C26177c<>(0);

    /* renamed from: g */
    public final GoogleApiManager f5783g;

    @VisibleForTesting
    public zaab(LifecycleFragment lifecycleFragment, GoogleApiManager googleApiManager, GoogleApiAvailability googleApiAvailability) {
        super(lifecycleFragment, googleApiAvailability);
        this.f5783g = googleApiManager;
        this.f5762a.mo38922Gm("ConnectionlessLifecycleHelper", this);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: g */
    public final void mo39012g() {
        if (!this.f5782f.isEmpty()) {
            this.f5783g.m39030g(this);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: i */
    public final void mo38932i() {
        this.f5899b = true;
        if (!this.f5782f.isEmpty()) {
            this.f5783g.m39030g(this);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: j */
    public final void mo38931j() {
        this.f5899b = false;
        GoogleApiManager googleApiManager = this.f5783g;
        Objects.requireNonNull(googleApiManager);
        synchronized (GoogleApiManager.f5744r) {
            if (googleApiManager.f5756k == this) {
                googleApiManager.f5756k = null;
                googleApiManager.f5757l.clear();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap
    /* renamed from: m */
    public final void mo38928m(ConnectionResult connectionResult, int i) {
        this.f5783g.m39026k(connectionResult, i);
    }

    @Override // com.google.android.gms.common.api.internal.zap
    /* renamed from: n */
    public final void mo38927n() {
        Handler handler = this.f5783g.f5759n;
        handler.sendMessage(handler.obtainMessage(3));
    }
}
