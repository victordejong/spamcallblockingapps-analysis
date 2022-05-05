package com.flurry.sdk;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.mopub.mobileads.AdMobBannerCustomEvent;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import p459j.p460a.p541n0.C13032a;
/* renamed from: com.flurry.sdk.dn */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/dn.class */
public final class C2986dn {
    /* renamed from: a */
    public static EnumC2911ch m33357a(String str) {
        EnumC2911ch chVar = EnumC2911ch.BANNER;
        EnumC2911ch chVar2 = chVar;
        try {
            if (!TextUtils.isEmpty(str)) {
                chVar2 = (EnumC2911ch) Enum.valueOf(EnumC2911ch.class, str);
            }
        } catch (Exception e) {
            chVar2 = chVar;
        }
        return chVar2;
    }

    /* renamed from: a */
    public static List<C2909cf> m33356a(JSONObject jSONObject) throws JSONException {
        List<JSONObject> a = C3446lb.m32447a(jSONObject.getJSONArray("adUnits"));
        ArrayList arrayList = new ArrayList();
        for (JSONObject jSONObject2 : a) {
            C2909cf cfVar = new C2909cf();
            cfVar.f4435a = m33357a(jSONObject2.getString("adViewType"));
            cfVar.f4436b = jSONObject2.optString("adSpace", "");
            cfVar.f4437c = jSONObject2.optString("adUnitSection", "");
            cfVar.f4438d = jSONObject2.getLong("expiration");
            cfVar.f4439e = jSONObject2.optString("interactionType", "cpc");
            cfVar.f4443i = jSONObject2.getString("groupId");
            cfVar.f4440f = m33355a(jSONObject2, cfVar.f4437c);
            cfVar.f4441g = m33351c(jSONObject2);
            cfVar.f4442h = jSONObject2.getInt("combinable");
            cfVar.f4444j = jSONObject2.getLong("price");
            cfVar.f4445k = jSONObject2.getString("adomain");
            cfVar.f4446l = jSONObject2.getLong("closableTimeMillis15SecOrLess");
            cfVar.f4447m = jSONObject2.getLong("closableTimeMillisLongerThan15Sec");
            cfVar.f4448n = jSONObject2.getLong("viewabilityDurationMillis");
            cfVar.f4449o = jSONObject2.getInt("viewabilityPercentVisible");
            cfVar.f4450p = m33349d(jSONObject2);
            cfVar.f4451q = jSONObject2.getBoolean("rewardable");
            cfVar.f4452r = jSONObject2.getLong("preRenderTimeoutMillis");
            cfVar.f4453s = jSONObject2.getInt("preCacheAdSkippableTimeLimitMillis");
            cfVar.f4454t = jSONObject2.getBoolean("videoAutoPlay");
            cfVar.f4455u = jSONObject2.getBoolean("supportMRAID");
            cfVar.f4456v = jSONObject2.getBoolean("preRender");
            cfVar.f4457w = jSONObject2.getBoolean("renderTime");
            cfVar.f4458x = C3446lb.m32446a(jSONObject2.getJSONObject("clientSideRtbPayload"));
            cfVar.f4459y = m33354b(jSONObject2.getString("screenOrientation"));
            cfVar.f4460z = m33348e(jSONObject2);
            cfVar.f4432A = jSONObject2.getInt("videoPctCompletionForMoreInfo");
            cfVar.f4433B = jSONObject2.getInt("videoPctCompletionForReward");
            cfVar.f4434C = jSONObject2.getInt("videoTimeMillisForViewBeacon");
            arrayList.add(cfVar);
        }
        return arrayList;
    }

