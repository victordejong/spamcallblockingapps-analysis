package com.google.android.gms.common.api.internal;

import android.app.Dialog;
import android.app.PendingIntent;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zan.class */
public final class zan implements Runnable {
    public final /* synthetic */ zal zaa;
    private final zak zab;

    public zan(zal zalVar, zak zakVar) {
        this.zaa = zalVar;
        this.zab = zakVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.zaa.zaa) {
            return;
        }
        ConnectionResult zab = this.zab.zab();
        if (zab.hasResolution()) {
            zal zalVar = this.zaa;
            zalVar.mLifecycleFragment.startActivityForResult(GoogleApiActivity.zaa(zalVar.getActivity(), (PendingIntent) Preconditions.checkNotNull(zab.getResolution()), this.zab.zaa(), false), 1);
        } else if (this.zaa.zac.isUserResolvableError(zab.getErrorCode())) {
            zal zalVar2 = this.zaa;
            zalVar2.zac.zaa(zalVar2.getActivity(), this.zaa.mLifecycleFragment, zab.getErrorCode(), 2, this.zaa);
        } else if (zab.getErrorCode() != 18) {
            this.zaa.zaa(zab, this.zab.zaa());
        } else {
            Dialog zaa = GoogleApiAvailability.zaa(this.zaa.getActivity(), this.zaa);
            zal zalVar3 = this.zaa;
            zalVar3.zac.zaa(zalVar3.getActivity().getApplicationContext(), new zam(this, zaa));
        }
    }
}
