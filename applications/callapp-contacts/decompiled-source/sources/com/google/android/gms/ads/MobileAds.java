package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.ads.emy;
import com.google.android.gms.internal.ads.enc;
import com.google.android.gms.internal.ads.za;
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
        emy a2 = emy.a();
        synchronized (a2.f27971a) {
            a2.b(context);
            try {
                a2.f27972b.f();
            } catch (RemoteException e) {
                za.zzex("Unable to disable mediation adapter initialization.");
            }
        }
    }

    public static InitializationStatus getInitializationStatus() {
        return emy.a().e();
    }

    public static RequestConfiguration getRequestConfiguration() {
        return emy.a().f27973c;
    }

    @Deprecated
    public static RewardedVideoAd getRewardedVideoAdInstance(Context context) {
        return emy.a().a(context);
    }

    public static String getVersionString() {
        return emy.a().d();
    }

    public static void initialize(Context context) {
        initialize(context, null, null);
    }

    public static void initialize(Context context, OnInitializationCompleteListener onInitializationCompleteListener) {
        emy.a().a(context, null, onInitializationCompleteListener);
    }

    @Deprecated
    public static void initialize(Context context, String str) {
        initialize(context, str, null);
    }

    @Deprecated
    public static void initialize(Context context, String str, Settings settings) {
        emy.a().a(context, str, null);
    }

    public static void openDebugMenu(Context context, String str) {
        emy a2 = emy.a();
        synchronized (a2.f27971a) {
            o.a(a2.f27972b != null, "MobileAds.initialize() must be called prior to opening debug menu.");
            try {
                a2.f27972b.a(d.a(context), str);
            } catch (RemoteException e) {
                za.zzc("Unable to open debug menu.", e);
            }
        }
    }

    public static void registerRtbAdapter(Class<? extends RtbAdapter> cls) {
        emy a2 = emy.a();
        synchronized (a2.f27971a) {
            try {
                a2.f27972b.b(cls.getCanonicalName());
            } catch (RemoteException e) {
                za.zzc("Unable to register RtbAdapter", e);
            }
        }
    }

    public static void setAppMuted(boolean z) {
        emy a2 = emy.a();
        synchronized (a2.f27971a) {
            o.a(a2.f27972b != null, "MobileAds.initialize() must be called prior to setting app muted state.");
            try {
                a2.f27972b.a(z);
            } catch (RemoteException e) {
                za.zzc("Unable to set app mute state.", e);
            }
        }
    }

    public static void setAppVolume(float f) {
        emy a2 = emy.a();
        boolean z = true;
        o.b(BitmapDescriptorFactory.HUE_RED <= f && f <= 1.0f, "The app volume must be a value between 0 and 1 inclusive.");
        synchronized (a2.f27971a) {
            if (a2.f27972b == null) {
                z = false;
            }
            o.a(z, "MobileAds.initialize() must be called prior to setting the app volume.");
            try {
                a2.f27972b.a(f);
            } catch (RemoteException e) {
                za.zzc("Unable to set app volume.", e);
            }
        }
    }

    public static void setRequestConfiguration(RequestConfiguration requestConfiguration) {
        emy a2 = emy.a();
        o.b(requestConfiguration != null, "Null passed to setRequestConfiguration.");
        synchronized (a2.f27971a) {
            RequestConfiguration requestConfiguration2 = a2.f27973c;
            a2.f27973c = requestConfiguration;
            if (a2.f27972b != null) {
                if (!(requestConfiguration2.getTagForChildDirectedTreatment() == requestConfiguration.getTagForChildDirectedTreatment() && requestConfiguration2.getTagForUnderAgeOfConsent() == requestConfiguration.getTagForUnderAgeOfConsent())) {
                    a2.a(requestConfiguration);
                }
            }
        }
    }
}
