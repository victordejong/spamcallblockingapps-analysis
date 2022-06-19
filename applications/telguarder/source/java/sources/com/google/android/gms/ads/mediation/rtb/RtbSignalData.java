package com.google.android.gms.ads.mediation.rtb;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/rtb/RtbSignalData.class */
public class RtbSignalData {
    private final Context context;
    private final Bundle zzchu;
    private final AdSize zzdu;
    private final List<MediationConfiguration> zzevy;

    public RtbSignalData(Context context, List<MediationConfiguration> list, Bundle bundle, AdSize adSize) {
        this.context = context;
        this.zzevy = list;
        this.zzchu = bundle;
        this.zzdu = adSize;
    }

    public AdSize getAdSize() {
        return this.zzdu;
    }

    @Deprecated
    public MediationConfiguration getConfiguration() {
        List<MediationConfiguration> list = this.zzevy;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.zzevy.get(0);
    }

    public List<MediationConfiguration> getConfigurations() {
        return this.zzevy;
    }

    public Context getContext() {
        return this.context;
    }

    public Bundle getNetworkExtras() {
        return this.zzchu;
    }
}
