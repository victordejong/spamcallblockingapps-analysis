package com.google.android.gms.ads;

import android.app.IntentService;
import android.content.Intent;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.ads.C1894po;
import com.google.android.gms.internal.ads.de;
import com.google.android.gms.internal.ads.m03;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdService.class */
public class AdService extends IntentService {
    public AdService() {
        super("AdService");
    }

    @Override // android.app.IntentService
    protected final void onHandleIntent(@RecentlyNonNull Intent intent) {
        try {
            m03.m6635b().m6886h(this, new de()).m6333P0(intent);
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 50);
            sb.append("RemoteException calling handleNotificationIntent: ");
            sb.append(valueOf);
            C1894po.m6183c(sb.toString());
        }
    }
}
