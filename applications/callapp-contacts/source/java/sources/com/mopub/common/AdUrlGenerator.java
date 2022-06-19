package com.mopub.common;

import android.content.Context;
import android.graphics.Point;
import android.location.Location;
import android.text.TextUtils;
import android.view.WindowInsets;
import com.explorestack.iab.utils.C9605o;
import com.mopub.common.privacy.ConsentData;
import com.mopub.common.privacy.PersonalInfoManager;
import com.mopub.common.util.DateAndTime;
import com.mopub.network.RequestRateTracker;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/AdUrlGenerator.class */
public abstract class AdUrlGenerator extends BaseUrlGenerator {

    /* renamed from: a */
    protected Context f58645a;

    /* renamed from: b */
    protected String f58646b;

    /* renamed from: c */
    protected String f58647c;

    /* renamed from: d */
    protected String f58648d;

    /* renamed from: e */
    protected Point f58649e;

    /* renamed from: f */
    protected WindowInsets f58650f;

    /* renamed from: g */
    private final PersonalInfoManager f58651g;

    /* renamed from: h */
    private final ConsentData f58652h;

    public AdUrlGenerator(Context context) {
        this.f58645a = context;
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        this.f58651g = personalInformationManager;
        if (personalInformationManager == null) {
            this.f58652h = null;
        } else {
            this.f58652h = personalInformationManager.getConsentData();
        }
    }

    /* renamed from: c */
    private static int m6792c(String str) {
        return Math.min(3, str.length());
    }

    /* renamed from: a */
    public final void m6794a() {
        m6783b("mr", "1");
    }

    /* renamed from: a */
    public final void m6793a(ClientMetadata clientMetadata) {
        Location lastKnownLocation;
        m6783b("id", this.f58646b);
        m6783b("nv", clientMetadata.getSdkVersion());
        m6781d();
        m6780e();
        int i = 0;
        m6786a(clientMetadata.getDeviceManufacturer(), clientMetadata.getDeviceModel(), clientMetadata.getDeviceProduct());
        String appPackageName = clientMetadata.getAppPackageName();
        if (!TextUtils.isEmpty(appPackageName)) {
            m6783b("bundle", appPackageName);
        }
        m6783b("q", this.f58647c);
        if (MoPub.canCollectPersonalInformation()) {
            String str = this.f58648d;
            if (MoPub.canCollectPersonalInformation()) {
                m6783b("user_data_q", str);
            }
            if (MoPub.canCollectPersonalInformation() && (lastKnownLocation = LocationService.getLastKnownLocation(this.f58645a)) != null) {
                m6783b("ll", lastKnownLocation.getLatitude() + "," + lastKnownLocation.getLongitude());
                m6783b("lla", String.valueOf((int) lastKnownLocation.getAccuracy()));
                Preconditions.checkNotNull(lastKnownLocation);
                m6783b("llf", String.valueOf((int) (System.currentTimeMillis() - lastKnownLocation.getTime())));
                m6783b("llsdk", "1");
            }
        }
        m6783b("z", DateAndTime.getTimeZoneOffsetString());
        m6783b(C9605o.f32625a, clientMetadata.getOrientationString());
        m6790a(clientMetadata.getDeviceDimensions(), this.f58649e, this.f58650f);
        m6783b("sc", String.valueOf(clientMetadata.getDensity()));
        String networkOperatorForUrl = clientMetadata.getNetworkOperatorForUrl();
        m6783b("mcc", networkOperatorForUrl == null ? "" : networkOperatorForUrl.substring(0, m6792c(networkOperatorForUrl)));
        m6783b("mnc", networkOperatorForUrl == null ? "" : networkOperatorForUrl.substring(m6792c(networkOperatorForUrl)));
        m6783b("iso", clientMetadata.getIsoCountryCode());
        m6783b("cn", clientMetadata.getNetworkOperatorName());
        m6783b("ct", clientMetadata.getActiveNetworkType().toString());
        m6784b(clientMetadata.getAppVersion());
        m6783b("abt", MoPub.m6735a(this.f58645a));
        m6782c();
        PersonalInfoManager personalInfoManager = this.f58651g;
        if (personalInfoManager != null) {
            m6788a("gdpr_applies", personalInfoManager.gdprApplies());
        }
        ConsentData consentData = this.f58652h;
        if (consentData != null) {
            m6788a("force_gdpr_applies", Boolean.valueOf(consentData.isForceGdprApplies()));
        }
        PersonalInfoManager personalInfoManager2 = this.f58651g;
        if (personalInfoManager2 != null) {
            m6783b("current_consent_status", personalInfoManager2.getPersonalInfoConsentStatus().getValue());
        }
        ConsentData consentData2 = this.f58652h;
        if (consentData2 != null) {
            m6783b("consented_privacy_policy_version", consentData2.getConsentedPrivacyPolicyVersion());
        }
        ConsentData consentData3 = this.f58652h;
        if (consentData3 != null) {
            m6783b("consented_vendor_list_version", consentData3.getConsentedVendorListVersion());
        }
        RequestRateTracker.TimeRecord recordForAdUnit = RequestRateTracker.getInstance().getRecordForAdUnit(this.f58646b);
        if (recordForAdUnit != null && recordForAdUnit.mBlockIntervalMs > 0) {
            m6783b("backoff_ms", String.valueOf(recordForAdUnit.mBlockIntervalMs));
            m6783b("backoff_reason", recordForAdUnit.mReason);
        }
        if (ViewabilityManager.isViewabilityEnabled()) {
            i = 4;
        }
        m6783b("vv", String.valueOf(i));
        m6783b("vver", ViewabilityManager.m6707b());
    }

    public AdUrlGenerator withAdUnitId(String str) {
        this.f58646b = str;
        return this;
    }

    @Deprecated
    public AdUrlGenerator withFacebookSupported(boolean z) {
        return this;
    }

    public AdUrlGenerator withKeywords(String str) {
        this.f58647c = str;
        return this;
    }

    public AdUrlGenerator withRequestedAdSize(Point point) {
        this.f58649e = point;
        return this;
    }

    public AdUrlGenerator withUserDataKeywords(String str) {
        this.f58648d = str;
        return this;
    }

    public AdUrlGenerator withWindowInsets(WindowInsets windowInsets) {
        this.f58650f = windowInsets;
        return this;
    }
}
