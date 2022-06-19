package com.bytedance.sdk.openadsdk.core;

import android.text.TextUtils;
import com.appsflyer.internal.referrer.Payload;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.p154e.C4545a;
import com.bytedance.sdk.openadsdk.core.p154e.C4546b;
import com.bytedance.sdk.openadsdk.core.p154e.C4547c;
import com.bytedance.sdk.openadsdk.core.p154e.C4551e;
import com.bytedance.sdk.openadsdk.core.p154e.C4552f;
import com.bytedance.sdk.openadsdk.core.p154e.C4556h;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.p154e.C4559j;
import com.bytedance.sdk.openadsdk.core.p154e.C4565o;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import net.pubnative.lite.sdk.models.APIAsset;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.core.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/b.class */
public class C4493b {
    /* renamed from: a */
    public static C4545a m35501a(JSONObject jSONObject, AdSlot adSlot, C4559j c4559j) {
        if (jSONObject == null) {
            return null;
        }
        try {
            C4545a c4545a = new C4545a();
            c4545a.m35344a(jSONObject.optString("request_id"));
            c4545a.m35350a(jSONObject.optInt("ret"));
            c4545a.m35341b(jSONObject.optString("message"));
            String optString = jSONObject.optString("auction_price");
            if (c4545a.m35351a() != 0) {
                return null;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("creatives");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    C4557i m35499b = m35499b(optJSONArray.optJSONObject(i), adSlot, c4559j);
                    if (m35499b != null && m35505a(m35499b)) {
                        m35499b.m35183c(optString);
                        c4545a.m35345a(m35499b);
                    }
                }
            }
            return c4545a;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public static C4557i m35502a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return m35499b(jSONObject, null, null);
    }

    /* renamed from: a */
    private static boolean m35507a(C4546b c4546b) {
        return c4546b != null && !TextUtils.isEmpty(c4546b.m35338a());
    }

    /* renamed from: a */
    private static boolean m35506a(C4551e c4551e) {
        if (c4551e == null) {
            return true;
        }
        if (TextUtils.isEmpty(c4551e.m35285a()) || TextUtils.isEmpty(c4551e.m35282b())) {
            return false;
        }
        return c4551e.m35280c() == 1 || c4551e.m35280c() == 2;
    }

    /* renamed from: a */
    private static boolean m35505a(C4557i c4557i) {
        boolean z = c4557i != null;
        boolean z2 = z;
        if (c4557i != null) {
            if (TextUtils.isEmpty(c4557i.m35231P()) || c4557i.m35231P().length() <= 1 || !m35506a(c4557i.m35229R())) {
                return false;
            }
            int m35243D = c4557i.m35243D();
            if (m35243D == 2 || m35243D == 3 ? TextUtils.isEmpty(c4557i.m35240G()) : !(m35243D == 4 ? m35507a(c4557i.m35230Q()) : m35243D != 5 || !TextUtils.isEmpty(c4557i.m35238I()))) {
                z = false;
            }
            if (!z) {
                return z;
            }
            int m35227T = c4557i.m35227T();
            if (m35227T != 2 && m35227T != 3 && m35227T != 4) {
                if (m35227T == 5 || m35227T == 15) {
                    z2 = z;
                    if (!m35504a(c4557i.m35245B())) {
                        z2 = false;
                    }
                } else if (m35227T != 16) {
                    z2 = z;
                }
            }
            z2 = z;
            if (!m35503a(c4557i.m35239H())) {
                z2 = false;
            }
        }
        return z2;
    }

