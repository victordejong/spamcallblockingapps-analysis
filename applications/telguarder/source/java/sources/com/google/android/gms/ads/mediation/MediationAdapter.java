package com.google.android.gms.ads.mediation;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdapter.class */
public interface MediationAdapter extends MediationExtrasReceiver {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdapter$zza.class */
    public static final class zza {
        private int zzeus;

        public final Bundle zzaes() {
            Bundle bundle = new Bundle();
            bundle.putInt("capabilities", this.zzeus);
            return bundle;
        }

        public final zza zzdv(int i) {
            this.zzeus = 1;
            return this;
        }
    }

    void onDestroy();

    void onPause();

    void onResume();
}