    /* renamed from: a */
    public static List<C2904ca> m33355a(JSONObject jSONObject, String str) throws JSONException {
        C2908ce ceVar;
        List<JSONObject> a = C3446lb.m32447a(jSONObject.getJSONArray("adFrames"));
        ArrayList arrayList = new ArrayList();
        for (JSONObject jSONObject2 : a) {
            C2904ca caVar = new C2904ca();
            caVar.f4366a = jSONObject2.getInt("binding");
            caVar.f4367b = jSONObject2.getString("display");
            caVar.f4368c = jSONObject2.getString("content");
            JSONObject jSONObject3 = jSONObject2.getJSONObject("adSpaceLayout");
            if (jSONObject3 != null) {
                ceVar = new C2908ce();
                ceVar.f4427a = jSONObject3.getInt(AdMobBannerCustomEvent.AD_WIDTH_KEY);
                ceVar.f4428b = jSONObject3.getInt(AdMobBannerCustomEvent.AD_HEIGHT_KEY);
                ceVar.f4429c = jSONObject3.getString("fix");
                ceVar.f4430d = jSONObject3.getString("format");
                ceVar.f4431e = jSONObject3.getString("alignment");
            } else {
                ceVar = null;
            }
            caVar.f4369d = ceVar;
            caVar.f4370e = m33347f(jSONObject2);
            caVar.f4371f = jSONObject2.getString("adGuid");
            caVar.f4372g = TextUtils.isEmpty(str) ? jSONObject2.getInt("cachingEnum") : EnumC2817al.STREAM_ONLY.f4004d;
            caVar.f4373h = jSONObject2.getLong("assetExpirationTimestampUTCMillis");
            caVar.f4374i = C3446lb.m32442b(jSONObject2.getJSONArray("cacheWhitelistedAssets"));
            caVar.f4375j = C3446lb.m32442b(jSONObject2.getJSONArray("cacheBlacklistedAssets"));
            arrayList.add(caVar);
        }
        return arrayList;
    }

    /* renamed from: b */
    public static EnumC2923ct m33354b(String str) {
        EnumC2923ct ctVar = EnumC2923ct.PORTRAIT;
        EnumC2923ct ctVar2 = ctVar;
        try {
            if (!TextUtils.isEmpty(str)) {
                ctVar2 = (EnumC2923ct) Enum.valueOf(EnumC2923ct.class, str);
            }
        } catch (Exception e) {
            ctVar2 = ctVar;
        }
        return ctVar2;
    }

    /* renamed from: b */
    public static List<C2916cm> m33353b(JSONObject jSONObject) throws JSONException {
        List<JSONObject> a = C3446lb.m32447a(jSONObject.getJSONArray("frequencyCapResponseInfoList"));
        ArrayList arrayList = new ArrayList();
        for (JSONObject jSONObject2 : a) {
            C2916cm cmVar = new C2916cm();
            cmVar.f4491a = m33352c(jSONObject2.getString("capType"));
            cmVar.f4492b = jSONObject2.getString("id");
            cmVar.f4493c = jSONObject2.getLong("serveTime");
            cmVar.f4494d = jSONObject2.getLong("expirationTime");
            cmVar.f4495e = jSONObject2.getLong("streamCapDurationMillis");
            cmVar.f4496f = jSONObject2.getInt("capRemaining");
            cmVar.f4497g = jSONObject2.getInt("totalCap");
            cmVar.f4498h = jSONObject2.getInt("capDurationType");
            arrayList.add(cmVar);
        }
        return arrayList;
    }

    /* renamed from: c */
    public static EnumC2917cn m33352c(String str) {
        EnumC2917cn cnVar = EnumC2917cn.ADSPACE;
        EnumC2917cn cnVar2 = cnVar;
        try {
            if (!TextUtils.isEmpty(str)) {
                cnVar2 = (EnumC2917cn) Enum.valueOf(EnumC2917cn.class, str);
            }
        } catch (Exception e) {
            cnVar2 = cnVar;
        }
        return cnVar2;
    }

