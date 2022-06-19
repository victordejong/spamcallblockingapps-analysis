package com.millennialmedia.internal.playlistserver;

import android.annotation.SuppressLint;
import android.location.Location;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.android.internal.telephony.PhoneConstants;
import com.millennialmedia.AppInfo;
import com.millennialmedia.MMLog;
import com.millennialmedia.MMSDK;
import com.millennialmedia.TestInfo;
import com.millennialmedia.UserData;
import com.millennialmedia.internal.AdPlacementMetadata;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.PlayList;
import com.millennialmedia.internal.playlistserver.PlayListServerAdapter;
import com.millennialmedia.internal.utils.AdvertisingIdInfo;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.JSONUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.Utils;
import com.mopub.common.Constants;
import com.mopub.network.ImpressionData;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/playlistserver/OrangeServerAdapter.class */
public class OrangeServerAdapter extends PlayListServerAdapter {
    public static final String PLAYLIST_REQUEST_PATH = "/admax/sdk/playlist/2";
    private static final String REQ_KEY = "req";
    private static final String TAG = "OrangeServerAdapter";

    public static String buildAdRequest(Map<String, Object> map, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ver", PlayList.VERSION);
            jSONObject.put("app", buildAppInfoJSON());
            jSONObject.put("env", buildEnvironmentInfoJSON(z));
            jSONObject.put("req", buildRequestInfoJSON(map));
            jSONObject.put("user", buildUserInfoJSON());
            jSONObject.put("testing", buildTestingJSON());
            return jSONObject.toString();
        } catch (Exception e) {
            MMLog.m4067e(TAG, "Error creating JSON request", e);
            return null;
        }
    }

    private static JSONObject buildAppInfoJSON() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("appId", EnvironmentUtils.getAppId());
        jSONObject.put("name", EnvironmentUtils.getApplicationName());
        return jSONObject;
    }

    private static JSONObject buildEnvironmentInfoJSON(boolean z) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("os", Constants.ANDROID_PLATFORM);
        jSONObject.put("osv", Build.VERSION.RELEASE);
        jSONObject.put("model", Build.MODEL);
        jSONObject.put("sdkVer", MMSDK.VERSION);
        Map<String, String> map = MMSDK.registeredPlugins;
        if (!map.isEmpty()) {
            jSONObject.put("sdkPlugins", JSONUtils.buildFromMap(map));
        }
        jSONObject.put("mcc", EnvironmentUtils.getMcc());
        jSONObject.put("mnc", EnvironmentUtils.getMnc());
        jSONObject.put("lang", EnvironmentUtils.getLocaleLanguage());
        jSONObject.put(ImpressionData.COUNTRY, EnvironmentUtils.getLocaleCountry());
        jSONObject.put("ua", EnvironmentUtils.getUserAgent());
        if (z) {
            jSONObject.put("secureContent", true);
        }
        AdvertisingIdInfo adInfo = EnvironmentUtils.getAdInfo();
        String advertisingId = EnvironmentUtils.getAdvertisingId(adInfo);
        if (advertisingId != null) {
            jSONObject.put("ifa", advertisingId);
            jSONObject.put("lmt", EnvironmentUtils.isLimitAdTrackingEnabled(adInfo));
        } else {
            jSONObject.put("dpidmd5", EnvironmentUtils.getHashedDeviceId("MD5"));
            jSONObject.put("dpidsha1", EnvironmentUtils.getHashedDeviceId("SHA1"));
        }
        jSONObject.put("w", EnvironmentUtils.getDisplayWidth());
        jSONObject.put("h", EnvironmentUtils.getDisplayHeight());
        jSONObject.put("screenScale", EnvironmentUtils.getDisplayDensity());
        jSONObject.put("ppi", EnvironmentUtils.getDisplayDensityDpi());
        jSONObject.put("natOrient", EnvironmentUtils.getNaturalConfigOrientationString());
        jSONObject.put("storage", EnvironmentUtils.getAvailableStorageSize());
        jSONObject.put("vol", EnvironmentUtils.getVolume(3));
        jSONObject.put("headphones", EnvironmentUtils.areHeadphonesPluggedIn());
        jSONObject.put("charging", EnvironmentUtils.isDevicePlugged());
        jSONObject.put("charge", EnvironmentUtils.getBatteryLevel());
        jSONObject.put("connectionType", EnvironmentUtils.getNetworkConnectionType());
        jSONObject.put("cellSignalDbm", EnvironmentUtils.getCellSignalDbm());
        jSONObject.put("carrier", EnvironmentUtils.getNetworkOperatorName());
        jSONObject.put("ip", EnvironmentUtils.getIpAddress());
        Location location = EnvironmentUtils.getLocation();
        if (location != null && MMSDK.locationEnabled) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("lat", location.getLatitude());
            jSONObject2.put("lon", location.getLongitude());
            jSONObject2.put("src", location.getProvider());
            jSONObject2.put("ts", location.getTime() / 1000);
            if (location.hasAccuracy()) {
                jSONObject2.put("horizAcc", location.getAccuracy());
            }
            if (location.hasSpeed()) {
                jSONObject2.put("speed", location.getSpeed());
            }
            if (location.hasBearing()) {
                jSONObject2.put("bearing", location.getBearing());
            }
            if (location.hasAltitude()) {
                jSONObject2.put("alt", location.getAltitude());
            }
            jSONObject.put("loc", jSONObject2);
        }
        JSONObject jSONObject3 = new JSONObject();
        EnvironmentUtils.AvailableCameras availableCameras = EnvironmentUtils.getAvailableCameras();
        if (availableCameras.frontCamera) {
            jSONObject3.put("cameraFront", "true");
        }
        if (availableCameras.backCamera) {
            jSONObject3.put("cameraRear", "true");
        }
        if (EnvironmentUtils.hasNfc()) {
            jSONObject3.put("nfc", Boolean.toString(EnvironmentUtils.hasNfcPermission()));
        }
        if (EnvironmentUtils.hasBluetooth()) {
            jSONObject3.put("bt", Boolean.toString(EnvironmentUtils.hasBluetoothPermission()));
        }
        if (EnvironmentUtils.hasMicrophone()) {
            jSONObject3.put("mic", Boolean.toString(EnvironmentUtils.hasMicrophonePermission()));
        }
        if (EnvironmentUtils.hasGps()) {
            jSONObject3.put("gps", Boolean.toString(EnvironmentUtils.hasFineLocationPermission()));
        }
        jSONObject.put("deviceFeatures", jSONObject3);
        List<String> existingIds = Handshake.getExistingIds();
        if (!existingIds.isEmpty()) {
            jSONObject.put("existIds", JSONUtils.buildFromList(existingIds));
        }
        return jSONObject;
    }

    private static JSONObject buildRequestInfoJSON(Map<String, Object> map) {
        JSONObject buildFromMap;
        JSONObject jSONObject = new JSONObject();
        AppInfo appInfo = MMSDK.getAppInfo();
        if (appInfo != null) {
            jSONObject.put("coppa", appInfo.getCoppa());
            jSONObject.put("dcn", appInfo.getSiteId());
            jSONObject.put("mediator", appInfo.getMediator());
        }
        if (map != null) {
            jSONObject.put("posType", map.get(AdPlacementMetadata.METADATA_KEY_PLACEMENT_TYPE));
            Object obj = map.get(AdPlacementMetadata.METADATA_KEY_IMPRESSION_GROUP);
            if ((obj instanceof String) && !Utils.isEmpty((String) obj)) {
                jSONObject.put("grp", obj);
            }
            Object obj2 = map.get(AdPlacementMetadata.METADATA_KEY_CUSTOM_TARGETING);
            if (obj2 instanceof Map) {
                Map map2 = (Map) obj2;
                if (!map2.isEmpty() && (buildFromMap = JSONUtils.buildFromMap(map2)) != null && buildFromMap.length() > 0) {
                    jSONObject.put("targeting", buildFromMap);
                }
            }
            jSONObject.put("orients", JSONUtils.buildFromList((List) map.get(AdPlacementMetadata.METADATA_KEY_SUPPORTED_ORIENTATIONS)));
            jSONObject.put(AdPlacementMetadata.METADATA_KEY_KEYWORDS, JSONUtils.buildFromList(Utils.splitCommaSeparateString((String) map.get(AdPlacementMetadata.METADATA_KEY_KEYWORDS))));
            jSONObject.put("posId", map.get(AdPlacementMetadata.METADATA_KEY_PLACEMENT_ID));
            Object obj3 = map.get("width");
            if ((obj3 instanceof Integer) && ((Integer) obj3).intValue() > 0) {
                jSONObject.put("w", obj3);
            }
            Object obj4 = map.get("height");
            if ((obj4 instanceof Integer) && ((Integer) obj4).intValue() > 0) {
                jSONObject.put("h", obj4);
            }
            jSONObject.put("refreshRate", map.get("refreshRate"));
            if (map.containsKey(AdPlacementMetadata.METADATA_KEY_NATIVE_TYPES)) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("nativeType", JSONUtils.buildFromList((List) map.get(AdPlacementMetadata.METADATA_KEY_NATIVE_TYPES)));
                jSONObject.put("posTypeAttrs", jSONObject2);
            }
        }
        jSONObject.put("curOrient", EnvironmentUtils.getCurrentConfigOrientationString());
        return jSONObject;
    }

    private static JSONObject buildTestingJSON() {
        TestInfo testInfo = MMSDK.getTestInfo();
        if (testInfo != null) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("bidder", testInfo.bidder);
            jSONObject.put("creativeId", testInfo.creativeId);
            return jSONObject;
        }
        return null;
    }

    @SuppressLint({"SimpleDateFormat"})
    private static JSONObject buildUserInfoJSON() {
        UserData userData = MMSDK.getUserData();
        if (userData != null) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("age", userData.getAge());
            jSONObject.put("kids", userData.getChildren());
            jSONObject.put("hhi", userData.getIncome());
            jSONObject.put("edu", userData.getEducation());
            jSONObject.put("eth", userData.getEthnicity());
            jSONObject.put("gender", userData.getGender());
            jSONObject.put(AdPlacementMetadata.METADATA_KEY_KEYWORDS, JSONUtils.buildFromList(Utils.splitCommaSeparateString(userData.getKeywords())));
            jSONObject.put("marital", userData.getMarital());
            jSONObject.put("politics", userData.getPolitics());
            jSONObject.put("zip", userData.getPostalCode());
            Date dob = userData.getDob();
            if (dob != null) {
                jSONObject.put("dob", new SimpleDateFormat("yyyyMMdd").format(dob));
            }
            jSONObject.put(PhoneConstants.STATE_KEY, userData.getState());
            jSONObject.put(ImpressionData.COUNTRY, userData.getCountry());
            jSONObject.put("dma", userData.getDma());
            return jSONObject;
        }
        return null;
    }

    public static PlayList parsePlayListResponse(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(TAG, "playlist = \n" + jSONObject.toString(2));
            }
            PlayList playList = new PlayList();
            String string = jSONObject.getString("ver");
            playList.playListVersion = string;
            if (!string.equals(PlayList.VERSION)) {
                MMLog.m4068e(TAG, "Playlist response does not match requested version");
                return null;
            }
            String optString = jSONObject.optString("config", null);
            playList.handshakeConfig = optString;
            if (optString != null && !optString.equals(Handshake.getConfig())) {
                Handshake.request(true);
            }
            playList.responseId = JSONUtils.getNonEmptyString(jSONObject, "id");
            playList.placementId = JSONUtils.getNonEmptyString(jSONObject, "posId");
            playList.placementName = JSONUtils.getNonEmptyString(jSONObject, "pos");
            String nonEmptyString = JSONUtils.getNonEmptyString(jSONObject, "dcn");
            playList.siteId = nonEmptyString;
            if (!"DoNotReport".equals(nonEmptyString)) {
                playList.enableReporting();
            } else if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(TAG, "Playlist dcn is <DoNotReport> -- reporting disabled");
            }
            JSONArray jSONArray = jSONObject.getJSONArray("playlist");
            int i = 0;
            while (true) {
                if (i >= jSONArray.length()) {
                    return playList;
                }
                try {
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    playList.addItem(PlayListServerAdapter.getPlayListItemType(jSONObject2.getString("type")).createAdWrapperFromJSON(jSONObject2, playList.responseId));
                } catch (Exception e) {
                    MMLog.m4067e(TAG, "Unable to parse play list item<" + i + ">", e);
                }
                i++;
            }
        } catch (JSONException e2) {
            MMLog.m4067e(TAG, "Unable to parse play list", e2);
            return null;
        }
    }

    @Override // com.millennialmedia.internal.playlistserver.PlayListServerAdapter
    public void loadPlayList(final Map<String, Object> map, final PlayListServerAdapter.AdapterLoadListener adapterLoadListener, final int i) {
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.playlistserver.OrangeServerAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                PlayListServerAdapter.AdapterLoadListener adapterLoadListener2;
                RuntimeException runtimeException;
                String activePlaylistServerBaseUrl = Handshake.getActivePlaylistServerBaseUrl();
                if (activePlaylistServerBaseUrl == null) {
                    adapterLoadListener2 = adapterLoadListener;
                    runtimeException = new RuntimeException("Unable to determine base url for request");
                } else {
                    String concat = activePlaylistServerBaseUrl.concat(OrangeServerAdapter.PLAYLIST_REQUEST_PATH);
                    String buildAdRequest = OrangeServerAdapter.buildAdRequest(map, URLUtil.isHttpsUrl(concat));
                    if (buildAdRequest == null) {
                        adapterLoadListener2 = adapterLoadListener;
                        runtimeException = new RuntimeException("Unable to create post request data");
                    } else {
                        if (MMLog.isDebugEnabled()) {
                            String str = OrangeServerAdapter.TAG;
                            MMLog.m4070d(str, "Request\n\turl: " + concat + "\n\tpost data: " + buildAdRequest);
                        }
                        HttpUtils.Response contentFromPostRequest = HttpUtils.getContentFromPostRequest(concat, buildAdRequest, "application/json", i);
                        if (contentFromPostRequest.code == 200 && !TextUtils.isEmpty(contentFromPostRequest.content)) {
                            if (MMLog.isDebugEnabled()) {
                                String str2 = OrangeServerAdapter.TAG;
                                MMLog.m4070d(str2, "Response content:\n" + contentFromPostRequest.content);
                            }
                            PlayList parsePlayListResponse = OrangeServerAdapter.parsePlayListResponse(contentFromPostRequest.content);
                            if (parsePlayListResponse == null) {
                                adapterLoadListener.loadFailed(new RuntimeException("Unable to get valid playlist"));
                                return;
                            } else {
                                adapterLoadListener.loadSucceeded(parsePlayListResponse);
                                return;
                            }
                        }
                        adapterLoadListener2 = adapterLoadListener;
                        runtimeException = new RuntimeException("Post request failed to get ad");
                    }
                }
                adapterLoadListener2.loadFailed(runtimeException);
            }
        });
    }
}
