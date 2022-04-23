package com.google.android.gms.ads;

import android.app.IntentService;
import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.ekb;
import com.google.android.gms.internal.ads.mj;
import com.google.android.gms.internal.ads.za;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/AdService.class */
public class AdService extends IntentService {
    public AdService() {
        super("AdService");
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        try {
            ekb.b().a(this, new mj()).a(intent);
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 50);
            sb.append("RemoteException calling handleNotificationIntent: ");
            sb.append(valueOf);
            za.zzex(sb.toString());
        }
    }
}
