package com.mopub.mobileads;

import android.content.Context;
import android.content.SharedPreferences;
import com.mopub.common.Constants;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.SharedPreferencesHelper;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.ConsentData;
import com.mopub.common.privacy.PersonalInfoManager;
import com.mopub.network.TrackingRequest;
import com.mopub.volley.VolleyError;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubConversionTracker.class */
public class MoPubConversionTracker {

    /* renamed from: a */
    private final Context f59257a;

    /* renamed from: b */
    private final String f59258b;

    /* renamed from: c */
    private final String f59259c;

    /* renamed from: d */
    private SharedPreferences f59260d;

    public MoPubConversionTracker(Context context) {
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        this.f59257a = applicationContext;
        String packageName = applicationContext.getPackageName();
        this.f59258b = packageName + " wantToTrack";
        this.f59259c = packageName + " tracked";
        this.f59260d = SharedPreferencesHelper.getSharedPreferences(applicationContext);
    }

    public void reportAppOpen() {
        reportAppOpen(false);
    }

    public void reportAppOpen(final boolean z) {
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        if (personalInformationManager == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Cannot report app open until initialization is done");
        } else if (!z && this.f59260d.getBoolean(this.f59259c, false)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Conversion already tracked");
        } else if (!z && !MoPub.canCollectPersonalInformation()) {
            this.f59260d.edit().putBoolean(this.f59258b, true).apply();
        } else {
            ConsentData consentData = personalInformationManager.getConsentData();
            TrackingRequest.makeTrackingHttpRequest(new C16850b(this.f59257a, consentData.chooseAdUnit()).withGdprApplies(personalInformationManager.gdprApplies()).withForceGdprApplies(consentData.isForceGdprApplies()).withCurrentConsentStatus(personalInformationManager.getPersonalInfoConsentStatus().getValue()).withConsentedPrivacyPolicyVersion(consentData.getConsentedPrivacyPolicyVersion()).withConsentedVendorListVersion(consentData.getConsentedVendorListVersion()).withSessionTracker(z).generateUrlString(Constants.HOST), this.f59257a, new TrackingRequest.Listener() { // from class: com.mopub.mobileads.MoPubConversionTracker.1
                @Override // com.mopub.volley.Response.ErrorListener
                public final void onErrorResponse(VolleyError volleyError) {
                }

                @Override // com.mopub.network.TrackingRequest.Listener
                public final void onResponse(String str) {
                    if (z) {
                        return;
                    }
                    MoPubConversionTracker.this.f59260d.edit().putBoolean(MoPubConversionTracker.this.f59259c, true).putBoolean(MoPubConversionTracker.this.f59258b, false).apply();
                }
            });
        }
    }

    public boolean shouldTrack() {
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        return personalInformationManager != null && personalInformationManager.canCollectPersonalInformation() && this.f59260d.getBoolean(this.f59258b, false);
    }
}
