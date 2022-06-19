package com.mopub.common;

import android.content.Context;
import android.graphics.Point;
import android.location.Location;
import android.text.TextUtils;
import android.view.WindowInsets;
import com.mopub.common.ClientMetadata;
import com.mopub.common.privacy.ConsentData;
import com.mopub.common.privacy.PersonalInfoManager;
import com.mopub.common.util.DateAndTime;
import com.mopub.network.RequestRateTracker;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/AdUrlGenerator.class */
public abstract class AdUrlGenerator extends BaseUrlGenerator {

    /* renamed from: e */
    public Context f4132e;

    /* renamed from: f */
    public String f4133f;

    /* renamed from: g */
    public String f4134g;

    /* renamed from: h */
    public String f4135h;

    /* renamed from: i */
    public Point f4136i;

    /* renamed from: j */
    public WindowInsets f4137j;

    /* renamed from: k */
    public final PersonalInfoManager f4138k;

    /* renamed from: l */
    public final ConsentData f4139l;

    public AdUrlGenerator(Context context) {
        this.f4132e = context;
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        this.f4138k = personalInformationManager;
        this.f4139l = personalInformationManager == null ? null : personalInformationManager.getConsentData();
    }

    /* renamed from: p */
    public static int m4044p(Location location) {
        Preconditions.checkNotNull(location);
        return (int) (System.currentTimeMillis() - location.getTime());
    }

    /* renamed from: A */
    public void m4060A() {
        PersonalInfoManager personalInfoManager = this.f4138k;
        if (personalInfoManager != null) {
            m4029a("gdpr_applies", personalInfoManager.gdprApplies());
        }
    }

    /* renamed from: B */
    public void m4059B(String str) {
        m4028b("iso", str);
    }

    /* renamed from: C */
    public void m4058C(String str) {
        m4028b("q", str);
    }

    /* renamed from: D */
    public void m4057D() {
        Location lastKnownLocation;
        if (MoPub.canCollectPersonalInformation() && (lastKnownLocation = LocationService.getLastKnownLocation(this.f4132e)) != null) {
            m4028b("ll", lastKnownLocation.getLatitude() + "," + lastKnownLocation.getLongitude());
            m4028b("lla", String.valueOf((int) lastKnownLocation.getAccuracy()));
            m4028b("llf", String.valueOf(m4044p(lastKnownLocation)));
            m4028b("llsdk", "1");
        }
    }

    /* renamed from: E */
    public void m4056E(String str) {
        m4028b("mcc", str == null ? "" : str.substring(0, m4043q(str)));
    }

    /* renamed from: F */
    public void m4055F(String str) {
        m4028b("mnc", str == null ? "" : str.substring(m4043q(str)));
    }

    /* renamed from: G */
    public void m4054G(boolean z) {
        if (z) {
            m4028b("mr", "1");
        }
    }

    /* renamed from: H */
    public void m4053H(ClientMetadata.MoPubNetworkType moPubNetworkType) {
        m4046n("ct", moPubNetworkType);
    }

    /* renamed from: I */
    public void m4052I(String str) {
        m4028b("o", str);
    }

    /* renamed from: J */
    public void m4051J(String str) {
        m4028b("nv", str);
    }

    /* renamed from: K */
    public void m4050K(String str) {
        m4028b("z", str);
    }

    /* renamed from: L */
    public void m4049L(String str) {
        if (!MoPub.canCollectPersonalInformation()) {
            return;
        }
        m4028b("user_data_q", str);
    }

    /* renamed from: M */
    public void m4048M() {
        m4028b("vv", String.valueOf(ViewabilityManager.isViewabilityEnabled() ? 4 : 0));
        m4028b("vver", ViewabilityManager.m3903d());
    }

