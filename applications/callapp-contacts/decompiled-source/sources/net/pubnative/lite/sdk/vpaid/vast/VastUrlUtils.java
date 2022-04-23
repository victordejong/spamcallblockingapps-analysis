package net.pubnative.lite.sdk.vpaid.vast;

import android.text.TextUtils;
import net.pubnative.lite.sdk.HyBid;
import net.pubnative.lite.sdk.models.VASTtag;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/vast/VastUrlUtils.class */
public class VastUrlUtils {
    public static String formatURL(String str) {
        String str2;
        boolean z;
        String str3;
        boolean z2 = false;
        if (HyBid.getUserDataManager() != null) {
            str2 = HyBid.getUserDataManager().gdprApplies() ? "1" : "0";
            z2 = HyBid.getUserDataManager().isCCPAOptOut();
            z = HyBid.getUserDataManager().isConsentDenied();
        } else {
            str2 = "0";
            z = false;
        }
        String str4 = (HyBid.isCoppaEnabled() || z2 || z || HyBid.getDeviceInfo().limitTracking() || TextUtils.isEmpty(HyBid.getDeviceInfo().getAdvertisingId())) ? "1" : "0";
        String str5 = null;
        if (HyBid.getLocationManager() == null || HyBid.getLocationManager().getUserLocation() == null) {
            str3 = null;
            str5 = null;
        } else {
            str3 = HyBid.getLocationManager().getUserLocation().getLatitude() != 0.0d ? String.valueOf(HyBid.getLocationManager().getUserLocation().getLatitude()) : null;
            if (HyBid.getLocationManager().getUserLocation().getLongitude() != 0.0d) {
                str5 = String.valueOf(HyBid.getLocationManager().getUserLocation().getLongitude());
            }
        }
        return getVastURL(str, HyBid.getDeviceInfo().getAdvertisingId(), HyBid.getBundleId(), "wifi", str4, str3, str5, "", HyBid.getDeviceInfo().getDeviceWidth(), HyBid.getDeviceInfo().getDeviceHeight(), str2, HyBid.getUserDataManager().getIABGDPRConsentString(), HyBid.getUserDataManager().getIABUSPrivacyString());
    }

    private static String getVastURL(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13) {
        return new VASTtag.VASTtagBuilder(str).adId(str2).bundle(str3).connection(str4).dnt(str5).gdpr(str11).gdprConsent(str12).width(str9).height(str10).lat(str6).lon(str7).userAgent(str8).usPrivacy(str13).build().getFormattedURL();
    }
}
