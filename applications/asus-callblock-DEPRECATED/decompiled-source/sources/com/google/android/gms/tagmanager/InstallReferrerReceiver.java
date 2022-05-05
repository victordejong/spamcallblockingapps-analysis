package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.analytics.CampaignTrackingReceiver;
import com.google.android.gms.analytics.CampaignTrackingService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/InstallReferrerReceiver.class */
public final class InstallReferrerReceiver extends CampaignTrackingReceiver {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.CampaignTrackingReceiver
    public final void zzh(Context context, String str) {
        ae.a(str);
        ae.a(context, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.CampaignTrackingReceiver
    public final Class<? extends CampaignTrackingService> zzko() {
        return d.class;
    }
}
