package com.google.android.gms.ads.mediation.rtb;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/mediation/rtb/RtbSignalData.class */
public class RtbSignalData {
    private final Context context;
    private final Bundle zzcih;
    private final AdSize zzdu;
    private final List<MediationConfiguration> zzeye;

    public RtbSignalData(Context context, List<MediationConfiguration> list, Bundle bundle, AdSize adSize) {
        this.context = context;
        this.zzeye = list;
        this.zzcih = bundle;
        this.zzdu = adSize;
    }

    public AdSize getAdSize() {
        return this.zzdu;
    }

    @Deprecated
    public MediationConfiguration getConfiguration() {
        List<MediationConfiguration> list = this.zzeye;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.zzeye.get(0);
    }

    public List<MediationConfiguration> getConfigurations() {
        return this.zzeye;
    }

    public Context getContext() {
        return this.context;
    }

    public Bundle getNetworkExtras() {
        return this.zzcih;
    }
}
