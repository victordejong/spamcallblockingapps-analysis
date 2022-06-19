package com.bytedance.sdk.openadsdk.core;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.appsflyer.internal.referrer.Payload;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity;
import com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity;
import com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity;
import com.bytedance.sdk.openadsdk.core.p154e.C4551e;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.multipro.p190b.C5095a;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.p164d.C4825l;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5450c;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5482t;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
/* renamed from: com.bytedance.sdk.openadsdk.core.y */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/y.class */
public class C4802y {

    /* renamed from: a */
    private static boolean f17644a = false;

    /* renamed from: a */
    private static Intent m33905a(Context context, String str, C4557i c4557i, int i, TTNativeAd tTNativeAd, TTNativeExpressAd tTNativeExpressAd, String str2, boolean z) {
        String str3;
        Intent intent;
        if (c4557i.m35137w() && (tTNativeAd != null || tTNativeExpressAd != null)) {
            Intent intent2 = new Intent(context, TTPlayableLandingPageActivity.class);
            intent2.putExtra("ad_pending_download", m33903a(c4557i, z));
            intent = intent2;
            str3 = str;
            if (c4557i.m35245B() != null) {
                intent = intent2;
                str3 = str;
                if (!TextUtils.isEmpty(c4557i.m35245B().m35042i())) {
                    String m35042i = c4557i.m35245B().m35042i();
                    if (m35042i.contains("?")) {
                        str3 = m35042i + "&orientation=portrait";
                        intent = intent2;
                    } else {
                        str3 = m35042i + "?orientation=portrait";
                        intent = intent2;
                    }
                }
            }
        } else if (tTNativeAd instanceof TTDrawFeedAd) {
            intent = new Intent(context, TTLandingPageActivity.class);
            str3 = str;
        } else if (c4557i.m35227T() != 5 || f17644a) {
            intent = new Intent(context, TTLandingPageActivity.class);
            str3 = str;
        } else {
            intent = new Intent(context, TTVideoLandingPageActivity.class);
            str3 = str;
        }
        intent.putExtra("url", str3);
        intent.putExtra("gecko_id", c4557i.m35225V());
        intent.putExtra("web_title", c4557i.m35234M());
        intent.putExtra("sdk_version", 3505);
        intent.putExtra("adid", c4557i.m35231P());
        intent.putExtra("log_extra", c4557i.m35228S());
        intent.putExtra("icon_url", c4557i.m35242E() == null ? null : c4557i.m35242E().m35254a());
        intent.putExtra("event_tag", str2);
        intent.putExtra(Payload.SOURCE, i);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        if (C5094b.m33091b()) {
            intent.putExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA, c4557i.m35196ag().toString());
        } else {
            C4651t.m34621a().m34609g();
            C4651t.m34621a().m34617a(c4557i);
        }
        if (c4557i.m35227T() == 5) {
            C5095a c5095a = null;
            if (tTNativeAd != null) {
                C5095a c5095a2 = null;
                if (tTNativeAd instanceof C5095a.AbstractC5096a) {
                    c5095a2 = ((C5095a.AbstractC5096a) tTNativeAd).mo33081a();
                }
                c5095a = c5095a2;
                if (c5095a2 != null) {
                    intent.putExtra(TTAdConstant.MULTI_PROCESS_DATA, c5095a2.m33090a().toString());
                    c5095a = c5095a2;
                }
            }
            if (tTNativeExpressAd != null) {
                C5095a videoModel = tTNativeExpressAd.getVideoModel();
                c5095a = videoModel;
                if (videoModel != null) {
                    intent.putExtra(TTAdConstant.MULTI_PROCESS_DATA, videoModel.m33090a().toString());
                    c5095a = videoModel;
                }
            }
            if (c5095a != null) {
                intent.putExtra("video_is_auto_play", c5095a.f18362d);
                C5478q.m32109c("videoDataModel", "videoDataModel=" + c5095a.m33090a().toString());
            }
        }
        return intent;
    }

    /* renamed from: a */
    public static void m33902a(boolean z) {
        f17644a = z;
    }

    /* renamed from: a */
    public static boolean m33906a(final Context context, final C4557i c4557i, final int i, TTNativeAd tTNativeAd, TTNativeExpressAd tTNativeExpressAd, final String str, AbstractC3234c abstractC3234c, final boolean z) {
        String str2;
        if (context == null || c4557i == null || i == -1) {
            return false;
        }
        C4551e m35229R = c4557i.m35229R();
        if (m35229R != null) {
            String m35285a = m35229R.m35285a();
            str2 = m35285a;
            if (!TextUtils.isEmpty(m35285a)) {
                Uri parse = Uri.parse(m35229R.m35285a());
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(parse);
                if (C5438af.m32251l(context)) {
                    str2 = m35285a;
                    if (C5438af.m32308a(context, intent)) {
                        if (C4600n.m34805h().m34903c()) {
                            C5438af.m32302a(c4557i, str);
                        }
                        if (!(context instanceof Activity)) {
                            intent.addFlags(268435456);
                        }
                        C5450c.m32194a(context, intent, new C5450c.AbstractC5451a() { // from class: com.bytedance.sdk.openadsdk.core.y.1
                            @Override // com.bytedance.sdk.openadsdk.utils.C5450c.AbstractC5451a
                            /* renamed from: a */
                            public final void mo32193a() {
                            }

                            @Override // com.bytedance.sdk.openadsdk.utils.C5450c.AbstractC5451a
                            /* renamed from: a */
                            public final void mo32192a(Throwable th) {
                                if (!C4600n.m34805h().m34903c()) {
                                    C4802y.m33904a(context, c4557i.m35240G(), c4557i, i, str, z);
                                    C5478q.m32108c("WebHelper", "openDetailPage() -> context.startActivity(intent) fail :", th);
                                }
                            }
                        });
                        C4811e.m33861f(context, c4557i, str, "open_url_app", null);
                        C4825l.m33810a().m33809a(c4557i, str);
                        return true;
                    }
                } else {
                    try {
                        if (C4600n.m34805h().m34903c()) {
                            C5438af.m32302a(c4557i, str);
                        }
                        if (!(context instanceof Activity)) {
                            intent.addFlags(268435456);
                        }
                        context.startActivity(intent);
                        C4811e.m33861f(context, c4557i, str, "open_url_app", null);
                        C4825l.m33810a().m33809a(c4557i, str);
                        return true;
                    } catch (Throwable th) {
                        str2 = c4557i.m35240G();
                    }
                }
            }
            if (m35229R.m35280c() != 2 || c4557i.m35227T() == 5 || c4557i.m35227T() == 15) {
                str2 = m35229R.m35280c() == 1 ? m35229R.m35282b() : c4557i.m35240G();
            } else if (abstractC3234c != null) {
                if (abstractC3234c.mo39093a()) {
                    C4811e.m33861f(context, c4557i, str, "open_fallback_url", null);
                    return true;
                } else if (abstractC3234c.mo39090f()) {
                    C4811e.m33861f(context, c4557i, str, "open_fallback_url", null);
                    return true;
                } else {
                    C4811e.m33861f(context, c4557i, str, "open_fallback_url", null);
                    return false;
                }
            }
            C4811e.m33861f(context, c4557i, str, "open_fallback_url", null);
        } else {
            str2 = c4557i.m35240G();
        }
        if (TextUtils.isEmpty(str2) && !c4557i.m35137w()) {
            return false;
        }
        if (c4557i.m35243D() != 2) {
            C5450c.m32194a(context, m33905a(context, str2, c4557i, i, tTNativeAd, tTNativeExpressAd, str, z), null);
            f17644a = false;
            return true;
        } else if (!C5482t.m32090a(str2)) {
            return false;
        } else {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            try {
                intent2.setData(Uri.parse(str2));
                if (!(context instanceof Activity)) {
                    intent2.addFlags(268435456);
                }
                C5450c.m32194a(context, intent2, null);
                return true;
            } catch (Exception e) {
                return false;
            }
        }
    }

    /* renamed from: a */
    public static boolean m33904a(Context context, String str, C4557i c4557i, int i, String str2, boolean z) {
        boolean z2;
        try {
            context.startActivity(m33905a(context, str, c4557i, i, (TTNativeAd) null, (TTNativeExpressAd) null, str2, z));
            z2 = true;
        } catch (Throwable th) {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: a */
    private static boolean m33903a(C4557i c4557i, boolean z) {
        return z && c4557i != null && c4557i.m35243D() == 4 && c4557i.m35137w();
    }
}
