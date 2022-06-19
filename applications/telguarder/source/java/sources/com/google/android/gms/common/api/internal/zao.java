package com.google.android.gms.common.api.internal;

import android.app.Dialog;
import android.app.PendingIntent;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zao.class */
public final class zao implements Runnable {
    final /* synthetic */ zap zaa;
    private final zam zab;

    public zao(zap zapVar, zam zamVar) {
        this.zaa = zapVar;
        this.zab = zamVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.zaa.zaa) {
            return;
        }
        ConnectionResult zab = this.zab.zab();
        if (zab.hasResolution()) {
            this.zaa.mLifecycleFragment.startActivityForResult(GoogleApiActivity.zaa(this.zaa.getActivity(), (PendingIntent) Preconditions.checkNotNull(zab.getResolution()), this.zab.zaa(), false), 1);
            return;
        }
        zap zapVar = this.zaa;
        if (zapVar.zac.getErrorResolutionIntent(zapVar.getActivity(), zab.getErrorCode(), null) != null) {
            zap zapVar2 = this.zaa;
            zapVar2.zac.zaa(zapVar2.getActivity(), this.zaa.mLifecycleFragment, zab.getErrorCode(), 2, this.zaa);
        } else if (zab.getErrorCode() != 18) {
            this.zaa.zab(zab, this.zab.zaa());
        } else {
            zap zapVar3 = this.zaa;
            Dialog zad = zapVar3.zac.zad(zapVar3.getActivity(), this.zaa);
            zap zapVar4 = this.zaa;
            zapVar4.zac.zae(zapVar4.getActivity().getApplicationContext(), new zan(this, zad));
        }
    }
}
