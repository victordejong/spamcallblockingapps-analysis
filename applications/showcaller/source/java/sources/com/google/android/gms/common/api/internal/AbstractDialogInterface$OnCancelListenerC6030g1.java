package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.C6084b;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.base.HandlerC7287f;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.common.api.internal.g1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/g1.class */
public abstract class AbstractDialogInterface$OnCancelListenerC6030g1 extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* renamed from: e */
    protected volatile boolean f19289e;

    /* renamed from: f */
    protected final AtomicReference<C6021d1> f19290f = new AtomicReference<>(null);

    /* renamed from: g */
    private final Handler f19291g = new HandlerC7287f(Looper.getMainLooper());

    /* renamed from: h */
    protected final C6084b f19292h;

    public AbstractDialogInterface$OnCancelListenerC6030g1(AbstractC6031h abstractC6031h, C6084b c6084b) {
        super(abstractC6031h);
        this.f19292h = c6084b;
    }

    /* renamed from: l */
    public final void m17329l() {
        this.f19290f.set(null);
        mo17264p();
    }

    /* renamed from: m */
    public final void m17328m(ConnectionResult connectionResult, int i) {
        this.f19290f.set(null);
        mo17265o(connectionResult, i);
    }

    /* renamed from: n */
    private static final int m17327n(C6021d1 c6021d1) {
        if (c6021d1 == null) {
            return -1;
        }
        return c6021d1.m17379a();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: e */
    public final void mo17332e(int i, int i2, Intent intent) {
        C6021d1 c6021d1 = this.f19290f.get();
        if (i != 1) {
            if (i == 2) {
                int mo17220g = this.f19292h.mo17220g(m17440b());
                if (mo17220g == 0) {
                    m17329l();
                    return;
                } else if (c6021d1 == null) {
                    return;
                } else {
                    if (c6021d1.m17378b().m17506k0() == 18 && mo17220g == 18) {
                        return;
                    }
                }
            }
        } else if (i2 == -1) {
            m17329l();
            return;
        } else if (i2 == 0) {
            if (c6021d1 == null) {
                return;
            }
            int i3 = 13;
            if (intent != null) {
                i3 = intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13);
            }
            m17328m(new ConnectionResult(i3, null, c6021d1.m17378b().toString()), m17327n(c6021d1));
            return;
        }
        if (c6021d1 != null) {
            m17328m(c6021d1.m17378b(), c6021d1.m17379a());
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: f */
    public final void mo17331f(Bundle bundle) {
        super.mo17331f(bundle);
        if (bundle != null) {
            this.f19290f.set(bundle.getBoolean("resolving_error", false) ? new C6021d1(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: i */
    public final void mo17330i(Bundle bundle) {
        super.mo17330i(bundle);
        C6021d1 c6021d1 = this.f19290f.get();
        if (c6021d1 == null) {
            return;
        }
        bundle.putBoolean("resolving_error", true);
        bundle.putInt("failed_client_id", c6021d1.m17379a());
        bundle.putInt("failed_status", c6021d1.m17378b().m17506k0());
        bundle.putParcelable("failed_resolution", c6021d1.m17378b().m17504m0());
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: j */
    public void mo17267j() {
        super.mo17267j();
        this.f19289e = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: k */
    public void mo17266k() {
        super.mo17266k();
        this.f19289e = false;
    }

    /* renamed from: o */
    protected abstract void mo17265o(ConnectionResult connectionResult, int i);

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        m17328m(new ConnectionResult(13, null), m17327n(this.f19290f.get()));
    }

    /* renamed from: p */
    protected abstract void mo17264p();

    /* renamed from: q */
    public final void m17326q(ConnectionResult connectionResult, int i) {
        C6021d1 c6021d1 = new C6021d1(connectionResult, i);
        if (this.f19290f.compareAndSet(null, c6021d1)) {
            this.f19291g.post(new RunnableC6027f1(this, c6021d1));
        }
    }
}
