package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.C2591e;
import com.google.android.gms.internal.p137d.HandlerC3718f;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.common.api.internal.ba */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ba.class */
public abstract class AbstractDialogInterface$OnCancelListenerC2532ba extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* renamed from: b */
    protected volatile boolean f7136b;

    /* renamed from: c */
    protected final AtomicReference<C2534bc> f7137c;

    /* renamed from: d */
    protected final C2591e f7138d;

    /* renamed from: e */
    private final Handler f7139e;

    public AbstractDialogInterface$OnCancelListenerC2532ba(AbstractC2554i abstractC2554i) {
        this(abstractC2554i, C2591e.m14185a());
    }

    private AbstractDialogInterface$OnCancelListenerC2532ba(AbstractC2554i abstractC2554i, C2591e c2591e) {
        super(abstractC2554i);
        this.f7137c = new AtomicReference<>(null);
        this.f7139e = new HandlerC3718f(Looper.getMainLooper());
        this.f7138d = c2591e;
    }

    /* renamed from: a */
    private static int m14353a(C2534bc c2534bc) {
        return c2534bc == null ? -1 : c2534bc.m14349a();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: a */
    public void mo14355a(int i, int i2, Intent intent) {
        C2534bc c2534bc;
        boolean z;
        C2534bc c2534bc2 = this.f7137c.get();
        switch (i) {
            case 1:
                if (i2 != -1) {
                    if (i2 == 0) {
                        int i3 = 13;
                        if (intent != null) {
                            i3 = intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13);
                        }
                        c2534bc = new C2534bc(new C2579b(i3, null, c2534bc2.m14348b().toString()), m14353a(c2534bc2));
                        this.f7137c.set(c2534bc);
                        z = false;
                        break;
                    }
                    z = false;
                    c2534bc = c2534bc2;
                    break;
                } else {
                    z = true;
                    c2534bc = c2534bc2;
                    break;
                }
            case 2:
                int mo14170a = this.f7138d.mo14170a(m14404a());
                boolean z2 = mo14170a == 0;
                if (c2534bc2 == null) {
                    return;
                }
                c2534bc = c2534bc2;
                z = z2;
                if (c2534bc2.m14348b().m14209c() == 18) {
                    c2534bc = c2534bc2;
                    z = z2;
                    if (mo14170a == 18) {
                        return;
                    }
                }
                break;
            default:
                z = false;
                c2534bc = c2534bc2;
                break;
        }
        if (z) {
            m14350h();
        } else if (c2534bc == null) {
        } else {
            mo14226a(c2534bc.m14348b(), c2534bc.m14349a());
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: a */
    public void mo14354a(Bundle bundle) {
        super.mo14354a(bundle);
        if (bundle != null) {
            this.f7137c.set(bundle.getBoolean("resolving_error", false) ? new C2534bc(new C2579b(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    /* renamed from: a */
    public abstract void mo14226a(C2579b c2579b, int i);

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: b */
    public void mo14225b() {
        super.mo14225b();
        this.f7136b = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: b */
    public void mo14352b(Bundle bundle) {
        super.mo14352b(bundle);
        C2534bc c2534bc = this.f7137c.get();
        if (c2534bc != null) {
            bundle.putBoolean("resolving_error", true);
            bundle.putInt("failed_client_id", c2534bc.m14349a());
            bundle.putInt("failed_status", c2534bc.m14348b().m14209c());
            bundle.putParcelable("failed_resolution", c2534bc.m14348b().m14208d());
        }
    }

    /* renamed from: b */
    public final void m14351b(C2579b c2579b, int i) {
        C2534bc c2534bc = new C2534bc(c2579b, i);
        if (this.f7137c.compareAndSet(null, c2534bc)) {
            this.f7139e.post(new RunnableC2533bb(this, c2534bc));
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: d */
    public void mo3906d() {
        super.mo3906d();
        this.f7136b = false;
    }

    /* renamed from: f */
    protected abstract void mo14223f();

    /* renamed from: h */
    public final void m14350h() {
        this.f7137c.set(null);
        mo14223f();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        mo14226a(new C2579b(13, null), m14353a(this.f7137c.get()));
        m14350h();
    }
}
