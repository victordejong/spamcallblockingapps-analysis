package com.google.android.gms.ads;

import android.app.IntentService;
import android.content.Intent;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.ads.C7118wr;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.p70;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdService.class */
public class AdService extends IntentService {
    public AdService() {
        super("AdService");
    }

    @Override // android.app.IntentService
    protected final void onHandleIntent(@RecentlyNonNull Intent intent) {
        try {
            C7118wr.m9484b().m10184p(this, new p70()).mo8877K0(intent);
        } catch (RemoteException e) {
            ei0.m15467c("RemoteException calling handleNotificationIntent: ".concat(e.toString()));
        }
    }
}
