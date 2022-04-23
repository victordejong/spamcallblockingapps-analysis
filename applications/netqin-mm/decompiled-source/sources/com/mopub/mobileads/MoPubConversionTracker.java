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
import p131c.p421j.p424b.C6651e;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubConversionTracker.class */
public class MoPubConversionTracker {

    /* renamed from: a */
    public final Context f34110a;

    /* renamed from: b */
    public final String f34111b;

    /* renamed from: c */
    public final String f34112c;

    /* renamed from: d */
    public SharedPreferences f34113d;

    /* renamed from: com.mopub.mobileads.MoPubConversionTracker$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubConversionTracker$a.class */
    public class C8776a implements TrackingRequest.Listener {

        /* renamed from: a */
        public final /* synthetic */ boolean f34114a;

        public C8776a(boolean z) {
            this.f34114a = z;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
        }

        @Override // com.mopub.network.TrackingRequest.Listener
        public void onResponse(String str) {
            if (!this.f34114a) {
                MoPubConversionTracker.this.f34113d.edit().putBoolean(MoPubConversionTracker.this.f34112c, true).putBoolean(MoPubConversionTracker.this.f34111b, false).apply();
            }
        }
    }

    public MoPubConversionTracker(Context context) {
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        this.f34110a = applicationContext;
        String packageName = applicationContext.getPackageName();
        this.f34111b = packageName + " wantToTrack";
        this.f34112c = packageName + " tracked";
        this.f34113d = SharedPreferencesHelper.getSharedPreferences(this.f34110a);
    }

    /* renamed from: a */
    public final boolean m4386a() {
        return this.f34113d.getBoolean(this.f34112c, false);
    }

    public void reportAppOpen() {
        reportAppOpen(false);
    }

    public void reportAppOpen(boolean z) {
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        if (personalInformationManager == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Cannot report app open until initialization is done");
        } else if (!z && m4386a()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Conversion already tracked");
        } else if (z || MoPub.canCollectPersonalInformation()) {
            ConsentData consentData = personalInformationManager.getConsentData();
            TrackingRequest.makeTrackingHttpRequest(new C6651e(this.f34110a).withGdprApplies(personalInformationManager.gdprApplies()).withForceGdprApplies(consentData.isForceGdprApplies()).withCurrentConsentStatus(personalInformationManager.getPersonalInfoConsentStatus().getValue()).withConsentedPrivacyPolicyVersion(consentData.getConsentedPrivacyPolicyVersion()).withConsentedVendorListVersion(consentData.getConsentedVendorListVersion()).withSessionTracker(z).generateUrlString(Constants.HOST), this.f34110a, new C8776a(z));
        } else {
            this.f34113d.edit().putBoolean(this.f34111b, true).apply();
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
            if (this.f34113d.getBoolean(this.f34111b, false)) {
                z = true;
            }
        }
        return z;
    }
}
