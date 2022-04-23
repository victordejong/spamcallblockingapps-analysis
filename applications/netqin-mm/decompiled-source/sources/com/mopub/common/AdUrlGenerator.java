package com.mopub.common;

import android.content.Context;
import android.graphics.Point;
import android.location.Location;
import android.text.TextUtils;
import android.view.WindowInsets;
import com.inmobi.ads.C8320z;
import com.inmobi.p497a.C8003o;
import com.mopub.common.ClientMetadata;
import com.mopub.common.privacy.ConsentData;
import com.mopub.common.privacy.PersonalInfoManager;
import com.mopub.common.util.DateAndTime;
import com.mopub.network.RequestRateTracker;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/AdUrlGenerator.class */
public abstract class AdUrlGenerator extends BaseUrlGenerator {

    /* renamed from: e */
    public Context f33630e;

    /* renamed from: f */
    public String f33631f;

    /* renamed from: g */
    public String f33632g;

    /* renamed from: h */
    public String f33633h;

    /* renamed from: i */
    public Location f33634i;

    /* renamed from: j */
    public Point f33635j;

    /* renamed from: k */
    public WindowInsets f33636k;

    /* renamed from: l */
    public final PersonalInfoManager f33637l;

    /* renamed from: m */
    public final ConsentData f33638m;

    public AdUrlGenerator(Context context) {
        this.f33630e = context;
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        this.f33637l = personalInformationManager;
        if (personalInformationManager == null) {
            this.f33638m = null;
        } else {
            this.f33638m = personalInformationManager.getConsentData();
        }
    }

    /* renamed from: b */
    public static int m4742b(Location location) {
        Preconditions.checkNotNull(location);
        return (int) (System.currentTimeMillis() - location.getTime());
    }

    /* renamed from: a */
    public void m4747a(float f) {
        m4712a("sc", "" + f);
    }

    /* renamed from: a */
    public void m4746a(Location location) {
        if (MoPub.canCollectPersonalInformation()) {
            Location lastKnownLocation = LocationService.getLastKnownLocation(this.f33630e, MoPub.getLocationPrecision(), MoPub.getLocationAwareness());
            if (lastKnownLocation != null) {
                location = lastKnownLocation;
            }
            if (location != null) {
                m4712a("ll", location.getLatitude() + "," + location.getLongitude());
                m4712a("lla", String.valueOf((int) location.getAccuracy()));
                m4712a("llf", String.valueOf(m4742b(location)));
                if (location == lastKnownLocation) {
                    m4712a("llsdk", "1");
                }
            }
        }
    }

    /* renamed from: a */
    public void m4745a(ClientMetadata.MoPubNetworkType moPubNetworkType) {
        m4743a("ct", moPubNetworkType);
    }

    /* renamed from: a */
    public void m4744a(ClientMetadata clientMetadata) {
        m4738e(this.f33631f);
        m4723m(clientMetadata.getSdkVersion());
        m4709b();
        m4706c();
        m4710a(clientMetadata.getDeviceManufacturer(), clientMetadata.getDeviceModel(), clientMetadata.getDeviceProduct());
        m4736f(clientMetadata.getAppPackageName());
        m4730i(this.f33632g);
        if (MoPub.canCollectPersonalInformation()) {
            m4721o(this.f33633h);
            m4746a(this.f33634i);
        }
        m4722n(DateAndTime.getTimeZoneOffsetString());
        m4724l(clientMetadata.getOrientationString());
        m4715a(clientMetadata.getDeviceDimensions(), this.f33635j, this.f33636k);
        m4747a(clientMetadata.getDensity());
        String networkOperatorForUrl = clientMetadata.getNetworkOperatorForUrl();
        m4728j(networkOperatorForUrl);
        m4726k(networkOperatorForUrl);
        m4732h(clientMetadata.getIsoCountryCode());
        m4734g(clientMetadata.getNetworkOperatorName());
        m4745a(clientMetadata.getActiveNetworkType());
        m4708b(clientMetadata.getAppVersion());
        m4735g();
        m4716a();
        m4725l();
        m4727k();
        m4729j();
        m4733h();
        m4731i();
        m4737f();
    }

    /* renamed from: a */
    public final void m4743a(String str, ClientMetadata.MoPubNetworkType moPubNetworkType) {
        m4712a(str, moPubNetworkType.toString());
    }

