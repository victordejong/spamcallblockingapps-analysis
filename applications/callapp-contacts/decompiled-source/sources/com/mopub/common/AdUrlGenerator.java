package com.mopub.common;

import android.content.Context;
import android.graphics.Point;
import android.location.Location;
import android.text.TextUtils;
import android.view.WindowInsets;
import com.explorestack.iab.utils.o;
import com.mopub.common.privacy.ConsentData;
import com.mopub.common.privacy.PersonalInfoManager;
import com.mopub.common.util.DateAndTime;
import com.mopub.network.RequestRateTracker;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/AdUrlGenerator.class */
public abstract class AdUrlGenerator extends BaseUrlGenerator {

    /* renamed from: a  reason: collision with root package name */
    protected Context f33774a;

    /* renamed from: b  reason: collision with root package name */
    protected String f33775b;

    /* renamed from: c  reason: collision with root package name */
    protected String f33776c;

    /* renamed from: d  reason: collision with root package name */
    protected String f33777d;
    protected Point e;
    protected WindowInsets f;
    private final PersonalInfoManager g;
    private final ConsentData h;

    public AdUrlGenerator(Context context) {
        this.f33774a = context;
        PersonalInfoManager personalInformationManager = MoPub.getPersonalInformationManager();
        this.g = personalInformationManager;
        if (personalInformationManager == null) {
            this.h = null;
        } else {
            this.h = personalInformationManager.getConsentData();
        }
    }

    private static int c(String str) {
        return Math.min(3, str.length());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a() {
        b("mr", "1");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(ClientMetadata clientMetadata) {
        Location lastKnownLocation;
        b("id", this.f33775b);
        b("nv", clientMetadata.getSdkVersion());
        d();
        e();
        int i = 0;
        a(clientMetadata.getDeviceManufacturer(), clientMetadata.getDeviceModel(), clientMetadata.getDeviceProduct());
        String appPackageName = clientMetadata.getAppPackageName();
        if (!TextUtils.isEmpty(appPackageName)) {
            b("bundle", appPackageName);
        }
        b("q", this.f33776c);
        if (MoPub.canCollectPersonalInformation()) {
            String str = this.f33777d;
            if (MoPub.canCollectPersonalInformation()) {
                b("user_data_q", str);
            }
            if (MoPub.canCollectPersonalInformation() && (lastKnownLocation = LocationService.getLastKnownLocation(this.f33774a)) != null) {
                b("ll", lastKnownLocation.getLatitude() + "," + lastKnownLocation.getLongitude());
                b("lla", String.valueOf((int) lastKnownLocation.getAccuracy()));
                Preconditions.checkNotNull(lastKnownLocation);
                b("llf", String.valueOf((int) (System.currentTimeMillis() - lastKnownLocation.getTime())));
                b("llsdk", "1");
            }
        }
        b("z", DateAndTime.getTimeZoneOffsetString());
        b(o.f19200a, clientMetadata.getOrientationString());
        a(clientMetadata.getDeviceDimensions(), this.e, this.f);
        b("sc", String.valueOf(clientMetadata.getDensity()));
        String networkOperatorForUrl = clientMetadata.getNetworkOperatorForUrl();
        String str2 = "";
        b("mcc", networkOperatorForUrl == null ? "" : networkOperatorForUrl.substring(0, c(networkOperatorForUrl)));
        if (networkOperatorForUrl != null) {
            str2 = networkOperatorForUrl.substring(c(networkOperatorForUrl));
        }
        b("mnc", str2);
        b("iso", clientMetadata.getIsoCountryCode());
        b("cn", clientMetadata.getNetworkOperatorName());
        b("ct", clientMetadata.getActiveNetworkType().toString());
        b(clientMetadata.getAppVersion());
        b("abt", MoPub.a(this.f33774a));
        c();
        PersonalInfoManager personalInfoManager = this.g;
        if (personalInfoManager != null) {
            a("gdpr_applies", personalInfoManager.gdprApplies());
        }
        ConsentData consentData = this.h;
        if (consentData != null) {
            a("force_gdpr_applies", Boolean.valueOf(consentData.isForceGdprApplies()));
        }
        PersonalInfoManager personalInfoManager2 = this.g;
        if (personalInfoManager2 != null) {
            b("current_consent_status", personalInfoManager2.getPersonalInfoConsentStatus().getValue());
        }
        ConsentData consentData2 = this.h;
        if (consentData2 != null) {
            b("consented_privacy_policy_version", consentData2.getConsentedPrivacyPolicyVersion());
        }
        ConsentData consentData3 = this.h;
        if (consentData3 != null) {
            b("consented_vendor_list_version", consentData3.getConsentedVendorListVersion());
        }
        RequestRateTracker.TimeRecord recordForAdUnit = RequestRateTracker.getInstance().getRecordForAdUnit(this.f33775b);
        if (recordForAdUnit != null && recordForAdUnit.mBlockIntervalMs > 0) {
            b("backoff_ms", String.valueOf(recordForAdUnit.mBlockIntervalMs));
            b("backoff_reason", recordForAdUnit.mReason);
        }
        if (ViewabilityManager.isViewabilityEnabled()) {
            i = 4;
        }
        b("vv", String.valueOf(i));
        b("vver", ViewabilityManager.b());
    }

    public AdUrlGenerator withAdUnitId(String str) {
        this.f33775b = str;
        return this;
    }

    @Deprecated
    public AdUrlGenerator withFacebookSupported(boolean z) {
        return this;
    }

    public AdUrlGenerator withKeywords(String str) {
        this.f33776c = str;
        return this;
    }

    public AdUrlGenerator withRequestedAdSize(Point point) {
        this.e = point;
        return this;
    }

    public AdUrlGenerator withUserDataKeywords(String str) {
        this.f33777d = str;
        return this;
    }

    public AdUrlGenerator withWindowInsets(WindowInsets windowInsets) {
        this.f = windowInsets;
        return this;
    }
}