    /* renamed from: m */
    public void m4047m(ClientMetadata clientMetadata) {
        m4042r(this.f4133f);
        m4051J(clientMetadata.getSdkVersion());
        m4026d();
        m4025e();
        m4018l(clientMetadata.getDeviceManufacturer(), clientMetadata.getDeviceModel(), clientMetadata.getDeviceProduct());
        m4040t(clientMetadata.getAppPackageName());
        m4058C(this.f4134g);
        if (MoPub.canCollectPersonalInformation()) {
            m4049L(this.f4135h);
            m4057D();
        }
        m4050K(DateAndTime.getTimeZoneOffsetString());
        m4052I(clientMetadata.getOrientationString());
        m4019k(clientMetadata.getDeviceDimensions(), this.f4136i, this.f4137j);
        m4035y(clientMetadata.getDensity());
        String networkOperatorForUrl = clientMetadata.getNetworkOperatorForUrl();
        m4056E(networkOperatorForUrl);
        m4055F(networkOperatorForUrl);
        m4059B(clientMetadata.getIsoCountryCode());
        m4039u(clientMetadata.getNetworkOperatorName());
        m4053H(clientMetadata.getActiveNetworkType());
        m4020j(clientMetadata.getAppVersion());
        m4041s();
        m4027c();
        m4060A();
        m4034z();
        m4036x();
        m4038v();
        m4037w();
        m4045o();
        m4048M();
    }

    /* renamed from: n */
    public final void m4046n(String str, ClientMetadata.MoPubNetworkType moPubNetworkType) {
        m4028b(str, moPubNetworkType.toString());
    }

    /* renamed from: o */
    public final void m4045o() {
        int i;
        RequestRateTracker.TimeRecord recordForAdUnit = RequestRateTracker.getInstance().getRecordForAdUnit(this.f4133f);
        if (recordForAdUnit == null || (i = recordForAdUnit.mBlockIntervalMs) < 1) {
            return;
        }
        m4028b("backoff_ms", String.valueOf(i));
        m4028b("backoff_reason", recordForAdUnit.mReason);
    }

    /* renamed from: q */
    public final int m4043q(String str) {
        return Math.min(3, str.length());
    }

    /* renamed from: r */
    public void m4042r(String str) {
        m4028b("id", str);
    }

    /* renamed from: s */
    public void m4041s() {
        m4028b("abt", MoPub.m3942c(this.f4132e));
    }

    /* renamed from: t */
    public void m4040t(String str) {
        if (!TextUtils.isEmpty(str)) {
            m4028b("bundle", str);
        }
    }

    /* renamed from: u */
    public void m4039u(String str) {
        m4028b("cn", str);
    }

    /* renamed from: v */
    public void m4038v() {
        ConsentData consentData = this.f4139l;
        if (consentData != null) {
            m4028b("consented_privacy_policy_version", consentData.getConsentedPrivacyPolicyVersion());
        }
    }

    /* renamed from: w */
    public void m4037w() {
        ConsentData consentData = this.f4139l;
        if (consentData != null) {
            m4028b("consented_vendor_list_version", consentData.getConsentedVendorListVersion());
        }
    }

    public AdUrlGenerator withAdUnitId(String str) {
        this.f4133f = str;
        return this;
    }

    @Deprecated
    public AdUrlGenerator withFacebookSupported(boolean z) {
        return this;
    }

    public AdUrlGenerator withKeywords(String str) {
        this.f4134g = str;
        return this;
    }

    public AdUrlGenerator withRequestedAdSize(Point point) {
        this.f4136i = point;
        return this;
    }

    public AdUrlGenerator withUserDataKeywords(String str) {
        this.f4135h = str;
        return this;
    }

    public AdUrlGenerator withWindowInsets(WindowInsets windowInsets) {
        this.f4137j = windowInsets;
        return this;
    }

    /* renamed from: x */
    public void m4036x() {
        PersonalInfoManager personalInfoManager = this.f4138k;
        if (personalInfoManager != null) {
            m4028b("current_consent_status", personalInfoManager.getPersonalInfoConsentStatus().getValue());
        }
    }

    /* renamed from: y */
    public void m4035y(float f) {
        m4028b("sc", "" + f);
    }

    /* renamed from: z */
    public void m4034z() {
        ConsentData consentData = this.f4139l;
        if (consentData != null) {
            m4029a("force_gdpr_applies", Boolean.valueOf(consentData.isForceGdprApplies()));
        }
    }
}
