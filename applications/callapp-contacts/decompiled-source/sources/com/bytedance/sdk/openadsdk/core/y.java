package com.bytedance.sdk.openadsdk.core;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.a.a.a.a.a.c;
import com.appsflyer.internal.referrer.Payload;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity;
import com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity;
import com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageActivity;
import com.bytedance.sdk.openadsdk.core.e.e;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.d.l;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.multipro.b.a;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.c;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.t;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/y.class */
public class y {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f9386a = false;

    private static Intent a(Context context, String str, i iVar, int i, TTNativeAd tTNativeAd, TTNativeExpressAd tTNativeExpressAd, String str2, boolean z) {
        String str3;
        Intent intent;
        if (iVar.w() && (tTNativeAd != null || tTNativeExpressAd != null)) {
            Intent intent2 = new Intent(context, TTPlayableLandingPageActivity.class);
            intent2.putExtra("ad_pending_download", a(iVar, z));
            intent = intent2;
            str3 = str;
            if (iVar.B() != null) {
                intent = intent2;
                str3 = str;
                if (!TextUtils.isEmpty(iVar.B().i())) {
                    String i2 = iVar.B().i();
                    if (i2.contains("?")) {
                        str3 = i2 + "&orientation=portrait";
                        intent = intent2;
                    } else {
                        str3 = i2 + "?orientation=portrait";
                        intent = intent2;
                    }
                }
            }
        } else if (tTNativeAd instanceof TTDrawFeedAd) {
            intent = new Intent(context, TTLandingPageActivity.class);
            str3 = str;
        } else if (iVar.T() != 5 || f9386a) {
            intent = new Intent(context, TTLandingPageActivity.class);
            str3 = str;
        } else {
            intent = new Intent(context, TTVideoLandingPageActivity.class);
            str3 = str;
        }
        intent.putExtra("url", str3);
        intent.putExtra("gecko_id", iVar.V());
        intent.putExtra("web_title", iVar.M());
        intent.putExtra("sdk_version", 3505);
        intent.putExtra("adid", iVar.P());
        intent.putExtra("log_extra", iVar.S());
        a aVar = null;
        a aVar2 = null;
        intent.putExtra("icon_url", iVar.E() == null ? null : iVar.E().a());
        intent.putExtra("event_tag", str2);
        intent.putExtra(Payload.SOURCE, i);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        if (b.b()) {
            intent.putExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA, iVar.ag().toString());
        } else {
            t.a().g();
            t.a().a(iVar);
        }
        if (iVar.T() == 5) {
            if (tTNativeAd != null) {
                if (tTNativeAd instanceof a.AbstractC0181a) {
                    aVar2 = ((a.AbstractC0181a) tTNativeAd).a();
                }
                aVar = aVar2;
                if (aVar2 != null) {
                    intent.putExtra(TTAdConstant.MULTI_PROCESS_DATA, aVar2.a().toString());
                    aVar = aVar2;
                }
            }
            if (tTNativeExpressAd != null) {
                a videoModel = tTNativeExpressAd.getVideoModel();
                aVar = videoModel;
                if (videoModel != null) {
                    intent.putExtra(TTAdConstant.MULTI_PROCESS_DATA, videoModel.a().toString());
                    aVar = videoModel;
                }
            }
            if (aVar != null) {
                intent.putExtra("video_is_auto_play", aVar.f9891d);
                q.c("videoDataModel", "videoDataModel=" + aVar.a().toString());
            }
        }
        return intent;
    }

    public static void a(boolean z) {
        f9386a = z;
    }

    public static boolean a(final Context context, final i iVar, final int i, TTNativeAd tTNativeAd, TTNativeExpressAd tTNativeExpressAd, final String str, c cVar, final boolean z) {
        String str2;
        if (context == null || iVar == null || i == -1) {
            return false;
        }
        e R = iVar.R();
        if (R != null) {
            String a2 = R.a();
            str2 = a2;
            if (!TextUtils.isEmpty(a2)) {
                Uri parse = Uri.parse(R.a());
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(parse);
                if (af.l(context)) {
                    str2 = a2;
                    if (af.a(context, intent)) {
                        if (n.h().c()) {
                            af.a(iVar, str);
                        }
                        if (!(context instanceof Activity)) {
                            intent.addFlags(268435456);
                        }
                        com.bytedance.sdk.openadsdk.utils.c.a(context, intent, new c.a() { // from class: com.bytedance.sdk.openadsdk.core.y.1
                            @Override // com.bytedance.sdk.openadsdk.utils.c.a
                            public final void a() {
                            }

                            @Override // com.bytedance.sdk.openadsdk.utils.c.a
                            public final void a(Throwable th) {
                                if (!n.h().c()) {
                                    y.a(context, iVar.G(), iVar, i, str, z);
                                    q.c("WebHelper", "openDetailPage() -> context.startActivity(intent) fail :", th);
                                }
                            }
                        });
                        com.bytedance.sdk.openadsdk.d.e.f(context, iVar, str, "open_url_app", null);
                        l.a().a(iVar, str);
                        return true;
                    }
                } else {
                    try {
                        if (n.h().c()) {
                            af.a(iVar, str);
                        }
                        if (!(context instanceof Activity)) {
                            intent.addFlags(268435456);
                        }
                        context.startActivity(intent);
                        com.bytedance.sdk.openadsdk.d.e.f(context, iVar, str, "open_url_app", null);
                        l.a().a(iVar, str);
                        return true;
                    } catch (Throwable th) {
                        str2 = iVar.G();
                    }
                }
            }
            if (R.c() != 2 || iVar.T() == 5 || iVar.T() == 15) {
                str2 = R.c() == 1 ? R.b() : iVar.G();
            } else if (cVar != null) {
                if (cVar.a()) {
                    com.bytedance.sdk.openadsdk.d.e.f(context, iVar, str, "open_fallback_url", null);
                    return true;
                } else if (cVar.f()) {
                    com.bytedance.sdk.openadsdk.d.e.f(context, iVar, str, "open_fallback_url", null);
                    return true;
                } else {
                    com.bytedance.sdk.openadsdk.d.e.f(context, iVar, str, "open_fallback_url", null);
                    return false;
                }
            }
            com.bytedance.sdk.openadsdk.d.e.f(context, iVar, str, "open_fallback_url", null);
        } else {
            str2 = iVar.G();
        }
        if (TextUtils.isEmpty(str2) && !iVar.w()) {
            return false;
        }
        if (iVar.D() != 2) {
            com.bytedance.sdk.openadsdk.utils.c.a(context, a(context, str2, iVar, i, tTNativeAd, tTNativeExpressAd, str, z), null);
            f9386a = false;
            return true;
        } else if (!t.a(str2)) {
            return false;
        } else {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            try {
                intent2.setData(Uri.parse(str2));
                if (!(context instanceof Activity)) {
                    intent2.addFlags(268435456);
                }
                com.bytedance.sdk.openadsdk.utils.c.a(context, intent2, null);
                return true;
            } catch (Exception e) {
                return false;
            }
        }
    }

    public static boolean a(Context context, String str, i iVar, int i, String str2, boolean z) {
        boolean z2;
        try {
            context.startActivity(a(context, str, iVar, i, (TTNativeAd) null, (TTNativeExpressAd) null, str2, z));
            z2 = true;
        } catch (Throwable th) {
            z2 = false;
        }
        return z2;
    }

    private static boolean a(i iVar, boolean z) {
        return z && iVar != null && iVar.D() == 4 && iVar.w();
    }
}
