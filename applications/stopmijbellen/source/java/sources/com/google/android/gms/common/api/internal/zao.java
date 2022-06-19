package com.google.android.gms.common.api.internal;

import android.app.Dialog;
import android.app.PendingIntent;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zao.class */
public final class zao implements Runnable {
    public final /* synthetic */ zap zaa;
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
            zap zapVar = this.zaa;
            zapVar.mLifecycleFragment.startActivityForResult(GoogleApiActivity.zaa(zapVar.getActivity(), (PendingIntent) Preconditions.checkNotNull(zab.getResolution()), this.zab.zaa(), false), 1);
            return;
        }
        zap zapVar2 = this.zaa;
        if (zapVar2.zac.getErrorResolutionIntent(zapVar2.getActivity(), zab.getErrorCode(), null) != null) {
            zap zapVar3 = this.zaa;
            zapVar3.zac.zaa(zapVar3.getActivity(), this.zaa.mLifecycleFragment, zab.getErrorCode(), 2, this.zaa);
        } else if (zab.getErrorCode() != 18) {
            this.zaa.zab(zab, this.zab.zaa());
        } else {
            zap zapVar4 = this.zaa;
            Dialog zad = zapVar4.zac.zad(zapVar4.getActivity(), this.zaa);
            zap zapVar5 = this.zaa;
            zapVar5.zac.zae(zapVar5.getActivity().getApplicationContext(), new zan(this, zad));
        }
    }
}
