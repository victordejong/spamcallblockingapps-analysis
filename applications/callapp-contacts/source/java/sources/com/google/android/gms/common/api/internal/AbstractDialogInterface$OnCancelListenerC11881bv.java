package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.C11937b;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.base.HandlerC13160j;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.common.api.internal.bv */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bv.class */
public abstract class AbstractDialogInterface$OnCancelListenerC11881bv extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* renamed from: c */
    protected volatile boolean f39318c;

    /* renamed from: e */
    protected final C11937b f39320e;

    /* renamed from: d */
    protected final AtomicReference<C11878bs> f39319d = new AtomicReference<>(null);

    /* renamed from: b */
    private final Handler f39317b = new HandlerC13160j(Looper.getMainLooper());

    public AbstractDialogInterface$OnCancelListenerC11881bv(AbstractC11898h abstractC11898h, C11937b c11937b) {
        super(abstractC11898h);
        this.f39320e = c11937b;
    }

    /* renamed from: a */
    private static final int m19374a(C11878bs c11878bs) {
        if (c11878bs == null) {
            return -1;
        }
        return c11878bs.f39311a;
    }

    /* renamed from: c */
    public final void m19369c(ConnectionResult connectionResult, int i) {
        this.f39319d.set(null);
        mo19307a(connectionResult, i);
    }

    /* renamed from: f */
    public final void m19368f() {
        this.f39319d.set(null);
        mo19303e();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: a */
    public final void mo19376a(int i, int i2, Intent intent) {
        C11878bs c11878bs = this.f39319d.get();
        if (i != 1) {
            if (i == 2) {
                int mo19275a = this.f39320e.mo19275a(m19430a());
                if (mo19275a == 0) {
                    m19368f();
                    return;
                } else if (c11878bs == null) {
                    return;
                } else {
                    if (c11878bs.f39312b.getErrorCode() == 18 && mo19275a == 18) {
                        return;
                    }
                }
            }
        } else if (i2 == -1) {
            m19368f();
            return;
        } else if (i2 == 0) {
            if (c11878bs == null) {
                return;
            }
            int i3 = 13;
            if (intent != null) {
                i3 = intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13);
            }
            m19369c(new ConnectionResult(i3, null, c11878bs.f39312b.toString()), m19374a(c11878bs));
            return;
        }
        if (c11878bs != null) {
            m19369c(c11878bs.f39312b, c11878bs.f39311a);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: a */
    public final void mo19375a(Bundle bundle) {
        super.mo19375a(bundle);
        if (bundle != null) {
            this.f39319d.set(bundle.getBoolean("resolving_error", false) ? new C11878bs(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    /* renamed from: a */
    protected abstract void mo19307a(ConnectionResult connectionResult, int i);

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: b */
    public void mo19306b() {
        super.mo19306b();
        this.f39318c = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: b */
    public final void mo19371b(Bundle bundle) {
        super.mo19371b(bundle);
        C11878bs c11878bs = this.f39319d.get();
        if (c11878bs == null) {
            return;
        }
        bundle.putBoolean("resolving_error", true);
        bundle.putInt("failed_client_id", c11878bs.f39311a);
        bundle.putInt("failed_status", c11878bs.f39312b.getErrorCode());
        bundle.putParcelable("failed_resolution", c11878bs.f39312b.getResolution());
    }

    /* renamed from: b */
    public final void m19370b(ConnectionResult connectionResult, int i) {
        C11878bs c11878bs = new C11878bs(connectionResult, i);
        if (this.f39319d.compareAndSet(null, c11878bs)) {
            this.f39317b.post(new RunnableC11880bu(this, c11878bs));
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: d */
    public void mo19304d() {
        super.mo19304d();
        this.f39318c = false;
    }

    /* renamed from: e */
    protected abstract void mo19303e();

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        m19369c(new ConnectionResult(13, null), m19374a(this.f39319d.get()));
    }
}
