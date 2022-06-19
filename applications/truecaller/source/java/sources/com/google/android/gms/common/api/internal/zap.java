package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.atomic.AtomicReference;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.C24938p0;
import p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a.RunnableC24942r0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zap.class */
public abstract class zap extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* renamed from: b */
    public volatile boolean f5899b;

    /* renamed from: c */
    public final AtomicReference<C24938p0> f5900c = new AtomicReference<>(null);

    /* renamed from: d */
    public final Handler f5901d = new com.google.android.gms.internal.base.zap(Looper.getMainLooper());

    /* renamed from: e */
    public final GoogleApiAvailability f5902e;

    @VisibleForTesting
    public zap(LifecycleFragment lifecycleFragment, GoogleApiAvailability googleApiAvailability) {
        super(lifecycleFragment);
        this.f5902e = googleApiAvailability;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: d */
    public final void mo38935d(int i, int i2, Intent intent) {
        C24938p0 c24938p0 = this.f5900c.get();
        if (i != 1) {
            if (i == 2) {
                int mo39062e = this.f5902e.mo39062e(m39025b(), GoogleApiAvailabilityLight.f5674a);
                if (mo39062e == 0) {
                    m38930k();
                    return;
                } else if (c24938p0 == null) {
                    return;
                } else {
                    if (c24938p0.f69863b.f5663b == 18 && mo39062e == 18) {
                        return;
                    }
                }
            }
        } else if (i2 == -1) {
            m38930k();
            return;
        } else if (i2 == 0) {
            if (c24938p0 == null) {
                return;
            }
            int i3 = 13;
            if (intent != null) {
                i3 = intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13);
            }
            ConnectionResult connectionResult = new ConnectionResult(i3, null, c24938p0.f69863b.toString());
            int i4 = c24938p0.f69862a;
            this.f5900c.set(null);
            mo38928m(connectionResult, i4);
            return;
        }
        if (c24938p0 != null) {
            m38929l(c24938p0.f69863b, c24938p0.f69862a);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: e */
    public final void mo38934e(Bundle bundle) {
        if (bundle != null) {
            this.f5900c.set(bundle.getBoolean("resolving_error", false) ? new C24938p0(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: h */
    public final void mo38933h(Bundle bundle) {
        C24938p0 c24938p0 = this.f5900c.get();
        if (c24938p0 == null) {
            return;
        }
        bundle.putBoolean("resolving_error", true);
        bundle.putInt("failed_client_id", c24938p0.f69862a);
        bundle.putInt("failed_status", c24938p0.f69863b.f5663b);
        bundle.putParcelable("failed_resolution", c24938p0.f69863b.f5664c);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: i */
    public void mo38932i() {
        this.f5899b = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: j */
    public void mo38931j() {
        this.f5899b = false;
    }

    /* renamed from: k */
    public final void m38930k() {
        this.f5900c.set(null);
        mo38927n();
    }

    /* renamed from: l */
    public final void m38929l(ConnectionResult connectionResult, int i) {
        this.f5900c.set(null);
        mo38928m(connectionResult, i);
    }

    /* renamed from: m */
    public abstract void mo38928m(ConnectionResult connectionResult, int i);

    /* renamed from: n */
    public abstract void mo38927n();

    /* renamed from: o */
    public final void m38926o(ConnectionResult connectionResult, int i) {
        C24938p0 c24938p0 = new C24938p0(connectionResult, i);
        if (this.f5900c.compareAndSet(null, c24938p0)) {
            this.f5901d.post(new RunnableC24942r0(this, c24938p0));
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        ConnectionResult connectionResult = new ConnectionResult(13, null);
        C24938p0 c24938p0 = this.f5900c.get();
        int i = c24938p0 == null ? -1 : c24938p0.f69862a;
        this.f5900c.set(null);
        mo38928m(connectionResult, i);
    }
}