    /* renamed from: a */
    private static boolean m35504a(C4565o c4565o) {
        return c4565o != null && !TextUtils.isEmpty(c4565o.m35043h()) && !TextUtils.isEmpty(c4565o.m35044g());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0021  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m35503a(java.util.List<com.bytedance.sdk.openadsdk.core.p154e.C4556h> r2) {
        /*
            r0 = r2
            if (r0 != 0) goto L6
            r0 = 0
            return r0
        L6:
            r0 = r2
            int r0 = r0.size()
            if (r0 > 0) goto L11
            r0 = 0
            return r0
        L11:
            r0 = r2
            java.util.Iterator r0 = r0.iterator()
            r2 = r0
        L18:
            r0 = r2
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L3d
            r0 = r2
            java.lang.Object r0 = r0.next()
            com.bytedance.sdk.openadsdk.core.e.h r0 = (com.bytedance.sdk.openadsdk.core.p154e.C4556h) r0
            r3 = r0
            r0 = r3
            if (r0 != 0) goto L31
            r0 = 0
            return r0
        L31:
            r0 = r3
            java.lang.String r0 = r0.m35254a()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L18
            r0 = 0
            return r0
        L3d:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.C4493b.m35503a(java.util.List):boolean");
    }

    /* renamed from: b */
    private static AdSlot m35500b(JSONObject jSONObject) {
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

    /* renamed from: b */
    public static C4557i m35499b(JSONObject jSONObject, AdSlot adSlot, C4559j c4559j) {
        if (jSONObject == null) {
            return null;
        }
        C4557i c4557i = new C4557i();
        c4557i.m35148o(jSONObject.optInt("interaction_type"));
        c4557i.m35176e(jSONObject.optString("target_url"));
        c4557i.m35161j(jSONObject.optString("ad_id"));
        c4557i.m35179d(jSONObject.optString(Payload.SOURCE));
        c4557i.m35142r(jSONObject.optInt("dislike_control", 0));
        c4557i.m35162j(jSONObject.optInt("play_bar_show_time", -200));
        c4557i.m35203a(jSONObject.optBoolean("is_playable"));
        c4557i.m35181d(jSONObject.optInt("playable_type", 0));
        c4557i.m35190b(jSONObject.optString("playable_style"));
        c4557i.m35155l(jSONObject.optString("gecko_id"));
        JSONObject optJSONObject = jSONObject.optJSONObject(APIAsset.ICON);
        c4557i.m35188b(jSONObject.optBoolean("screenshot", false));
        c4557i.m35168h(jSONObject.optInt("play_bar_style", 0));
        c4557i.m35152m(jSONObject.optString("market_url", ""));
        c4557i.m35174f(jSONObject.optInt("video_adaptation", 0));
        c4557i.m35177e(jSONObject.optInt("feed_video_opentype", 0));
        c4557i.m35204a(jSONObject.optJSONObject("session_params"));
        c4557i.m35183c(jSONObject.optString("auction_price", ""));
        c4557i.m35194b(jSONObject.optInt("render_control", c4559j != null ? c4559j.f16593e : 1));
        if (optJSONObject != null) {
            C4556h c4556h = new C4556h();
            c4556h.m35251a(optJSONObject.optString("url"));
            c4556h.m35249b(optJSONObject.optInt("height"));
            c4556h.m35253a(optJSONObject.optInt("width"));
            c4557i.m35211a(c4556h);
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("reward_data");
        if (optJSONObject2 != null) {
            c4557i.m35219a(optJSONObject2.optInt("reward_amount", 0));
            c4557i.m35206a(optJSONObject2.optString("reward_name", ""));
        }
        JSONObject optJSONObject3 = jSONObject.optJSONObject("cover_image");
        if (optJSONObject3 != null) {
            C4556h c4556h2 = new C4556h();
            c4556h2.m35251a(optJSONObject3.optString("url"));
            c4556h2.m35249b(optJSONObject3.optInt("height"));
            c4556h2.m35253a(optJSONObject3.optInt("width"));
            c4557i.m35192b(c4556h2);
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("image");
        if (optJSONArray != null) {
            for (int i = 0; i < optJSONArray.length(); i++) {
                C4556h c4556h3 = new C4556h();
                JSONObject optJSONObject4 = optJSONArray.optJSONObject(i);
                c4556h3.m35251a(optJSONObject4.optString("url"));
                c4556h3.m35249b(optJSONObject4.optInt("height"));
                c4556h3.m35253a(optJSONObject4.optInt("width"));
                c4557i.m35185c(c4556h3);
            }
        }
        JSONArray optJSONArray2 = jSONObject.optJSONArray("show_url");
        if (optJSONArray2 != null) {
            for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                c4557i.m35237J().add(optJSONArray2.optString(i2));
            }
        }
        JSONArray optJSONArray3 = jSONObject.optJSONArray("click_url");
        if (optJSONArray3 != null) {
            for (int i3 = 0; i3 < optJSONArray3.length(); i3++) {
                c4557i.m35236K().add(optJSONArray3.optString(i3));
            }
        }
        JSONArray optJSONArray4 = jSONObject.optJSONArray("play_start");
        if (optJSONArray4 != null) {
            for (int i4 = 0; i4 < optJSONArray4.length(); i4++) {
                c4557i.m35235L().add(optJSONArray4.optString(i4));
            }
        }
        JSONObject optJSONObject5 = jSONObject.optJSONObject("click_area");
        if (optJSONObject5 != null) {
            C4547c c4547c = new C4547c();
            c4547c.f16467a = optJSONObject5.optBoolean("click_upper_content_area", true);
            c4547c.f16468b = optJSONObject5.optBoolean("click_upper_non_content_area", true);
            c4547c.f16469c = optJSONObject5.optBoolean("click_lower_content_area", true);
            c4547c.f16470d = optJSONObject5.optBoolean("click_lower_non_content_area", true);
            c4547c.f16471e = optJSONObject5.optBoolean("click_button_area", true);
            c4547c.f16472f = optJSONObject5.optBoolean("click_video_area", true);
            c4557i.m35214a(c4547c);
        }
        JSONObject optJSONObject6 = jSONObject.optJSONObject("adslot");
        if (optJSONObject6 != null) {
            adSlot = m35500b(optJSONObject6);
        }
        c4557i.m35217a(adSlot);
        c4557i.m35165i(jSONObject.optInt("intercept_flag", 0));
        c4557i.m35173f(jSONObject.optString("phone_num"));
        c4557i.m35170g(jSONObject.optString("title"));
        c4557i.m35167h(jSONObject.optString("description"));
        c4557i.m35164i(jSONObject.optString("button_text"));
        c4557i.m35171g(jSONObject.optInt("ad_logo", 1));
        c4557i.m35158k(jSONObject.optString("ext"));
        c4557i.m35153m(jSONObject.optInt("cover_click_area", 0));
        c4557i.m35146p(jSONObject.optInt("image_mode"));
        c4557i.m35153m(jSONObject.optInt("cover_click_area", 0));
        JSONObject optJSONObject7 = jSONObject.optJSONObject("app");
        JSONObject optJSONObject8 = jSONObject.optJSONObject("deep_link");
        c4557i.m35215a(m35497d(optJSONObject7));
        c4557i.m35213a(m35495f(optJSONObject8));
        JSONArray optJSONArray5 = jSONObject.optJSONArray("filter_words");
        if (optJSONArray5 != null) {
            for (int i5 = 0; i5 < optJSONArray5.length(); i5++) {
                FilterWord m35498c = m35498c(optJSONArray5.optJSONObject(i5));
                if (m35498c != null && m35498c.isValid()) {
                    c4557i.m35216a(m35498c);
                }
            }
        }
        c4557i.m35144q(jSONObject.optInt("count_down"));
        c4557i.m35218a(jSONObject.optLong("expiration_time"));
        JSONObject optJSONObject9 = jSONObject.optJSONObject("video");
        if (optJSONObject9 != null) {
            c4557i.m35207a(m35494g(optJSONObject9));
        }
        JSONObject optJSONObject10 = jSONObject.optJSONObject("download_conf");
        if (optJSONObject10 != null) {
            c4557i.m35212a(m35496e(optJSONObject10));
        }
        c4557i.m35205a(m35493h(jSONObject.optJSONObject("media_ext")));
        JSONObject optJSONObject11 = jSONObject.optJSONObject("tpl_info");
        if (optJSONObject11 != null) {
            C4557i.C4558a c4558a = new C4557i.C4558a();
            c4558a.m35130b(optJSONObject11.optString("id"));
            c4558a.m35128c(optJSONObject11.optString("md5"));
            c4558a.m35126d(optJSONObject11.optString("url"));
            c4558a.m35124e(optJSONObject11.optString("data"));
            c4558a.m35122f(optJSONObject11.optString("diff_data"));
            c4558a.m35120g(optJSONObject11.optString("dynamic_creative"));
            c4558a.m35132a(optJSONObject11.optString("version"));
            c4557i.m35210a(c4558a);
        }
        c4557i.m35186c(jSONObject.optInt("if_block_lp", 0));
        c4557i.m35159k(jSONObject.optInt("cache_sort", 1));
        c4557i.m35156l(jSONObject.optInt("if_sp_cache", 0));
        c4557i.m35150n(jSONObject.optInt("ua_policy", 2));
        return c4557i;
    }

    /* renamed from: c */
    private static FilterWord m35498c(JSONObject jSONObject) {
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
                    FilterWord m35498c = m35498c(optJSONArray.optJSONObject(i));
                    if (m35498c != null && m35498c.isValid()) {
                        filterWord.addOption(m35498c);
                    }
                }
            }
            return filterWord;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: d */
    private static C4546b m35497d(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        C4546b c4546b = new C4546b();
        c4546b.m35333b(jSONObject.optString("app_name"));
        c4546b.m35330c(jSONObject.optString("package_name"));
        c4546b.m35336a(jSONObject.optString("download_url"));
        c4546b.m35337a(jSONObject.optInt("score", 4));
        c4546b.m35334b(jSONObject.optInt("comment_num", 6870));
        c4546b.m35331c(jSONObject.optInt("app_size", 0));
        return c4546b;
    }

    /* renamed from: e */
    private static C4552f m35496e(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        C4552f c4552f = new C4552f();
        c4552f.m35278a(jSONObject.optInt("if_send_click", 0));
        return c4552f;
    }

    /* renamed from: f */
    private static C4551e m35495f(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        C4551e c4551e = new C4551e();
        c4551e.m35283a(jSONObject.optString("deeplink_url"));
        c4551e.m35281b(jSONObject.optString("fallback_url"));
        c4551e.m35284a(jSONObject.optInt("fallback_type"));
        return c4551e;
    }

    /* renamed from: g */
    private static C4565o m35494g(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        C4565o c4565o = new C4565o();
        c4565o.m35057b(jSONObject.optInt("cover_height"));
        c4565o.m35054c(jSONObject.optInt("cover_width"));
        c4565o.m35059a(jSONObject.optString("resolution"));
        c4565o.m35060a(jSONObject.optLong("size"));
        c4565o.m35062a(jSONObject.optDouble("video_duration"));
        c4565o.m35056b(jSONObject.optString("cover_url"));
        c4565o.m35053c(jSONObject.optString("video_url"));
        c4565o.m35050d(jSONObject.optString("endcard"));
        c4565o.m35047e(jSONObject.optString("playable_download_url"));
        c4565o.m35045f(jSONObject.optString("file_hash"));
        c4565o.m35051d(jSONObject.optInt("if_playable_loading_show", 0));
        c4565o.m35048e(jSONObject.optInt("remove_loading_page_type", 0));
        c4565o.m35061a(jSONObject.optInt("fallback_endcard_judge", 0));
        return c4565o;
    }

    /* renamed from: h */
    private static Map<String, Object> m35493h(JSONObject jSONObject) {
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
