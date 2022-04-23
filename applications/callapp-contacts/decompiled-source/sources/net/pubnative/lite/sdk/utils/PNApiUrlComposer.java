package net.pubnative.lite.sdk.utils;

import android.net.Uri;
import android.text.TextUtils;
import com.explorestack.iab.mraid.h;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import net.pubnative.lite.sdk.models.APIMeta;
import net.pubnative.lite.sdk.models.AdRequest;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/PNApiUrlComposer.class */
public final class PNApiUrlComposer {
    public static String buildUrl(String str, AdRequest adRequest) {
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        buildUpon.appendPath("api");
        buildUpon.appendPath("v3");
        buildUpon.appendPath("native");
        if (!TextUtils.isEmpty(adRequest.apptoken)) {
            buildUpon.appendQueryParameter("apptoken", adRequest.apptoken);
        }
        if (!TextUtils.isEmpty(adRequest.os)) {
            buildUpon.appendQueryParameter("os", adRequest.os);
        }
        if (!TextUtils.isEmpty(adRequest.osver)) {
            buildUpon.appendQueryParameter("osver", adRequest.osver);
        }
        if (!TextUtils.isEmpty(adRequest.devicemodel)) {
            buildUpon.appendQueryParameter("devicemodel", adRequest.devicemodel);
        }
        if (!TextUtils.isEmpty(adRequest.deviceHeight)) {
            buildUpon.appendQueryParameter("dh", adRequest.deviceHeight);
        }
        if (!TextUtils.isEmpty(adRequest.deviceWidth)) {
            buildUpon.appendQueryParameter("dw", adRequest.deviceWidth);
        }
        if (!TextUtils.isEmpty(adRequest.orientation)) {
            buildUpon.appendQueryParameter("scro", adRequest.orientation);
        }
        if (!TextUtils.isEmpty(adRequest.soundSetting)) {
            buildUpon.appendQueryParameter("aud", adRequest.soundSetting);
        }
        if (!TextUtils.isEmpty(adRequest.dnt)) {
            buildUpon.appendQueryParameter("dnt", adRequest.dnt);
        }
        if (!TextUtils.isEmpty(adRequest.al)) {
            buildUpon.appendQueryParameter("al", adRequest.al);
        }
        if (!TextUtils.isEmpty(adRequest.width)) {
            buildUpon.appendQueryParameter("w", adRequest.width);
        }
        if (!TextUtils.isEmpty(adRequest.height)) {
            buildUpon.appendQueryParameter(h.f19142a, adRequest.height);
        }
        if (!TextUtils.isEmpty(adRequest.mf)) {
            buildUpon.appendQueryParameter("mf", adRequest.mf);
        }
        if (!TextUtils.isEmpty(adRequest.af)) {
            buildUpon.appendQueryParameter("af", adRequest.af);
        }
        if (!TextUtils.isEmpty(adRequest.zoneid)) {
            buildUpon.appendQueryParameter("zoneid", adRequest.zoneid);
        }
        if (!TextUtils.isEmpty(adRequest.testMode)) {
            buildUpon.appendQueryParameter("test", adRequest.testMode);
        }
        if (!TextUtils.isEmpty(adRequest.locale)) {
            buildUpon.appendQueryParameter("locale", adRequest.locale);
        }
        if (!TextUtils.isEmpty(adRequest.latitude)) {
            buildUpon.appendQueryParameter("lat", adRequest.latitude);
        }
        if (!TextUtils.isEmpty(adRequest.longitude)) {
            buildUpon.appendQueryParameter("long", adRequest.longitude);
        }
        if (!TextUtils.isEmpty(adRequest.gender)) {
            buildUpon.appendQueryParameter(VerizonSSPWaterfallProvider.USER_DATA_GENDER_KEY, adRequest.gender);
        }
        if (!TextUtils.isEmpty(adRequest.age)) {
            buildUpon.appendQueryParameter(VerizonSSPWaterfallProvider.USER_DATA_AGE_KEY, adRequest.age);
        }
        if (!TextUtils.isEmpty(adRequest.bundleid)) {
            buildUpon.appendQueryParameter(APIMeta.BUNDLE_ID, adRequest.bundleid);
        }
        if (!TextUtils.isEmpty(adRequest.keywords)) {
            buildUpon.appendQueryParameter(VerizonSSPWaterfallProvider.USER_DATA_KEYWORDS_KEY, adRequest.keywords);
        }
        if (!TextUtils.isEmpty(adRequest.coppa)) {
            buildUpon.appendQueryParameter(VerizonSSPWaterfallProvider.APP_DATA_COPPA_KEY, adRequest.coppa);
        }
        if (!TextUtils.isEmpty(adRequest.gid)) {
            buildUpon.appendQueryParameter("gid", adRequest.gid);
        }
        if (!TextUtils.isEmpty(adRequest.gidmd5)) {
            buildUpon.appendQueryParameter("gidmd5", adRequest.gidmd5);
        }
        if (!TextUtils.isEmpty(adRequest.gidsha1)) {
            buildUpon.appendQueryParameter("gidsha1", adRequest.gidsha1);
        }
        if (!TextUtils.isEmpty(adRequest.displaymanager)) {
            buildUpon.appendQueryParameter("displaymanager", adRequest.displaymanager);
        }
        if (!TextUtils.isEmpty(adRequest.displaymanagerver)) {
            buildUpon.appendQueryParameter("displaymanagerver", adRequest.displaymanagerver);
        }
        if (!TextUtils.isEmpty(adRequest.omidpn)) {
            buildUpon.appendQueryParameter("omidpn", adRequest.omidpn);
        }
        if (!TextUtils.isEmpty(adRequest.omidpv)) {
            buildUpon.appendQueryParameter("omidpv", adRequest.omidpv);
        }
        if (!TextUtils.isEmpty(adRequest.rv)) {
            buildUpon.appendQueryParameter("rv", adRequest.rv);
        }
        if (!TextUtils.isEmpty(adRequest.usprivacy)) {
            buildUpon.appendQueryParameter("usprivacy", adRequest.usprivacy);
        }
        if (!TextUtils.isEmpty(adRequest.userconsent)) {
            buildUpon.appendQueryParameter("userconsent", adRequest.userconsent);
        }
        return buildUpon.build().toString();
    }
}
