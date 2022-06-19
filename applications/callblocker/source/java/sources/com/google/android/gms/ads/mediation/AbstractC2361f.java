package com.google.android.gms.ads.mediation;

import android.os.Bundle;
/* renamed from: com.google.android.gms.ads.mediation.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/f.class */
public interface AbstractC2361f {

    /* renamed from: com.google.android.gms.ads.mediation.f$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/f$a.class */
    public static final class C2362a {

        /* renamed from: a */
        private int f6796a;

        /* renamed from: a */
        public final Bundle m14711a() {
            Bundle bundle = new Bundle();
            bundle.putInt("capabilities", this.f6796a);
            return bundle;
        }

        /* renamed from: a */
        public final C2362a m14710a(int i) {
            this.f6796a = 1;
            return this;
        }
    }

    void onDestroy();

    void onPause();

    void onResume();
}
