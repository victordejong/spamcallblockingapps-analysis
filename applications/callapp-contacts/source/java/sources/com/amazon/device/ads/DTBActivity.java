package com.amazon.device.ads;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.mopub.common.Constants;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBActivity.class */
public class DTBActivity extends Activity {

    /* renamed from: a */
    private final String f11684a = DTBActivity.class.getSimpleName();

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        List<String> list;
        String queryParameter;
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent == null || intent.getAction() == null || !intent.getAction().equals("android.intent.action.VIEW") || intent.getDataString() == null) {
            DtbLog.m38828a("Invalid intent has been received, please debug for more information.");
        } else {
            String dataString = intent.getDataString();
            if (dataString.startsWith("amazonmobile")) {
                DtbLog.m38830a();
                DtbLog.m38825b();
                Uri parse = Uri.parse(dataString);
                try {
                    list = parse.getQueryParameters(Constants.INTENT_SCHEME);
                } catch (UnsupportedOperationException e) {
                    list = null;
                }
                if (list != null && list.size() > 0) {
                    Iterator<String> it2 = list.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            DtbLog.m38827a(this.f11684a, "Special url clicked, but was not handled by SDK. Url: " + parse.toString());
                            break;
                        } else if (DtbCommonUtils.m38893a(it2.next(), getApplicationContext())) {
                            break;
                        }
                    }
                } else {
                    if (!(getApplicationContext().getPackageManager().getLaunchIntentForPackage("com.amazon.windowshop") != null)) {
                        DtbLog.m38827a(this.f11684a, "Special url clicked, but was not handled by SDK. Url: " + parse.toString());
                    } else if (parse.getHost().equals("shopping") && (queryParameter = parse.getQueryParameter("app-action")) != null && queryParameter.length() != 0) {
                        if (queryParameter.equals("detail")) {
                            String queryParameter2 = parse.getQueryParameter("asin");
                            if (queryParameter2 != null && queryParameter2.length() != 0) {
                                Context applicationContext = getApplicationContext();
                                Intent launchIntentForPackage = applicationContext.getPackageManager().getLaunchIntentForPackage("com.amazon.windowshop");
                                if (launchIntentForPackage != null) {
                                    launchIntentForPackage.putExtra("com.amazon.windowshop.refinement.asin", queryParameter2);
                                    applicationContext.startActivity(launchIntentForPackage);
                                }
                            }
                        } else if (queryParameter.equals("search")) {
                            String queryParameter3 = parse.getQueryParameter("keyword");
                            if (queryParameter3 != null && queryParameter3.length() != 0) {
                                Context applicationContext2 = getApplicationContext();
                                Intent intent2 = new Intent("android.intent.action.SEARCH");
                                intent2.setComponent(new ComponentName("com.amazon.windowshop", "com.amazon.windowshop.search.SearchResultsGridActivity"));
                                intent2.putExtra("query", queryParameter3);
                                try {
                                    applicationContext2.startActivity(intent2);
                                } catch (RuntimeException e2) {
                                }
                            }
                        } else if (queryParameter.equals("webview")) {
                            DtbLog.m38827a(this.f11684a, "Special url clicked, but was not handled by SDK. Url: " + parse.toString());
                        }
                    }
                }
            } else {
                DtbLog.m38830a();
                DtbCommonUtils.m38893a(dataString, getApplicationContext());
            }
        }
        finish();
    }
}
