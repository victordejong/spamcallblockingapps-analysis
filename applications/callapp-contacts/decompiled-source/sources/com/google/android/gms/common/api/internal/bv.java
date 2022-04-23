package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.b;
import com.google.android.gms.internal.base.j;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bv.class */
public abstract class bv extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* renamed from: c  reason: collision with root package name */
    protected volatile boolean f22711c;
    protected final b e;

    /* renamed from: d  reason: collision with root package name */
    protected final AtomicReference<bs> f22712d = new AtomicReference<>(null);

    /* renamed from: b  reason: collision with root package name */
    private final Handler f22710b = new j(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    public bv(h hVar, b bVar) {
        super(hVar);
        this.e = bVar;
    }

    private static final int a(bs bsVar) {
        if (bsVar == null) {
            return -1;
        }
        return bsVar.f22704a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(ConnectionResult connectionResult, int i) {
        this.f22712d.set(null);
        a(connectionResult, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        this.f22712d.set(null);
        e();
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void a(int i, int i2, Intent intent) {
        bs bsVar = this.f22712d.get();
        if (i != 1) {
            if (i == 2) {
                int a2 = this.e.a(a());
                if (a2 == 0) {
                    f();
                    return;
                } else if (bsVar != null) {
                    if (bsVar.f22705b.getErrorCode() == 18 && a2 == 18) {
                        return;
                    }
                } else {
                    return;
                }
            }
        } else if (i2 == -1) {
            f();
            return;
        } else if (i2 == 0) {
            if (bsVar != null) {
                int i3 = 13;
                if (intent != null) {
                    i3 = intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13);
                }
                c(new ConnectionResult(i3, null, bsVar.f22705b.toString()), a(bsVar));
                return;
            }
            return;
        }
        if (bsVar != null) {
            c(bsVar.f22705b, bsVar.f22704a);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void a(Bundle bundle) {
        super.a(bundle);
        if (bundle != null) {
            this.f22712d.set(bundle.getBoolean("resolving_error", false) ? new bs(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    protected abstract void a(ConnectionResult connectionResult, int i);

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void b() {
        super.b();
        this.f22711c = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void b(Bundle bundle) {
        super.b(bundle);
        bs bsVar = this.f22712d.get();
        if (bsVar != null) {
            bundle.putBoolean("resolving_error", true);
            bundle.putInt("failed_client_id", bsVar.f22704a);
            bundle.putInt("failed_status", bsVar.f22705b.getErrorCode());
            bundle.putParcelable("failed_resolution", bsVar.f22705b.getResolution());
        }
    }

    public final void b(ConnectionResult connectionResult, int i) {
        bs bsVar = new bs(connectionResult, i);
        if (this.f22712d.compareAndSet(null, bsVar)) {
            this.f22710b.post(new bu(this, bsVar));
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void d() {
        super.d();
        this.f22711c = false;
    }

    protected abstract void e();

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        c(new ConnectionResult(13, null), a(this.f22712d.get()));
    }
}
