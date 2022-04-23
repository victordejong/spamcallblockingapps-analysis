package com.bytedance.sdk.openadsdk.core;

import android.text.TextUtils;
import com.appsflyer.internal.referrer.Payload;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.e.a;
import com.bytedance.sdk.openadsdk.core.e.c;
import com.bytedance.sdk.openadsdk.core.e.e;
import com.bytedance.sdk.openadsdk.core.e.f;
import com.bytedance.sdk.openadsdk.core.e.h;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.e.j;
import com.bytedance.sdk.openadsdk.core.e.o;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import net.pubnative.lite.sdk.models.APIAsset;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/b.class */
public class b {
    public static a a(JSONObject jSONObject, AdSlot adSlot, j jVar) {
        if (jSONObject == null) {
            return null;
        }
        try {
            a aVar = new a();
            aVar.a(jSONObject.optString("request_id"));
            aVar.a(jSONObject.optInt("ret"));
            aVar.b(jSONObject.optString("message"));
            String optString = jSONObject.optString("auction_price");
            if (aVar.a() != 0) {
                return null;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("creatives");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    i b2 = b(optJSONArray.optJSONObject(i), adSlot, jVar);
                    if (b2 != null && a(b2)) {
                        b2.c(optString);
                        aVar.a(b2);
                    }
                }
            }
            return aVar;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static i a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return b(jSONObject, null, null);
    }

    private static boolean a(com.bytedance.sdk.openadsdk.core.e.b bVar) {
        return bVar != null && !TextUtils.isEmpty(bVar.a());
    }

    private static boolean a(e eVar) {
        if (eVar == null) {
            return true;
        }
        if (TextUtils.isEmpty(eVar.a()) || TextUtils.isEmpty(eVar.b())) {
            return false;
        }
        return eVar.c() == 1 || eVar.c() == 2;
    }

    private static boolean a(i iVar) {
        boolean z = iVar != null;
        boolean z2 = z;
        if (iVar != null) {
            if (TextUtils.isEmpty(iVar.P()) || iVar.P().length() <= 1 || !a(iVar.R())) {
                return false;
            }
            int D = iVar.D();
            if (D == 2 || D == 3 ? TextUtils.isEmpty(iVar.G()) : !(D == 4 ? a(iVar.Q()) : D != 5 || !TextUtils.isEmpty(iVar.I()))) {
                z = false;
            }
            if (!z) {
                return z;
            }
            int T = iVar.T();
            if (!(T == 2 || T == 3 || T == 4)) {
                if (T == 5 || T == 15) {
                    z2 = z;
                    if (!a(iVar.B())) {
                        z2 = false;
                    }
                } else if (T != 16) {
                    z2 = z;
                }
            }
            z2 = z;
            if (!a(iVar.H())) {
                z2 = false;
            }
        }
        return z2;
    }

