package com.mopub.mobileads;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import com.mopub.common.Constants;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.SharedPreferencesHelper;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.ConsentData;
import com.mopub.common.privacy.PersonalInfoManager;
import com.mopub.network.TrackingRequest;
import com.mopub.volley.VolleyError;
import p081h.p430l.p433b.C10701d;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubConversionTracker.class */
public class MoPubConversionTracker {
    @NonNull

    /* renamed from: a */
    public final Context f8478a;
    @NonNull

    /* renamed from: b */
    public final String f8479b;
    @NonNull

    /* renamed from: c */
    public final String f8480c;
    @NonNull

    /* renamed from: d */
    public SharedPreferences f8481d;

    /* renamed from: com.mopub.mobileads.MoPubConversionTracker$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubConversionTracker$a.class */
    public class C3834a implements TrackingRequest.Listener {

        /* renamed from: a */
        public final /* synthetic */ boolean f8482a;

        public C3834a(boolean z) {
            this.f8482a = z;
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
        }

        @Override // com.mopub.network.TrackingRequest.Listener
        public void onResponse(@NonNull String str) {
            if (!this.f8482a) {
                MoPubConversionTracker.this.f8481d.edit().putBoolean(MoPubConversionTracker.this.f8480c, true).putBoolean(MoPubConversionTracker.this.f8479b, false).apply();
            }
        }
    }

    public MoPubConversionTracker(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        this.f8478a = context.getApplicationContext();
        String packageName = this.f8478a.getPackageName();
        this.f8479b = packageName + " wantToTrack";
        this.f8480c = packageName + " tracked";
        this.f8481d = SharedPreferencesHelper.getSharedPreferences(this.f8478a);
    }

    /* renamed from: a */
    public final boolean m30547a() {
        return this.f8481d.getBoolean(this.f8480c, false);
    }

    public void reportAppOpen() {
        reportAppOpen(false);
    }

    public void reportAppOpen(boolean z) {
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        if (personalInformationManager == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Cannot report app open until initialization is done");
        } else if (!z && m30547a()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Conversion already tracked");
        } else if (z || MoPub.canCollectPersonalInformation()) {
            ConsentData consentData = personalInformationManager.getConsentData();
            TrackingRequest.makeTrackingHttpRequest(new C10701d(this.f8478a).withGdprApplies(personalInformationManager.gdprApplies()).withForceGdprApplies(consentData.isForceGdprApplies()).withCurrentConsentStatus(personalInformationManager.getPersonalInfoConsentStatus().getValue()).withConsentedPrivacyPolicyVersion(consentData.getConsentedPrivacyPolicyVersion()).withConsentedVendorListVersion(consentData.getConsentedVendorListVersion()).withSessionTracker(z).generateUrlString(Constants.HOST), this.f8478a, new C3834a(z));
        } else {
            this.f8481d.edit().putBoolean(this.f8479b, true).apply();
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
            if (this.f8481d.getBoolean(this.f8479b, false)) {
                z = true;
            }
        }
        return z;
    }
}
