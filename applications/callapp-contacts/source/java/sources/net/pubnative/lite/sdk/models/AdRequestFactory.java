package net.pubnative.lite.sdk.models;

import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import com.mopub.common.Constants;
import java.util.Locale;
import net.pubnative.lite.sdk.DeviceInfo;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.UserDataManager;
import net.pubnative.lite.sdk.location.HyBidLocationManager;
import net.pubnative.lite.sdk.utils.HyBidAdvertisingId;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.utils.PNAsyncUtils;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/AdRequestFactory.class */
public class AdRequestFactory {
    private static final String TAG = "AdRequestFactory";
    private DeviceInfo mDeviceInfo;
    private IntegrationType mIntegrationType;
    private boolean mIsRewarded;
    private HyBidLocationManager mLocationManager;
    private UserDataManager mUserDataManager;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/AdRequestFactory$Callback.class */
    public interface Callback {
        void onRequestCreated(AdRequest adRequest);
    }

    public AdRequestFactory() {
        this(HyBid.getDeviceInfo(), HyBid.getLocationManager(), HyBid.getUserDataManager());
    }

    AdRequestFactory(DeviceInfo deviceInfo, HyBidLocationManager hyBidLocationManager, UserDataManager userDataManager) {
        this.mIntegrationType = IntegrationType.HEADER_BIDDING;
        this.mDeviceInfo = deviceInfo;
        this.mLocationManager = hyBidLocationManager;
        this.mUserDataManager = userDataManager;
    }

    private String getDefaultMetaFields() {
        return TextUtils.join(",", new String[]{APIMeta.POINTS, APIMeta.REVENUE_MODEL, APIMeta.CONTENT_INFO, APIMeta.CREATIVE_ID});
    }

    private String getDefaultNativeAssetFields() {
        return TextUtils.join(",", new String[]{APIAsset.ICON, "title", "banner", "cta", "rating", "description"});
    }

    public void processAdvertisingId(String str, AdSize adSize, String str2, boolean z, Callback callback) {
        if (callback != null) {
            callback.onRequestCreated(buildRequest(str, adSize, str2, z, this.mIntegrationType));
        }
    }

