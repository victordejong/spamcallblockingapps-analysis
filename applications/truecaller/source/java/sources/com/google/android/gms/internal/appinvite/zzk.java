package com.google.android.gms.internal.appinvite;

import android.app.Activity;
import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.appinvite.AppInviteInvitationResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appinvite/zzk.class */
public final class zzk extends zzh<AppInviteInvitationResult> {
    private final WeakReference<Activity> zzl;
    private final boolean zzm;
    private final Intent zzn;

    public zzk(zzf zzfVar, GoogleApiClient googleApiClient, Activity activity, boolean z) {
        super(googleApiClient);
        this.zzm = z;
        this.zzl = new WeakReference<>(activity);
        this.zzn = activity != null ? activity.getIntent() : null;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return new zzp(status, new Intent());
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final void doExecute(zzm zzmVar) throws RemoteException {
        zzm zzmVar2 = zzmVar;
        Intent intent = this.zzn;
        if (!((intent == null || intent.getBundleExtra("com.google.android.gms.appinvite.REFERRAL_BUNDLE") == null) ? false : true)) {
            zzmVar2.zza(new zzn(this));
            return;
        }
        setResult((zzk) new zzp(Status.f5722f, this.zzn));
        zzmVar2.zza((zzo) null);
    }
}
