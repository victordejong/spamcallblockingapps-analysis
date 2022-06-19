package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.internal.ads.C13088za;
import com.google.android.gms.internal.ads.emy;
import com.google.android.gms.internal.ads.enc;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/MobileAds.class */
public class MobileAds {
    public static final String ERROR_DOMAIN = "com.google.android.gms.ads";

    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/MobileAds$Settings.class */
    public static final class Settings {
        private final enc zzadt = new enc();

        @Deprecated
        public final String getTrackingId() {
            return null;
        }

        @Deprecated
        public final boolean isGoogleAnalyticsEnabled() {
            return false;
        }

        @Deprecated
        public final Settings setGoogleAnalyticsEnabled(boolean z) {
            return this;
        }

        @Deprecated
        public final Settings setTrackingId(String str) {
            return this;
        }
    }

    private MobileAds() {
    }

    public static void disableMediationAdapterInitialization(Context context) {
        emy m14729a = emy.m14729a();
        synchronized (m14729a.f49254a) {
            m14729a.m14722b(context);
            try {
                m14729a.f49255b.mo14534f();
            } catch (RemoteException e) {
                C13088za.zzex("Unable to disable mediation adapter initialization.");
            }
        }
    }

    public static InitializationStatus getInitializationStatus() {
        return emy.m14729a().m14716e();
    }

    public static RequestConfiguration getRequestConfiguration() {
        return emy.m14729a().f49256c;
    }

    @Deprecated
    public static RewardedVideoAd getRewardedVideoAdInstance(Context context) {
        return emy.m14729a().m14728a(context);
    }

    public static String getVersionString() {
        return emy.m14729a().m14717d();
    }

    public static void initialize(Context context) {
        initialize(context, null, null);
    }

    public static void initialize(Context context, OnInitializationCompleteListener onInitializationCompleteListener) {
        emy.m14729a().m14727a(context, null, onInitializationCompleteListener);
    }

    @Deprecated
    public static void initialize(Context context, String str) {
        initialize(context, str, null);
    }

    @Deprecated
    public static void initialize(Context context, String str, Settings settings) {
        emy.m14729a().m14727a(context, str, null);
    }

    public static void openDebugMenu(Context context, String str) {
        emy m14729a = emy.m14729a();
        synchronized (m14729a.f49254a) {
            C12045o.m19157a(m14729a.f49255b != null, "MobileAds.initialize() must be called prior to opening debug menu.");
            try {
                m14729a.f49255b.mo14546a(BinderC12129d.m18979a(context), str);
            } catch (RemoteException e) {
                C13088za.zzc("Unable to open debug menu.", e);
            }
        }
    }

    public static void registerRtbAdapter(Class<? extends RtbAdapter> cls) {
        emy m14729a = emy.m14729a();
        synchronized (m14729a.f49254a) {
            try {
                m14729a.f49255b.mo14538b(cls.getCanonicalName());
            } catch (RemoteException e) {
                C13088za.zzc("Unable to register RtbAdapter", e);
            }
        }
    }

    public static void setAppMuted(boolean z) {
        emy m14729a = emy.m14729a();
        synchronized (m14729a.f49254a) {
            C12045o.m19157a(m14729a.f49255b != null, "MobileAds.initialize() must be called prior to setting app muted state.");
            try {
                m14729a.f49255b.mo14540a(z);
            } catch (RemoteException e) {
                C13088za.zzc("Unable to set app mute state.", e);
            }
        }
    }

    public static void setAppVolume(float f) {
        emy m14729a = emy.m14729a();
        C12045o.m19153b(BitmapDescriptorFactory.HUE_RED <= f && f <= 1.0f, "The app volume must be a value between 0 and 1 inclusive.");
        synchronized (m14729a.f49254a) {
            C12045o.m19157a(m14729a.f49255b != null, "MobileAds.initialize() must be called prior to setting the app volume.");
            try {
                m14729a.f49255b.mo14547a(f);
            } catch (RemoteException e) {
                C13088za.zzc("Unable to set app volume.", e);
            }
        }
    }

    public static void setRequestConfiguration(RequestConfiguration requestConfiguration) {
        emy m14729a = emy.m14729a();
        C12045o.m19153b(requestConfiguration != null, "Null passed to setRequestConfiguration.");
        synchronized (m14729a.f49254a) {
            RequestConfiguration requestConfiguration2 = m14729a.f49256c;
            m14729a.f49256c = requestConfiguration;
            if (m14729a.f49255b == null) {
                return;
            }
            if (requestConfiguration2.getTagForChildDirectedTreatment() != requestConfiguration.getTagForChildDirectedTreatment() || requestConfiguration2.getTagForUnderAgeOfConsent() != requestConfiguration.getTagForUnderAgeOfConsent()) {
                m14729a.m14726a(requestConfiguration);
            }
        }
    }
}