    AdRequest buildRequest(String str, AdSize adSize, String str2, boolean z, IntegrationType integrationType) {
        Location userLocation;
        if (this.mUserDataManager == null) {
            this.mUserDataManager = HyBid.getUserDataManager();
        }
        boolean isCCPAOptOut = this.mUserDataManager.isCCPAOptOut();
        AdRequest adRequest = new AdRequest();
        adRequest.zoneid = str;
        adRequest.apptoken = HyBid.getAppToken();
        adRequest.f67067os = Constants.ANDROID_PLATFORM;
        adRequest.osver = this.mDeviceInfo.getOSVersion();
        adRequest.devicemodel = this.mDeviceInfo.getModel();
        adRequest.coppa = HyBid.isCoppaEnabled() ? "1" : "0";
        adRequest.omidpn = "pubnativenet";
        adRequest.omidpv = "1.3.17";
        if (HyBid.isCoppaEnabled() || z || TextUtils.isEmpty(str2) || isCCPAOptOut || this.mUserDataManager.isConsentDenied()) {
            adRequest.dnt = "1";
        } else {
            adRequest.gid = str2;
            adRequest.gidmd5 = this.mDeviceInfo.getAdvertisingIdMd5();
            adRequest.gidsha1 = this.mDeviceInfo.getAdvertisingIdSha1();
        }
        String iABUSPrivacyString = this.mUserDataManager.getIABUSPrivacyString();
        if (!TextUtils.isEmpty(iABUSPrivacyString)) {
            adRequest.usprivacy = iABUSPrivacyString;
        }
        String iABGDPRConsentString = this.mUserDataManager.getIABGDPRConsentString();
        if (!TextUtils.isEmpty(iABGDPRConsentString)) {
            adRequest.userconsent = iABGDPRConsentString;
        }
        adRequest.locale = this.mDeviceInfo.getLocale().getLanguage();
        if (!HyBid.isCoppaEnabled() && !z && !isCCPAOptOut && !this.mUserDataManager.isConsentDenied()) {
            adRequest.age = HyBid.getAge();
            adRequest.gender = HyBid.getGender();
            adRequest.keywords = HyBid.getKeywords();
        }
        adRequest.bundleid = HyBid.getBundleId();
        adRequest.testMode = HyBid.isTestMode() ? "1" : "0";
        if (adSize == null) {
            adRequest.f67064af = getDefaultNativeAssetFields();
        } else {
            adRequest.f67065al = adSize.getAdLayoutSize();
            if (adSize.getWidth() != 0) {
                adRequest.width = String.valueOf(adSize.getWidth());
            }
            if (adSize.getHeight() != 0) {
                adRequest.height = String.valueOf(adSize.getHeight());
            }
        }
        adRequest.f67066mf = getDefaultMetaFields();
        adRequest.displaymanager = "HyBid";
        adRequest.displaymanagerver = String.format(Locale.ENGLISH, "%s_%s_%s", "sdkandroid", integrationType.getCode(), "2.4.3");
        HyBidLocationManager hyBidLocationManager = this.mLocationManager;
        if (hyBidLocationManager != null && (userLocation = hyBidLocationManager.getUserLocation()) != null && !HyBid.isCoppaEnabled() && !z && !this.mUserDataManager.isConsentDenied() && HyBid.isLocationTrackingEnabled()) {
            adRequest.latitude = String.format(Locale.ENGLISH, "%.6f", Double.valueOf(userLocation.getLatitude()));
            adRequest.longitude = String.format(Locale.ENGLISH, "%.6f", Double.valueOf(userLocation.getLongitude()));
        }
        if (this.mIsRewarded) {
            adRequest.f67068rv = "1";
        } else {
            adRequest.f67068rv = "0";
        }
        adRequest.deviceHeight = this.mDeviceInfo.getDeviceHeight();
        adRequest.deviceWidth = this.mDeviceInfo.getDeviceWidth();
        adRequest.orientation = this.mDeviceInfo.getOrientation().toString();
        this.mDeviceInfo.checkSoundSetting();
        adRequest.soundSetting = this.mDeviceInfo.getSoundSetting();
        return adRequest;
    }

    public void createAdRequest(final String str, final AdSize adSize, boolean z, final Callback callback) {
        boolean z2;
        String str2;
        if (this.mDeviceInfo == null) {
            this.mDeviceInfo = HyBid.getDeviceInfo();
        }
        DeviceInfo deviceInfo = this.mDeviceInfo;
        Context context = null;
        if (deviceInfo != null) {
            str2 = deviceInfo.getAdvertisingId();
            z2 = this.mDeviceInfo.limitTracking();
            context = this.mDeviceInfo.getContext();
        } else {
            str2 = null;
            z2 = false;
        }
        this.mIsRewarded = z;
        if (!TextUtils.isEmpty(str2) || context == null) {
            processAdvertisingId(str, adSize, str2, z2, callback);
            return;
        }
        try {
            PNAsyncUtils.safeExecuteOnExecutor(new HyBidAdvertisingId(context, new HyBidAdvertisingId.Listener() { // from class: net.pubnative.lite.sdk.models.AdRequestFactory.1
                @Override // net.pubnative.lite.sdk.utils.HyBidAdvertisingId.Listener
                public void onHyBidAdvertisingIdFinish(String str3, Boolean bool) {
                    AdRequestFactory.this.processAdvertisingId(str, adSize, str3, bool.booleanValue(), callback);
                }
            }), new Void[0]);
        } catch (Exception e) {
            Logger.m628e(TAG, "Error executing HyBidAdvertisingId AsyncTask");
        }
    }

    public void setIntegrationType(IntegrationType integrationType) {
        this.mIntegrationType = integrationType;
    }
}
