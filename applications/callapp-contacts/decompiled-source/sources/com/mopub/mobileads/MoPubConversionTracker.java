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

    /* renamed from: a  reason: collision with root package name */
    private final Context f34097a;

    /* renamed from: b  reason: collision with root package name */
    private final String f34098b;

    /* renamed from: c  reason: collision with root package name */
    private final String f34099c;

    /* renamed from: d  reason: collision with root package name */
    private SharedPreferences f34100d;

    public MoPubConversionTracker(Context context) {
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        this.f34097a = applicationContext;
        String packageName = applicationContext.getPackageName();
        this.f34098b = packageName + " wantToTrack";
        this.f34099c = packageName + " tracked";
        this.f34100d = SharedPreferencesHelper.getSharedPreferences(applicationContext);
    }

    public void reportAppOpen() {
        reportAppOpen(false);
    }

    public void reportAppOpen(final boolean z) {
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        if (personalInformationManager == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Cannot report app open until initialization is done");
        } else if (!z && this.f34100d.getBoolean(this.f34099c, false)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Conversion already tracked");
        } else if (z || MoPub.canCollectPersonalInformation()) {
            ConsentData consentData = personalInformationManager.getConsentData();
            TrackingRequest.makeTrackingHttpRequest(new b(this.f34097a, consentData.chooseAdUnit()).withGdprApplies(personalInformationManager.gdprApplies()).withForceGdprApplies(consentData.isForceGdprApplies()).withCurrentConsentStatus(personalInformationManager.getPersonalInfoConsentStatus().getValue()).withConsentedPrivacyPolicyVersion(consentData.getConsentedPrivacyPolicyVersion()).withConsentedVendorListVersion(consentData.getConsentedVendorListVersion()).withSessionTracker(z).generateUrlString(Constants.HOST), this.f34097a, new TrackingRequest.Listener() { // from class: com.mopub.mobileads.MoPubConversionTracker.1
                @Override // com.mopub.volley.Response.ErrorListener
                public final void onErrorResponse(VolleyError volleyError) {
                }

                @Override // com.mopub.network.TrackingRequest.Listener
                public final void onResponse(String str) {
                    if (!z) {
                        MoPubConversionTracker.this.f34100d.edit().putBoolean(MoPubConversionTracker.this.f34099c, true).putBoolean(MoPubConversionTracker.this.f34098b, false).apply();
                    }
                }
            });
        } else {
            this.f34100d.edit().putBoolean(this.f34098b, true).apply();
        }
    }

    public boolean shouldTrack() {
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        return personalInformationManager != null && personalInformationManager.canCollectPersonalInformation() && this.f34100d.getBoolean(this.f34098b, false);
    }
}
