package com.google.android.gms.internal.appinvite;

import android.app.Activity;
import android.content.Intent;
import com.google.android.gms.common.api.Status;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appinvite/zzn.class */
public final class zzn extends zze {
    private final /* synthetic */ zzk zzq;

    public zzn(zzk zzkVar) {
        this.zzq = zzkVar;
    }

    @Override // com.google.android.gms.internal.appinvite.zze, com.google.android.gms.internal.appinvite.zzo
    public final void zza(Status status, Intent intent) {
        boolean z;
        WeakReference weakReference;
        WeakReference weakReference2;
        this.zzq.setResult((zzk) new zzp(status, intent));
        if ((intent == null || intent.getBundleExtra("com.google.android.gms.appinvite.REFERRAL_BUNDLE") == null) ? false : true) {
            z = this.zzq.zzm;
            if (!z) {
                return;
            }
            weakReference = this.zzq.zzl;
            if (weakReference == null) {
                return;
            }
            weakReference2 = this.zzq.zzl;
            Activity activity = (Activity) weakReference2.get();
            if (activity == null) {
                return;
            }
            activity.startActivity(intent);
        }
    }
}
