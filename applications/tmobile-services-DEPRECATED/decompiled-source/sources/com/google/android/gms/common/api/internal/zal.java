package com.google.android.gms.common.api.internal;

import android.app.Dialog;
import androidx.annotation.MainThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiActivity;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zal.class */
final class zal implements Runnable {

    /* renamed from: f */
    private final zam f7313f;

    /* renamed from: g */
    final /* synthetic */ zak f7314g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zal(zak zakVar, zam zamVar) {
        this.f7314g = zakVar;
        this.f7313f = zamVar;
    }

    @Override // java.lang.Runnable
    @MainThread
    public final void run() {
        if (this.f7314g.f7309g) {
            ConnectionResult a = this.f7313f.m14718a();
            if (a.m15091Y()) {
                zak zakVar = this.f7314g;
                zakVar.f7108f.startActivityForResult(GoogleApiActivity.m15009b(zakVar.m14881b(), a.m15092W(), this.f7313f.m14717b(), false), 1);
            } else if (this.f7314g.f7312j.mo15059m(a.m15094B())) {
                zak zakVar2 = this.f7314g;
                zakVar2.f7312j.m15085B(zakVar2.m14881b(), this.f7314g.f7108f, a.m15094B(), 2, this.f7314g);
            } else if (a.m15094B() == 18) {
                Dialog u = GoogleApiAvailability.m15077u(this.f7314g.m14881b(), this.f7314g);
                zak zakVar3 = this.f7314g;
                zakVar3.f7312j.m15075w(zakVar3.m14881b().getApplicationContext(), new zan(this, u));
            } else {
                this.f7314g.mo14722m(a, this.f7313f.m14717b());
            }
        }
    }
}
