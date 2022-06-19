package com.appsflyer.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.appsflyer.internal.ao */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ao.class */
public final class C0747ao extends AbstractRunnableC0742am {
    public AbstractC0748c AFInAppEventParameterName;
    public boolean AFKeystoreWrapper;
    private String AFLogger$LogLevel;
    private String getLevel;

    /* renamed from: com.appsflyer.internal.ao$c */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ao$c.class */
    public interface AbstractC0748c {
        void AFKeystoreWrapper(String str);

        void valueOf(Map<String, String> map);
    }

    public C0747ao(Uri uri, C0726ai c0726ai, Context context) {
        super(c0726ai, context, "GET");
        this.AFKeystoreWrapper = false;
        if (TextUtils.isEmpty(uri.getHost()) || TextUtils.isEmpty(uri.getPath())) {
            return;
        }
        boolean z = false;
        for (int i = 0; i < 3; i++) {
            if (uri.getHost().contains(new String[]{"onelink.me", "onelnk.com", "app.aflink.com"}[i])) {
                z = true;
            }
        }
        boolean z2 = z;
        if (C0818i.AppsFlyer2dXConversionCallback != null) {
            StringBuilder sb = new StringBuilder("Validate if link ");
            sb.append(uri);
            sb.append(" belongs to custom domains: ");
            sb.append(Arrays.asList(C0818i.AppsFlyer2dXConversionCallback));
            AFLogger.AFInAppEventParameterName(sb.toString());
            String[] strArr = C0818i.AppsFlyer2dXConversionCallback;
            int length = strArr.length;
            int i2 = 0;
            while (true) {
                z2 = z;
                if (i2 >= length) {
                    break;
                }
                String str = strArr[i2];
                boolean z3 = z;
                if (uri.getHost().contains(str)) {
                    z3 = z;
                    if (!TextUtils.isEmpty(str)) {
                        AFLogger.AFInAppEventType("Link matches custom domain: ".concat(String.valueOf(str)));
                        this.AFKeystoreWrapper = true;
                        z3 = true;
                    }
                }
                i2++;
                z = z3;
            }
        }
        String[] split = uri.getPath().split(StringConstant.SLASH);
        if (!z2 || split.length != 3) {
            return;
        }
        this.AFInAppEventType = split[1];
        this.getLevel = split[2];
        this.AFLogger$LogLevel = uri.toString();
    }

    @Override // com.appsflyer.internal.AbstractRunnableC0742am
    public final void AFKeystoreWrapper(HttpsURLConnection httpsURLConnection) {
        httpsURLConnection.setRequestProperty("Af-UUID", this.AppsFlyer2dXConversionCallback);
        String valueOf = String.valueOf(this.AFVersionDeclaration.get("build_number"));
        httpsURLConnection.setRequestProperty("Af-Meta-Sdk-Ver", valueOf);
        httpsURLConnection.setRequestProperty("Af-Meta-Counter", String.valueOf(this.AFVersionDeclaration.get("counter")));
        httpsURLConnection.setRequestProperty("Af-Meta-Model", String.valueOf(this.AFVersionDeclaration.get("model")));
        httpsURLConnection.setRequestProperty("Af-Meta-Platform", String.valueOf(this.AFVersionDeclaration.get("platformextension")));
        httpsURLConnection.setRequestProperty("Af-Meta-System-Version", String.valueOf(this.AFVersionDeclaration.get(AnalyticsConstants.SDK)));
        values(httpsURLConnection, this.valueOf, this.AppsFlyer2dXConversionCallback, this.AFInAppEventType, this.getLevel, valueOf);
    }

    public final boolean AFKeystoreWrapper() {
        return !TextUtils.isEmpty(this.AFInAppEventType) && !TextUtils.isEmpty(this.getLevel) && !this.AFInAppEventType.equals("app");
    }

    @Override // com.appsflyer.internal.AbstractRunnableC0742am
    public final String valueOf() {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format(AbstractRunnableC0742am.values, AppsFlyerLib.getInstance().getHostPrefix(), C0726ai.valueOf().getHostName()));
        sb.append(StringConstant.SLASH);
        sb.append(this.AFInAppEventType);
        sb.append("?id=");
        sb.append(this.getLevel);
        return sb.toString();
    }

    @Override // com.appsflyer.internal.AbstractRunnableC0742am
    public final void values() {
        String str = this.AFLogger$LogLevel;
        if (str == null) {
            str = "Can't get OneLink data";
        }
        this.AFInAppEventParameterName.AFKeystoreWrapper(str);
    }

    @Override // com.appsflyer.internal.AbstractRunnableC0742am
    public final void values(String str) {
        try {
            HashMap hashMap = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.optString(next));
            }
            this.AFInAppEventParameterName.valueOf(hashMap);
        } catch (JSONException e) {
            this.AFInAppEventParameterName.AFKeystoreWrapper("Can't parse OneLink data");
            AFLogger.valueOf("Error while parsing to json ".concat(String.valueOf(str)), e);
        }
    }
}