    /* renamed from: c */
    public static List<C2916cm> m33351c(JSONObject jSONObject) throws JSONException {
        List<JSONObject> a = C3446lb.m32447a(jSONObject.getJSONArray("frequencyCapResponseInfoList"));
        ArrayList arrayList = new ArrayList();
        for (JSONObject jSONObject2 : a) {
            if (jSONObject2 != null) {
                C2916cm cmVar = new C2916cm();
                cmVar.f4491a = m33352c(jSONObject2.getString("capType"));
                cmVar.f4492b = jSONObject2.getString("id");
                cmVar.f4493c = jSONObject2.getLong("serveTime");
                cmVar.f4494d = jSONObject2.getLong("expirationTime");
                cmVar.f4495e = jSONObject2.getLong("streamCapDurationMillis");
                cmVar.f4496f = jSONObject2.getInt("capRemaining");
                cmVar.f4497g = jSONObject2.getInt("totalCap");
                cmVar.f4498h = jSONObject2.getInt("capDurationType");
                arrayList.add(cmVar);
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public static EnumC2922cs m33350d(String str) {
        EnumC2922cs csVar = EnumC2922cs.IMAGE;
        EnumC2922cs csVar2 = csVar;
        try {
            if (!TextUtils.isEmpty(str)) {
                csVar2 = (EnumC2922cs) Enum.valueOf(EnumC2922cs.class, str);
            }
        } catch (Exception e) {
            csVar2 = csVar;
        }
        return csVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v10 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r25v0, types: [long] */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v2, types: [long] */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* JADX WARN: Type inference failed for: r25v4 */
    /* JADX WARN: Type inference failed for: r25v6 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<com.flurry.sdk.C2930da> m33349d(org.json.JSONObject r12) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C2986dn.m33349d(org.json.JSONObject):java.util.List");
    }

    /* renamed from: e */
    public static C2920cq m33348e(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = jSONObject.getJSONObject("nativeAdInfo");
        C2920cq cqVar = new C2920cq();
        if (jSONObject2 != null) {
            cqVar.f4508a = jSONObject2.getInt("style");
            cqVar.f4509b = jSONObject2.optString("feedbackDomain");
            cqVar.f4510c = jSONObject2.optString("carasoulgroup");
            cqVar.f4511d = jSONObject2.optString("appInfo");
            cqVar.f4512e = jSONObject2.optString("uiParams");
            cqVar.f4514g = jSONObject2.getString("template");
            List<JSONObject> a = C3446lb.m32447a(jSONObject2.getJSONArray("assets"));
            ArrayList arrayList = new ArrayList();
            for (JSONObject jSONObject3 : a) {
                C2921cr crVar = new C2921cr();
                crVar.f4515a = jSONObject3.getString("name");
                crVar.f4517c = jSONObject3.getString(C13032a.f29462d);
                crVar.f4518d = jSONObject3.getInt("width");
                crVar.f4519e = jSONObject3.getInt("height");
                crVar.f4516b = m33350d(jSONObject3.getString("type"));
                crVar.f4520f = C3446lb.m32447a(jSONObject3.getJSONArray("embeddedLandingUrls"));
                crVar.f4521g = C3446lb.m32446a(jSONObject3.getJSONObject("params"));
                arrayList.add(crVar);
            }
            cqVar.f4513f = arrayList;
        }
        return cqVar;
    }

    /* renamed from: f */
    public static List<C2912ci> m33347f(JSONObject jSONObject) throws JSONException {
        List<JSONObject> a = C3446lb.m32447a(jSONObject.getJSONArray("callbacks"));
        ArrayList arrayList = new ArrayList();
        for (JSONObject jSONObject2 : a) {
            C2912ci ciVar = new C2912ci();
            ciVar.f4474a = jSONObject2.getString(NotificationCompat.CATEGORY_EVENT);
            ciVar.f4475b = C3446lb.m32442b(jSONObject2.getJSONArray(NotificationCompat.WearableExtender.KEY_ACTIONS));
            arrayList.add(ciVar);
        }
        return arrayList;
    }
}
