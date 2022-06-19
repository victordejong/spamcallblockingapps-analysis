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
import e.n.b.i0;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubConversionTracker.class */
public class MoPubConversionTracker {

    /* renamed from: a */
    public final Context f8790a;

    /* renamed from: b */
    public final String f8791b;

    /* renamed from: c */
    public final String f8792c;

    /* renamed from: d */
    public SharedPreferences f8793d;

    public MoPubConversionTracker(Context context) {
        Preconditions.checkNotNull(context);
        Context applicationContext = context.getApplicationContext();
        this.f8790a = applicationContext;
        String packageName = applicationContext.getPackageName();
        this.f8791b = C22128a.m8543z2(packageName, " wantToTrack");
        this.f8792c = C22128a.m8543z2(packageName, " tracked");
        this.f8793d = SharedPreferencesHelper.getSharedPreferences(applicationContext);
    }

    public void reportAppOpen() {
        reportAppOpen(false);
    }

    public void reportAppOpen(boolean z) {
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        if (personalInformationManager == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Cannot report app open until initialization is done");
        } else if (!z && this.f8793d.getBoolean(this.f8792c, false)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Conversion already tracked");
        } else if (!z && !MoPub.canCollectPersonalInformation()) {
            this.f8793d.edit().putBoolean(this.f8791b, true).apply();
        } else {
            ConsentData consentData = personalInformationManager.getConsentData();
            TrackingRequest.makeTrackingHttpRequest(new i0(this.f8790a, consentData.chooseAdUnit()).withGdprApplies(personalInformationManager.gdprApplies()).withForceGdprApplies(consentData.isForceGdprApplies()).withCurrentConsentStatus(personalInformationManager.getPersonalInfoConsentStatus().getValue()).withConsentedPrivacyPolicyVersion(consentData.getConsentedPrivacyPolicyVersion()).withConsentedVendorListVersion(consentData.getConsentedVendorListVersion()).withSessionTracker(z).generateUrlString(Constants.HOST), this.f8790a, new a(this, z));
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
            if (this.f8793d.getBoolean(this.f8791b, false)) {
                z = true;
            }
        }
        return z;
    }
}
