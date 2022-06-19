package com.callapp.contacts.util.servermessage;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.callapp.common.model.json.JSONClientConfiguration;
import com.callapp.common.model.json.JSONClientValidationResponse;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.http.HttpRequestParams;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.http.ValidatorHttpResponseHandler;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/servermessage/ValidateClientTask.class */
public class ValidateClientTask extends Task {

    /* renamed from: a */
    private final OnResultListener f28377a;

    /* renamed from: b */
    private final Context f28378b;

    /* renamed from: c */
    private final String f28379c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/servermessage/ValidateClientTask$OnResultListener.class */
    public interface OnResultListener {
        /* renamed from: a */
        void mo26901a(JSONClientValidationResponse jSONClientValidationResponse);
    }

    public ValidateClientTask(OnResultListener onResultListener, Context context, String str) {
        this.f28377a = onResultListener;
        this.f28378b = context;
        this.f28379c = str;
    }

    /* renamed from: a */
    private void m26905a(final Context context, String str, final String str2, boolean z) {
        int i = z ? 2131886563 : 2131887104;
        DialogPopup.IDialogSimpleListener iDialogSimpleListener = new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.util.servermessage.ValidateClientTask.3
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
            /* renamed from: a */
            public final void mo26209a(DialogPopup dialogPopup) {
                AnalyticsManager.get().m28450a(Constants.UPDATE_CALLAPP, "'Cancel' was clicked");
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
            /* renamed from: b */
            public final void mo26208b(DialogPopup dialogPopup) {
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
            }
        };
        PopupManager.get().m28209a(context, StringUtils.m26045b((CharSequence) str2) ? new DialogSimpleMessage(Activities.getString(2131887631), str, Activities.getString(2131887298), Activities.getString(i), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.util.servermessage.ValidateClientTask.4
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                AnalyticsManager.get().m28450a(Constants.UPDATE_CALLAPP, "'Approve' was clicked");
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2));
                if (Activities.m27672a(intent)) {
                    Activities.m27685a(context, intent);
                }
            }
        }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.util.servermessage.ValidateClientTask.5
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                AnalyticsManager.get().m28450a(Constants.UPDATE_CALLAPP, "'Cancel' was clicked");
            }
        }, iDialogSimpleListener) : new DialogSimpleMessage(Activities.getString(2131887631), str, null, Activities.getString(i), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.util.servermessage.ValidateClientTask.6
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                AnalyticsManager.get().m28450a(Constants.UPDATE_CALLAPP, "'Cancel' was clicked");
            }
        }, iDialogSimpleListener));
    }

    /* renamed from: a */
    public static boolean m26906a() {
        Date date = Prefs.f26252ac.get();
        return date == null || ((long) (new Date().getDate() - date.getDate())) > 172800000;
    }

    /* renamed from: b */
    public static void m26904b() {
        new Task() { // from class: com.callapp.contacts.util.servermessage.ValidateClientTask.7
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                ValidateClientTask.m26902d();
            }
        }.execute();
    }

    /* renamed from: d */
    public static JSONClientValidationResponse m26902d() {
        JSONClientValidationResponse jSONClientValidationResponse = null;
        if (HttpUtils.m26985a()) {
            JSONClientConfiguration jSONClientConfiguration = new JSONClientConfiguration();
            jSONClientConfiguration.setCallAppVersion(CallAppApplication.get().getVersionCode());
            jSONClientConfiguration.setManufacturer(Build.MANUFACTURER);
            jSONClientConfiguration.setModel(Build.MODEL);
            jSONClientConfiguration.setOsVersion(Build.VERSION.SDK_INT);
            jSONClientConfiguration.setHeight(Activities.getDisplayMetrics().heightPixels);
            jSONClientConfiguration.setWidth(Activities.getDisplayMetrics().widthPixels);
            jSONClientConfiguration.setDensity(Activities.getDisplayMetrics().densityDpi);
            jSONClientConfiguration.setEncodedDeviceId(Activities.getEncodedDeviceId());
            jSONClientConfiguration.setApkOrigin(Activities.getString(2131887752));
            jSONClientConfiguration.setCallappPlus(true);
            jSONClientConfiguration.setSetupCompleted(Prefs.f26246aW.get().booleanValue());
            jSONClientConfiguration.setPhoneNumber(Prefs.f26241aR.get());
            jSONClientConfiguration.setHasTelephony(CallAppApplication.get().getPackageManager().hasSystemFeature("android.hardware.telephony"));
            try {
                String str = HttpUtils.getCallappServerPrefix() + "vc";
                ObjectMapper objectMapper = new ObjectMapper();
                objectMapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);
                objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
                objectMapper.configure(JsonGenerator.Feature.AUTO_CLOSE_TARGET, false);
                String writeValueAsString = objectMapper.writeValueAsString(jSONClientConfiguration);
                ValidatorHttpResponseHandler validatorHttpResponseHandler = new ValidatorHttpResponseHandler();
                HashMap hashMap = new HashMap();
                hashMap.put("Content-Type", "application/json");
                HttpUtils.getCallAppServerHost();
                if (HttpUtils.m26972b()) {
                    HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(str);
                    httpRequestParamsBuilder.f28293c = validatorHttpResponseHandler;
                    httpRequestParamsBuilder.f28292b = hashMap;
                    HttpUtils.m26982a(httpRequestParamsBuilder.m26994a(), writeValueAsString);
                }
                jSONClientValidationResponse = null;
                if (validatorHttpResponseHandler.getResult() != null) {
                    jSONClientValidationResponse = (JSONClientValidationResponse) Parser.m26915a(validatorHttpResponseHandler.getResult(), JSONClientValidationResponse.class);
                }
            } catch (IOException e) {
                CLog.m27596b(ValidateClientTask.class, e);
                jSONClientValidationResponse = null;
            }
        }
        return jSONClientValidationResponse;
    }

    private static JSONClientValidationResponse getNopMessage() {
        JSONClientValidationResponse jSONClientValidationResponse = new JSONClientValidationResponse();
        jSONClientValidationResponse.setMessageType(1);
        jSONClientValidationResponse.setMessage("");
        jSONClientValidationResponse.setUpdatedClientConfiguration("");
        return jSONClientValidationResponse;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001b, code lost:
        if (r0.isExpired() != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.callapp.common.model.json.JSONClientValidationResponse getServerMessage() {
        /*
            com.callapp.contacts.manager.cache.CacheManager r0 = com.callapp.contacts.manager.cache.CacheManager.get()
            java.lang.Class<com.callapp.common.model.json.JSONClientValidationResponse> r1 = com.callapp.common.model.json.JSONClientValidationResponse.class
            java.lang.String r2 = "message_key"
            r3 = 0
            java.lang.Object r0 = r0.m28378b(r1, r2, r3)
            com.callapp.common.model.json.JSONClientValidationResponse r0 = (com.callapp.common.model.json.JSONClientValidationResponse) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L1e
            r0 = r5
            r6 = r0
            r0 = r5
            boolean r0 = r0.isExpired()
            if (r0 == 0) goto L60
        L1e:
            java.lang.Class<com.callapp.contacts.util.servermessage.ValidateClientTask> r0 = com.callapp.contacts.util.servermessage.ValidateClientTask.class
            java.lang.String r1 = "JSONClientValidationResponse from cache: "
            r2 = r5
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.String r1 = r1.concat(r2)
            com.callapp.contacts.util.CLog.m27611a(r0, r1)
            com.callapp.common.model.json.JSONClientValidationResponse r0 = m26902d()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L54
            com.callapp.contacts.manager.cache.CacheManager r0 = com.callapp.contacts.manager.cache.CacheManager.get()
            java.lang.Class<com.callapp.common.model.json.JSONClientValidationResponse> r1 = com.callapp.common.model.json.JSONClientValidationResponse.class
            java.lang.String r2 = "message_key"
            r3 = r6
            r0.m28389a(r1, r2, r3)
            com.callapp.contacts.manager.preferences.prefs.DatePref r0 = com.callapp.contacts.manager.preferences.Prefs.f26252ac
            r1 = 0
            r0.set(r1)
            java.lang.Class<com.callapp.contacts.util.servermessage.ValidateClientTask> r0 = com.callapp.contacts.util.servermessage.ValidateClientTask.class
            java.lang.String r1 = "JSONClientValidationResponse from server was OK"
            com.callapp.contacts.util.CLog.m27611a(r0, r1)
            goto L60
        L54:
            java.lang.Class<com.callapp.contacts.util.servermessage.ValidateClientTask> r0 = com.callapp.contacts.util.servermessage.ValidateClientTask.class
            java.lang.String r1 = "JSONClientValidationResponse from server was null"
            com.callapp.contacts.util.CLog.m27611a(r0, r1)
            com.callapp.common.model.json.JSONClientValidationResponse r0 = getNopMessage()
            r6 = r0
        L60:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.servermessage.ValidateClientTask.getServerMessage():com.callapp.common.model.json.JSONClientValidationResponse");
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        final JSONClientValidationResponse serverMessage = getServerMessage();
        Context context = this.f28378b;
        OnResultListener onResultListener = this.f28377a;
        int messageType = serverMessage.getMessageType();
        if (messageType == 2) {
            AnalyticsManager.get().m28450a(this.f28379c, "Update CallApp displayed with message SHOW_MESSAGE");
            if (!m26906a()) {
                return;
            }
            PopupManager.get().m28209a(context, new DialogSimpleMessage(Activities.getString(2131887631), serverMessage.getMessage(), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.util.servermessage.ValidateClientTask.1
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                }
            }, null));
            Prefs.f26252ac.set(new Date());
        } else if (messageType == 3) {
            AnalyticsManager.get().m28450a(this.f28379c, "Update CallApp displayed with message SUGGEST_UPDATE");
            if (!m26906a()) {
                return;
            }
            m26905a(context, serverMessage.getMessage(), serverMessage.getUpgradeUrl(), false);
            Prefs.f26252ac.set(new Date());
        } else if (messageType == 4) {
            AnalyticsManager.get().m28450a(this.f28379c, "Update CallApp displayed with message FORCE_UPDATE");
            m26905a(context, serverMessage.getMessage(), serverMessage.getUpgradeUrl(), true);
        } else if (messageType != 5) {
            if (onResultListener == null) {
                return;
            }
            onResultListener.mo26901a(serverMessage);
        } else {
            AnalyticsManager.get().m28450a(this.f28379c, "Update CallApp displayed with message CANNOT_RUN");
            AnalyticsManager.get().m28450a(this.f28379c, String.format("CANNOT_RUN: %s", serverMessage.getMessage()));
            PopupManager.get().m28209a(context, new DialogSimpleMessage(Activities.getString(2131887631), serverMessage.getMessage(), Activities.getString(2131887338), null, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.util.servermessage.ValidateClientTask.2
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public void onClickListener(Activity activity) {
                    AndroidUtils.m27635a(activity);
                    Activities.m27679a((Context) activity, serverMessage.getRejectedUrl());
                }
            }, null));
        }
    }
}
