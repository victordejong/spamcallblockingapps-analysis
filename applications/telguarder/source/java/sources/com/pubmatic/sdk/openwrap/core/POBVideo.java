package com.pubmatic.sdk.openwrap.core;

import com.pubmatic.sdk.common.POBAdSize;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.POBInstanceProvider;
import com.pubmatic.sdk.openwrap.core.POBRequest;
import com.pubmatic.sdk.video.player.POBVideoPlayerView;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBVideo.class */
public class POBVideo {

    /* renamed from: f */
    private static final int[] f762f = {2, 3, 5, 6, 7, 8};

    /* renamed from: g */
    private static final String[] f763g = POBVideoPlayerView.SupportedMediaType.getStringValues();

    /* renamed from: h */
    private static final int[] f764h = {2};

    /* renamed from: i */
    private static final int[] f765i = {1, 2, 3};

    /* renamed from: a */
    private Linearity f766a;

    /* renamed from: b */
    private POBRequest.AdPosition f767b = POBRequest.AdPosition.UNKNOWN;

    /* renamed from: c */
    private Placement f768c;

    /* renamed from: d */
    private POBAdSize f769d;

    /* renamed from: e */
    private JSONArray f770e;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBVideo$Linearity.class */
    public enum Linearity {
        LINEAR(1),
        NON_LINEAR(2);
        

        /* renamed from: a */
        private final int f772a;

        Linearity(int i) {
            this.f772a = i;
        }

        public int getValue() {
            return this.f772a;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/openwrap/core/POBVideo$Placement.class */
    public enum Placement {
        IN_BANNER(2),
        INTERSTITIAL(5);
        

        /* renamed from: a */
        private final int f774a;

        Placement(int i) {
            this.f774a = i;
        }

        public int getValue() {
            return this.f774a;
        }
    }

    public POBVideo(Placement placement, Linearity linearity, POBAdSize pOBAdSize) {
        this.f766a = Linearity.LINEAR;
        this.f769d = pOBAdSize;
        this.f768c = placement;
        this.f766a = linearity;
    }

    /* renamed from: a */
    private Set<Integer> m830a() {
        HashSet hashSet = new HashSet();
        if (POBInstanceProvider.getSdkConfig().getVideoMeasurementProvider() != null) {
            hashSet.add(Integer.valueOf(POBRequest.API.OMSDK.getValue()));
        }
        return hashSet;
    }

    public JSONObject getRTBJson() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(POBConstants.KEY_W, this.f769d.getAdWidth());
        jSONObject.put(POBConstants.KEY_H, this.f769d.getAdHeight());
        if (this.f770e == null) {
            POBBanner pOBBanner = new POBBanner(this.f769d);
            pOBBanner.setAdPosition(this.f767b);
            this.f770e = new JSONArray(new JSONObject[]{pOBBanner.getRTBJson(new HashSet())});
        }
        jSONObject.put("companionad", this.f770e);
        jSONObject.put(POBConstants.KEY_POSITION, this.f767b.getValue());
        jSONObject.put("protocols", new JSONArray(f762f));
        jSONObject.put("mimes", new JSONArray(f763g));
        jSONObject.put("linearity", this.f766a.getValue());
        jSONObject.put("boxingallowed", 1);
        jSONObject.put("delivery", new JSONArray(f764h));
        jSONObject.put("companiontype", new JSONArray(f765i));
        jSONObject.put("placement", this.f768c.getValue());
        jSONObject.put("playbackend", 1);
        jSONObject.put("startdelay", 0);
        Set<Integer> m830a = m830a();
        if (!m830a.isEmpty()) {
            jSONObject.put(POBCommonConstants.API_PARAM, new JSONArray((Collection) m830a));
        }
        return jSONObject;
    }

    public void setCompanionAds(JSONArray jSONArray) {
        this.f770e = jSONArray;
    }

    public void setPosition(POBRequest.AdPosition adPosition) {
        this.f767b = adPosition;
    }
}
