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
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubConversionTracker.class */
public class MoPubConversionTracker {

    /* renamed from: a */
    public final Context f4686a;

    /* renamed from: b */
    public final String f4687b;

    /* renamed from: c */
    public final String f4688c;

    /* renamed from: d */
    public SharedPreferences f4689d;

    /* renamed from: com.mopub.mobileads.MoPubConversionTracker$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubConversionTracker$a.class */
    public class C1080a implements TrackingRequest.Listener {

        /* renamed from: a */
        public final /* synthetic */ boolean f4690a;

        public C1080a(boolean z) {
            MoPubConversionTracker.this = r4;
            this.f4690a = z;
        }

        @Override // com.mopub.network.TrackingRequest.Listener, com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
        }

        @Override // com.mopub.network.TrackingRequest.Listener
        public void onResponse(String str) {
            if (this.f4690a) {
                return;
            }
            MoPubConversionTracker.this.f4689d.edit().putBoolean(MoPubConversionTracker.this.f4688c, true).putBoolean(MoPubConversionTracker.this.f4687b, false).apply();
        }
    }

    public MoPubConversionTracker(Context context) {
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        this.f4686a = applicationContext;
        String packageName = applicationContext.getPackageName();
        this.f4687b = packageName + " wantToTrack";
        this.f4688c = packageName + " tracked";
        this.f4689d = SharedPreferencesHelper.getSharedPreferences(applicationContext);
    }

    /* renamed from: d */
    public final boolean m3670d() {
        return this.f4689d.getBoolean(this.f4688c, false);
    }

    public void reportAppOpen() {
        reportAppOpen(false);
    }

    public void reportAppOpen(boolean z) {
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        if (personalInformationManager == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Cannot report app open until initialization is done");
        } else if (!z && m3670d()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Conversion already tracked");
        } else if (!z && !MoPub.canCollectPersonalInformation()) {
            this.f4689d.edit().putBoolean(this.f4687b, true).apply();
        } else {
            ConsentData consentData = personalInformationManager.getConsentData();
            TrackingRequest.makeTrackingHttpRequest(new ch1(this.f4686a, consentData.chooseAdUnit()).withGdprApplies(personalInformationManager.gdprApplies()).withForceGdprApplies(consentData.isForceGdprApplies()).withCurrentConsentStatus(personalInformationManager.getPersonalInfoConsentStatus().getValue()).withConsentedPrivacyPolicyVersion(consentData.getConsentedPrivacyPolicyVersion()).withConsentedVendorListVersion(consentData.getConsentedVendorListVersion()).withSessionTracker(z).generateUrlString(Constants.HOST), this.f4686a, new C1080a(z));
        }
    }

    public boolean shouldTrack() {
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        if (personalInformationManager == null) {
            return false;
        }
        boolean z = false;
        if (personalInformationManager.canCollectPersonalInformation()) {
            z = false;
            if (this.f4689d.getBoolean(this.f4687b, false)) {
                z = true;
            }
        }
        return z;
    }
}
