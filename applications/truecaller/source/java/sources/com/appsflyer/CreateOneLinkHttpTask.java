package com.appsflyer;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import com.appsflyer.internal.AbstractRunnableC0742am;
import com.appsflyer.internal.C0726ai;
import com.appsflyer.internal.C0827o;
import com.appsflyer.share.LinkGenerator;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.StringConstant;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/appsflyer/CreateOneLinkHttpTask.class */
public final class CreateOneLinkHttpTask extends AbstractRunnableC0742am {
    public ResponseListener AFInAppEventParameterName;
    public String AFKeystoreWrapper;
    private final Map<String, String> AFLogger$LogLevel;
    private final String getLevel;
    private String init;

    /* loaded from: classes-dex2jar.jar:com/appsflyer/CreateOneLinkHttpTask$ResponseListener.class */
    public interface ResponseListener {
        @WorkerThread
        void onResponse(String str);

        @WorkerThread
        void onResponseError(String str);
    }

    public CreateOneLinkHttpTask(@NonNull String str, @NonNull Map<String, String> map, C0726ai c0726ai, @NonNull Context context) {
        super(c0726ai, context, "POST");
        this.init = "";
        if (context != null) {
            this.init = context.getPackageName();
        } else {
            AFLogger.values("CreateOneLinkHttpTask: context can't be null");
        }
        this.AFInAppEventType = str;
        this.getLevel = "-1";
        this.AFLogger$LogLevel = map;
    }

    @Override // com.appsflyer.internal.AbstractRunnableC0742am
    public final void AFKeystoreWrapper(HttpsURLConnection httpsURLConnection) throws IOException {
        httpsURLConnection.setDoInput(true);
        httpsURLConnection.setDoOutput(true);
        httpsURLConnection.setUseCaches(false);
        HashMap hashMap = new HashMap();
        hashMap.put(RemoteMessageConst.TTL, this.getLevel);
        hashMap.put("uuid", this.AppsFlyer2dXConversionCallback);
        hashMap.put(RemoteMessageConst.DATA, this.AFLogger$LogLevel);
        hashMap.put("meta", this.AFVersionDeclaration);
        String str = this.AFKeystoreWrapper;
        if (str != null) {
            hashMap.put("brand_domain", str);
        }
        String jSONObject = C0827o.AFInAppEventParameterName(hashMap).toString();
        values(httpsURLConnection, this.valueOf, jSONObject);
        httpsURLConnection.connect();
        DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
        dataOutputStream.writeBytes(jSONObject);
        dataOutputStream.flush();
        dataOutputStream.close();
    }

    @Override // com.appsflyer.internal.AbstractRunnableC0742am
    public final String valueOf() {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format(AbstractRunnableC0742am.values, AppsFlyerLib.getInstance().getHostPrefix(), C0726ai.valueOf().getHostName()));
        sb.append(StringConstant.SLASH);
        sb.append(this.AFInAppEventType);
        return sb.toString();
    }

    @Override // com.appsflyer.internal.AbstractRunnableC0742am
    public final void values() {
        LinkGenerator addParameters = new LinkGenerator("af_app_invites").setBaseURL(this.AFInAppEventType, AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_DOMAIN), this.init).addParameter("af_siteid", this.init).addParameters(this.AFLogger$LogLevel);
        C0726ai.valueOf();
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.APP_USER_ID);
        if (string != null) {
            addParameters.setReferrerCustomerId(string);
        }
        this.AFInAppEventParameterName.onResponse(addParameters.generateLink());
    }

    @Override // com.appsflyer.internal.AbstractRunnableC0742am
    public final void values(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                this.AFInAppEventParameterName.onResponse(jSONObject.optString(keys.next()));
            }
        } catch (JSONException e) {
            this.AFInAppEventParameterName.onResponseError("Can't parse one link data");
            AFLogger.valueOf("Error while parsing to json ".concat(String.valueOf(str)), e);
        }
    }
}
