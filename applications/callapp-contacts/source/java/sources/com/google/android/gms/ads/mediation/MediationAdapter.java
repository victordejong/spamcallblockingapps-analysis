package com.google.android.gms.ads.mediation;

import android.os.Bundle;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdapter.class */
public interface MediationAdapter extends MediationExtrasReceiver {

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdapter$zza.class */
    public static final class zza {
        private int zzewy;

        public final Bundle zzafn() {
            Bundle bundle = new Bundle();
            bundle.putInt("capabilities", this.zzewy);
            return bundle;
        }

        public final zza zzed(int i) {
            this.zzewy = 1;
            return this;
        }
    }

    void onDestroy();

    void onPause();

    void onResume();
}
