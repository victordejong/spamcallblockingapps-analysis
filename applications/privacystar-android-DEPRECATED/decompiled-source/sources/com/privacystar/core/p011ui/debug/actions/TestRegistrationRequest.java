package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.apptentive.android.sdk.network.HttpRequestRetryPolicyDefault;
import com.google.gson.JsonObject;
import com.privacystar.core.data.providers.DeviceNumberProvider;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.network.HttpConnection;
import com.privacystar.core.service.network.HttpResponse;
import com.privacystar.core.util.InformationUtil;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.debug.actions.TestRegistrationRequest */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/TestRegistrationRequest.class */
public class TestRegistrationRequest extends DebugAction {
    private String customUrl = "";

    private void httpConnectionTest(String str, String str2) {
        HttpConnection httpConnection = new HttpConnection(str, HttpConnection.Method.POST);
        try {
            HttpResponse connect = httpConnection.setBody("application/json", str2).setReadTimeout(4000).setConnectionTimeout(4000).connect();
            if (connect.getException() == null) {
                Timber.m37d("Response was: [%d] [%s]: %s", Integer.valueOf(connect.getResponseCode()), connect.getResponseMessage(), connect.getResponseString());
            } else {
                Timber.m25w("Request threw exception: [%s]", connect.getException().getMessage());
            }
        } finally {
            httpConnection.disconnect();
        }
    }

    private String makeBody(Context context, boolean z) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("devid", InformationUtil.getDevicePinOrNothing(context));
        jsonObject.addProperty(SettingsJsonConstants.APP_KEY, z ? context.getPackageName() : "com.privacystar.test");
        jsonObject.addProperty("mdn", DeviceNumberProvider.INSTANCE.getNumber());
        jsonObject.addProperty("apk", InformationUtil.getApplicationVersion(context));
        jsonObject.addProperty("fcmkey", "");
        jsonObject.addProperty("devts", Long.valueOf(System.currentTimeMillis()));
        jsonObject.addProperty("devtz", InformationUtil.getTimeZoneFormat());
        jsonObject.addProperty("devds", Boolean.FALSE);
        return jsonObject.toString();
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public String getTitle() {
        return "Test Registration Network Request";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$onPerformAction$0$TestRegistrationRequest(String str, String str2) {
        httpConnectionTest("http://172.22.33.73:9876/n/register", str);
        try {
            Thread.sleep(HttpRequestRetryPolicyDefault.DEFAULT_RETRY_TIMEOUT_MILLIS);
        } catch (InterruptedException e) {
        }
        httpConnectionTest("http://172.22.33.73:9876/n/register", str2);
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(Context context) {
        final String makeBody = makeBody(context, false);
        final String makeBody2 = makeBody(context, true);
        Timber.m37d("Request body: %s", makeBody);
        new Thread(new Runnable(this, makeBody, makeBody2) { // from class: com.privacystar.core.ui.debug.actions.TestRegistrationRequest$$Lambda$0
            private final TestRegistrationRequest arg$1;
            private final String arg$2;
            private final String arg$3;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
                this.arg$2 = makeBody;
                this.arg$3 = makeBody2;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.arg$1.lambda$onPerformAction$0$TestRegistrationRequest(this.arg$2, this.arg$3);
            }
        }).start();
    }
}
