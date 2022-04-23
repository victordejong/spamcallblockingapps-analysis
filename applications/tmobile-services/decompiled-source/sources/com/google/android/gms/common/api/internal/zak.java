package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.base.zar;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zak.class */
public abstract class zak extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* renamed from: g */
    protected volatile boolean f7309g;

    /* renamed from: h */
    protected final AtomicReference<zam> f7310h;

    /* renamed from: i */
    private final Handler f7311i;

    /* renamed from: j */
    protected final GoogleApiAvailability f7312j;

    /* JADX INFO: Access modifiers changed from: protected */
    public zak(LifecycleFragment lifecycleFragment) {
        this(lifecycleFragment, GoogleApiAvailability.m15080r());
    }

    @VisibleForTesting
    private zak(LifecycleFragment lifecycleFragment, GoogleApiAvailability googleApiAvailability) {
        super(lifecycleFragment);
        this.f7310h = new AtomicReference<>(null);
        this.f7311i = new zar(Looper.getMainLooper());
        this.f7312j = googleApiAvailability;
    }

    /* renamed from: l */
    private static int m14723l(@Nullable zam zamVar) {
        if (zamVar == null) {
            return -1;
        }
        return zamVar.m14717b();
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00be  */
    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo14727e(int r9, int r10, android.content.Intent r11) {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.zak.mo14727e(int, int, android.content.Intent):void");
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: f */
    public void mo14726f(Bundle bundle) {
        super.mo14726f(bundle);
        if (bundle != null) {
            this.f7310h.set(bundle.getBoolean("resolving_error", false) ? new zam(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: i */
    public void mo14725i(Bundle bundle) {
        super.mo14725i(bundle);
        zam zamVar = this.f7310h.get();
        if (zamVar != null) {
            bundle.putBoolean("resolving_error", true);
            bundle.putInt("failed_client_id", zamVar.m14717b());
            bundle.putInt("failed_status", zamVar.m14718a().m15094B());
            bundle.putParcelable("failed_resolution", zamVar.m14718a().m15092W());
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: j */
    public void mo14724j() {
        super.mo14724j();
        this.f7309g = true;
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: k */
    public void mo10770k() {
        super.mo10770k();
        this.f7309g = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: m */
    public abstract void mo14722m(ConnectionResult connectionResult, int i);

    /* renamed from: n */
    public final void m14721n(ConnectionResult connectionResult, int i) {
        zam zamVar = new zam(connectionResult, i);
        if (this.f7310h.compareAndSet(null, zamVar)) {
            this.f7311i.post(new zal(this, zamVar));
        }
    }

    /* renamed from: o */
    protected abstract void mo14720o();

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        mo14722m(new ConnectionResult(13, null), m14723l(this.f7310h.get()));
        m14719p();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: p */
    public final void m14719p() {
        this.f7310h.set(null);
        mo14720o();
    }
}