    /* renamed from: b */
    public void m4741b(boolean z) {
        if (z) {
            m4712a("mr", "1");
        }
    }

    /* renamed from: c */
    public void m4740c(String str) {
        Preconditions.checkNotNull(str);
        m4712a("vv", str);
    }

    /* renamed from: d */
    public final int m4739d(String str) {
        return Math.min(3, str.length());
    }

    /* renamed from: e */
    public void m4738e(String str) {
        m4712a("id", str);
    }

    /* renamed from: f */
    public final void m4737f() {
        int i;
        RequestRateTracker.TimeRecord recordForAdUnit = RequestRateTracker.getInstance().getRecordForAdUnit(this.f33631f);
        if (recordForAdUnit != null && (i = recordForAdUnit.mBlockIntervalMs) >= 1) {
            m4712a("backoff_ms", String.valueOf(i));
            m4712a("backoff_reason", recordForAdUnit.mReason);
        }
    }

    /* renamed from: f */
    public void m4736f(String str) {
        if (!TextUtils.isEmpty(str)) {
            m4712a("bundle", str);
        }
    }

    /* renamed from: g */
    public void m4735g() {
        m4712a("abt", MoPub.m4629a(this.f33630e));
    }

    /* renamed from: g */
    public void m4734g(String str) {
        m4712a("cn", str);
    }

    /* renamed from: h */
    public void m4733h() {
        ConsentData consentData = this.f33638m;
        if (consentData != null) {
            m4712a("consented_privacy_policy_version", consentData.getConsentedPrivacyPolicyVersion());
        }
    }

    /* renamed from: h */
    public void m4732h(String str) {
        m4712a("iso", str);
    }

    /* renamed from: i */
    public void m4731i() {
        ConsentData consentData = this.f33638m;
        if (consentData != null) {
            m4712a("consented_vendor_list_version", consentData.getConsentedVendorListVersion());
        }
    }

    /* renamed from: i */
    public void m4730i(String str) {
        m4712a("q", str);
    }

    /* renamed from: j */
    public void m4729j() {
        PersonalInfoManager personalInfoManager = this.f33637l;
        if (personalInfoManager != null) {
            m4712a("current_consent_status", personalInfoManager.getPersonalInfoConsentStatus().getValue());
        }
    }

    /* renamed from: j */
    public void m4728j(String str) {
        m4712a("mcc", str == null ? "" : str.substring(0, m4739d(str)));
    }

    /* renamed from: k */
    public void m4727k() {
        ConsentData consentData = this.f33638m;
        if (consentData != null) {
            m4713a("force_gdpr_applies", Boolean.valueOf(consentData.isForceGdprApplies()));
        }
    }

    /* renamed from: k */
    public void m4726k(String str) {
        m4712a("mnc", str == null ? "" : str.substring(m4739d(str)));
    }

    /* renamed from: l */
    public void m4725l() {
        PersonalInfoManager personalInfoManager = this.f33637l;
        if (personalInfoManager != null) {
            m4713a("gdpr_applies", personalInfoManager.gdprApplies());
        }
    }

    /* renamed from: l */
    public void m4724l(String str) {
        m4712a(C8003o.f31242b, str);
    }

    /* renamed from: m */
    public void m4723m(String str) {
        m4712a("nv", str);
    }

    /* renamed from: n */
    public void m4722n(String str) {
        m4712a(C8320z.f32357a, str);
    }

    /* renamed from: o */
    public void m4721o(String str) {
        if (MoPub.canCollectPersonalInformation()) {
            m4712a("user_data_q", str);
        }
    }

    public AdUrlGenerator withAdUnitId(String str) {
        this.f33631f = str;
        return this;
    }

    @Deprecated
    public AdUrlGenerator withFacebookSupported(boolean z) {
        return this;
    }

    public AdUrlGenerator withKeywords(String str) {
        this.f33632g = str;
        return this;
    }

    public AdUrlGenerator withLocation(Location location) {
        this.f33634i = location;
        return this;
    }

    public AdUrlGenerator withRequestedAdSize(Point point) {
        this.f33635j = point;
        return this;
    }

    public AdUrlGenerator withUserDataKeywords(String str) {
        this.f33633h = str;
        return this;
    }

    public AdUrlGenerator withWindowInsets(WindowInsets windowInsets) {
        this.f33636k = windowInsets;
        return this;
    }
}