    private static boolean a(o oVar) {
        return oVar != null && !TextUtils.isEmpty(oVar.h()) && !TextUtils.isEmpty(oVar.g());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean a(java.util.List<com.bytedance.sdk.openadsdk.core.e.h> r2) {
        /*
            r0 = r2
            if (r0 != 0) goto L_0x0006
            r0 = 0
            return r0
        L_0x0006:
            r0 = r2
            int r0 = r0.size()
            if (r0 > 0) goto L_0x0011
            r0 = 0
            return r0
        L_0x0011:
            r0 = r2
            java.util.Iterator r0 = r0.iterator()
            r2 = r0
        L_0x0018:
            r0 = r2
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x003d
            r0 = r2
            java.lang.Object r0 = r0.next()
            com.bytedance.sdk.openadsdk.core.e.h r0 = (com.bytedance.sdk.openadsdk.core.e.h) r0
            r3 = r0
            r0 = r3
            if (r0 != 0) goto L_0x0031
            r0 = 0
            return r0
        L_0x0031:
            r0 = r3
            java.lang.String r0 = r0.a()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x0018
            r0 = 0
            return r0
        L_0x003d:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.b.a(java.util.List):boolean");
    }

    private static AdSlot b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString("mCodeId", "");
        int optInt = jSONObject.optInt("mImgAcceptedWidth", 0);
        int optInt2 = jSONObject.optInt("mImgAcceptedHeight", 0);
        float optDouble = (float) jSONObject.optDouble("mExpressViewAcceptedWidth", 0.0d);
        float optDouble2 = (float) jSONObject.optDouble("mExpressViewAcceptedHeight", 0.0d);
        int optInt3 = jSONObject.optInt("mAdCount", 6);
        boolean optBoolean = jSONObject.optBoolean("mSupportDeepLink", true);
        String optString2 = jSONObject.optString("mRewardName", "");
        int optInt4 = jSONObject.optInt("mRewardAmount", 0);
        String optString3 = jSONObject.optString("mMediaExtra", "");
        String optString4 = jSONObject.optString("mUserID", "");
        int optInt5 = jSONObject.optInt("mOrientation", 2);
        int optInt6 = jSONObject.optInt("mNativeAdType", 0);
        boolean optBoolean2 = jSONObject.optBoolean("mIsAutoPlay", false);
        boolean optBoolean3 = jSONObject.optBoolean("mIsExpressAd", false);
        return new AdSlot.Builder().setCodeId(optString).setImageAcceptedSize(optInt, optInt2).setExpressViewAcceptedSize(optDouble, optDouble2).setAdCount(optInt3).setSupportDeepLink(optBoolean).setRewardName(optString2).setRewardAmount(optInt4).setMediaExtra(optString3).setUserID(optString4).setOrientation(optInt5).setNativeAdType(optInt6).setIsAutoPlay(optBoolean2).isExpressAd(optBoolean3).withBid(jSONObject.optString("mBidAdm", "")).build();
    }

    public static i b(JSONObject jSONObject, AdSlot adSlot, j jVar) {
        if (jSONObject == null) {
            return null;
        }
        i iVar = new i();
        iVar.o(jSONObject.optInt("interaction_type"));
        iVar.e(jSONObject.optString("target_url"));
        iVar.j(jSONObject.optString("ad_id"));
        iVar.d(jSONObject.optString(Payload.SOURCE));
        iVar.r(jSONObject.optInt("dislike_control", 0));
        iVar.j(jSONObject.optInt("play_bar_show_time", -200));
        iVar.a(jSONObject.optBoolean("is_playable"));
        iVar.d(jSONObject.optInt("playable_type", 0));
        iVar.b(jSONObject.optString("playable_style"));
        iVar.l(jSONObject.optString("gecko_id"));
        JSONObject optJSONObject = jSONObject.optJSONObject(APIAsset.ICON);
        iVar.b(jSONObject.optBoolean("screenshot", false));
        iVar.h(jSONObject.optInt("play_bar_style", 0));
        iVar.m(jSONObject.optString("market_url", ""));
        iVar.f(jSONObject.optInt("video_adaptation", 0));
        iVar.e(jSONObject.optInt("feed_video_opentype", 0));
        iVar.a(jSONObject.optJSONObject("session_params"));
        iVar.c(jSONObject.optString("auction_price", ""));
        iVar.b(jSONObject.optInt("render_control", jVar != null ? jVar.e : 1));
        if (optJSONObject != null) {
            h hVar = new h();
            hVar.a(optJSONObject.optString("url"));
            hVar.b(optJSONObject.optInt("height"));
            hVar.a(optJSONObject.optInt("width"));
            iVar.a(hVar);
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("reward_data");
        if (optJSONObject2 != null) {
            iVar.a(optJSONObject2.optInt("reward_amount", 0));
            iVar.a(optJSONObject2.optString("reward_name", ""));
        }
        JSONObject optJSONObject3 = jSONObject.optJSONObject("cover_image");
        if (optJSONObject3 != null) {
            h hVar2 = new h();
            hVar2.a(optJSONObject3.optString("url"));
            hVar2.b(optJSONObject3.optInt("height"));
            hVar2.a(optJSONObject3.optInt("width"));
            iVar.b(hVar2);
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("image");
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                h hVar3 = new h();
                JSONObject optJSONObject4 = optJSONArray.optJSONObject(i);
                hVar3.a(optJSONObject4.optString("url"));
                hVar3.b(optJSONObject4.optInt("height"));
                hVar3.a(optJSONObject4.optInt("width"));
                iVar.c(hVar3);
            }
        }
        JSONArray optJSONArray2 = jSONObject.optJSONArray("show_url");
        if (optJSONArray2 != null) {
            for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                iVar.J().add(optJSONArray2.optString(i2));
            }
        }
        JSONArray optJSONArray3 = jSONObject.optJSONArray("click_url");
        if (optJSONArray3 != null) {
            for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
                iVar.K().add(optJSONArray3.optString(i3));
            }
        }
        JSONArray optJSONArray4 = jSONObject.optJSONArray("play_start");
        if (optJSONArray4 != null) {
            for (int i4 = 0; i4 < optJSONArray4.length(); i4++) {
                iVar.L().add(optJSONArray4.optString(i4));
            }
        }
        JSONObject optJSONObject5 = jSONObject.optJSONObject("click_area");
        if (optJSONObject5 != null) {
            c cVar = new c();
            cVar.f8868a = optJSONObject5.optBoolean("click_upper_content_area", true);
            cVar.f8869b = optJSONObject5.optBoolean("click_upper_non_content_area", true);
            cVar.f8870c = optJSONObject5.optBoolean("click_lower_content_area", true);
            cVar.f8871d = optJSONObject5.optBoolean("click_lower_non_content_area", true);
            cVar.e = optJSONObject5.optBoolean("click_button_area", true);
            cVar.f = optJSONObject5.optBoolean("click_video_area", true);
            iVar.a(cVar);
        }
        JSONObject optJSONObject6 = jSONObject.optJSONObject("adslot");
        if (optJSONObject6 != null) {
            adSlot = b(optJSONObject6);
        }
        iVar.a(adSlot);
        iVar.i(jSONObject.optInt("intercept_flag", 0));
        iVar.f(jSONObject.optString("phone_num"));
        iVar.g(jSONObject.optString("title"));
        iVar.h(jSONObject.optString("description"));
        iVar.i(jSONObject.optString("button_text"));
        iVar.g(jSONObject.optInt("ad_logo", 1));
        iVar.k(jSONObject.optString("ext"));
        iVar.m(jSONObject.optInt("cover_click_area", 0));
        iVar.p(jSONObject.optInt("image_mode"));
        iVar.m(jSONObject.optInt("cover_click_area", 0));
        JSONObject optJSONObject7 = jSONObject.optJSONObject("app");
        JSONObject optJSONObject8 = jSONObject.optJSONObject("deep_link");
        iVar.a(d(optJSONObject7));
        iVar.a(f(optJSONObject8));
        JSONArray optJSONArray5 = jSONObject.optJSONArray("filter_words");
        if (optJSONArray5 != null) {
            for (int i5 = 0; i5 < optJSONArray5.length(); i5++) {
                FilterWord c2 = c(optJSONArray5.optJSONObject(i5));
                if (c2 != null && c2.isValid()) {
                    iVar.a(c2);
                }
            }
        }
        iVar.q(jSONObject.optInt("count_down"));
        iVar.a(jSONObject.optLong("expiration_time"));
        JSONObject optJSONObject9 = jSONObject.optJSONObject("video");
        if (optJSONObject9 != null) {
            iVar.a(g(optJSONObject9));
        }
        JSONObject optJSONObject10 = jSONObject.optJSONObject("download_conf");
        if (optJSONObject10 != null) {
            iVar.a(e(optJSONObject10));
        }
        iVar.a(h(jSONObject.optJSONObject("media_ext")));
        JSONObject optJSONObject11 = jSONObject.optJSONObject("tpl_info");
        if (optJSONObject11 != null) {
            i.a aVar = new i.a();
            aVar.b(optJSONObject11.optString("id"));
            aVar.c(optJSONObject11.optString("md5"));
            aVar.d(optJSONObject11.optString("url"));
            aVar.e(optJSONObject11.optString("data"));
            aVar.f(optJSONObject11.optString("diff_data"));
            aVar.g(optJSONObject11.optString("dynamic_creative"));
            aVar.a(optJSONObject11.optString("version"));
            iVar.a(aVar);
        }
        iVar.c(jSONObject.optInt("if_block_lp", 0));
        iVar.k(jSONObject.optInt("cache_sort", 1));
        iVar.l(jSONObject.optInt("if_sp_cache", 0));
        iVar.n(jSONObject.optInt("ua_policy", 2));
        return iVar;
    }

    private static FilterWord c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            FilterWord filterWord = new FilterWord();
            filterWord.setId(jSONObject.optString("id"));
            filterWord.setName(jSONObject.optString("name"));
            filterWord.setIsSelected(jSONObject.optBoolean("is_selected"));
            JSONArray optJSONArray = jSONObject.optJSONArray("options");
            if (optJSONArray != null && optJSONArray.length() > 0) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    FilterWord c2 = c(optJSONArray.optJSONObject(i));
                    if (c2 != null && c2.isValid()) {
                        filterWord.addOption(c2);
                    }
                }
            }
            return filterWord;
        } catch (Throwable th) {
            return null;
        }
    }

    private static com.bytedance.sdk.openadsdk.core.e.b d(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.e.b bVar = new com.bytedance.sdk.openadsdk.core.e.b();
        bVar.b(jSONObject.optString("app_name"));
        bVar.c(jSONObject.optString("package_name"));
        bVar.a(jSONObject.optString("download_url"));
        bVar.a(jSONObject.optInt("score", 4));
        bVar.b(jSONObject.optInt("comment_num", 6870));
        bVar.c(jSONObject.optInt("app_size", 0));
        return bVar;
    }

    private static f e(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        f fVar = new f();
        fVar.a(jSONObject.optInt("if_send_click", 0));
        return fVar;
    }

    private static e f(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        e eVar = new e();
        eVar.a(jSONObject.optString("deeplink_url"));
        eVar.b(jSONObject.optString("fallback_url"));
        eVar.a(jSONObject.optInt("fallback_type"));
        return eVar;
    }

    private static o g(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        o oVar = new o();
        oVar.b(jSONObject.optInt("cover_height"));
        oVar.c(jSONObject.optInt("cover_width"));
        oVar.a(jSONObject.optString("resolution"));
        oVar.a(jSONObject.optLong("size"));
        oVar.a(jSONObject.optDouble("video_duration"));
        oVar.b(jSONObject.optString("cover_url"));
        oVar.c(jSONObject.optString("video_url"));
        oVar.d(jSONObject.optString("endcard"));
        oVar.e(jSONObject.optString("playable_download_url"));
        oVar.f(jSONObject.optString("file_hash"));
        oVar.d(jSONObject.optInt("if_playable_loading_show", 0));
        oVar.e(jSONObject.optInt("remove_loading_page_type", 0));
        oVar.a(jSONObject.optInt("fallback_endcard_judge", 0));
        return oVar;
    }

    private static Map<String, Object> h(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (!TextUtils.isEmpty(next)) {
                hashMap.put(next, jSONObject.opt(next));
            }
        }
        return hashMap;
    }
}
