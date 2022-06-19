package com.huawei.hms.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.huawei.hms.activity.BridgeActivity;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.adapter.sysobs.SystemManager;
import com.huawei.hms.adapter.sysobs.SystemObserver;
import com.huawei.hms.adapter.ui.BaseResolutionAdapter;
import com.huawei.hms.common.internal.RequestHeader;
import com.huawei.hms.common.internal.ResponseHeader;
import com.huawei.hms.common.internal.ResponseWrap;
import com.huawei.hms.support.api.ResolveResult;
import com.huawei.hms.support.api.client.ApiClient;
import com.huawei.hms.support.api.client.PendingResult;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.hianalytics.HiAnalyticsUtil;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.kpms.KpmsConstant;
import com.huawei.hms.utils.JsonUtil;
import com.huawei.hms.utils.Util;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/adapter/BaseAdapter.class */
public class BaseAdapter {
    private static final String HMS_SESSION_INVALID = "com.huawei.hms.core.action.SESSION_INVALID";
    private static final String TAG = "BaseAdapter";
    private WeakReference<Activity> activityWeakReference;
    private WeakReference<ApiClient> api;
    private Context appContext;
    private BaseCallBack baseCallBackReplay;
    private BaseCallBack callback;
    private String jsonHeaderReplay;
    private String jsonObjectReplay;
    private SystemObserver observer;
    private Parcelable parcelableReplay;
    private RequestHeader requestHeader = new RequestHeader();
    private ResponseHeader responseHeader = new ResponseHeader();
    private String transactionId;

    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/adapter/BaseAdapter$BaseCallBack.class */
    public interface BaseCallBack {
        void onComplete(String str, String str2, Parcelable parcelable);

        void onError(String str);
    }

    public BaseAdapter(ApiClient apiClient) {
        this.api = new WeakReference<>(apiClient);
        this.appContext = apiClient.getContext().getApplicationContext();
        StringBuilder m8728C = C22128a.m8728C("In constructor, WeakReference is ");
        m8728C.append(this.api);
        HMSLog.m37193i(TAG, m8728C.toString());
    }

    public BaseAdapter(ApiClient apiClient, Activity activity) {
        this.api = new WeakReference<>(apiClient);
        this.activityWeakReference = new WeakReference<>(activity);
        this.appContext = activity.getApplicationContext();
        StringBuilder m8728C = C22128a.m8728C("In constructor, activityWeakReference is ");
        m8728C.append(this.activityWeakReference);
        m8728C.append(", activity is ");
        m8728C.append(this.activityWeakReference.get());
        HMSLog.m37193i(TAG, m8728C.toString());
    }

    private PendingResult<ResolveResult<CoreBaseResponse>> baseRequest(ApiClient apiClient, String str, CoreBaseRequest coreBaseRequest) {
        return new MPendingResultImpl(apiClient, str, coreBaseRequest);
    }

    private void biReportRequestEntryIpc(Context context, RequestHeader requestHeader) {
        Map<String, String> mapFromRequestHeader = HiAnalyticsUtil.getInstance().getMapFromRequestHeader(requestHeader);
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.REQUEST);
        mapFromRequestHeader.put("version", HiAnalyticsUtil.versionCodeToName(String.valueOf(requestHeader.getKitSdkVersion())));
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_PHONETYPE, Util.getSystemProperties("ro.logsystem.usertype", ""));
        HiAnalyticsUtil.getInstance().onNewEvent(context, HiAnalyticsConstant.HMS_SDK_BASE_CALL_AIDL, mapFromRequestHeader);
    }

    private void biReportRequestEntrySolution(Context context, RequestHeader requestHeader) {
        Map<String, String> mapFromRequestHeader = HiAnalyticsUtil.getInstance().getMapFromRequestHeader(requestHeader);
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.REQUEST);
        mapFromRequestHeader.put("version", HiAnalyticsUtil.versionCodeToName(String.valueOf(requestHeader.getKitSdkVersion())));
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_PHONETYPE, Util.getSystemProperties("ro.logsystem.usertype", ""));
        HiAnalyticsUtil.getInstance().onNewEvent(context, HiAnalyticsConstant.HMS_SDK_BASE_START_RESOLUTION, mapFromRequestHeader);
    }

    public void biReportRequestReturnIpc(Context context, ResponseHeader responseHeader) {
        HiAnalyticsUtil.getInstance();
        Map<String, String> mapFromRequestHeader = HiAnalyticsUtil.getMapFromRequestHeader(responseHeader);
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.RESPONSE);
        mapFromRequestHeader.put("version", HiAnalyticsUtil.versionCodeToName(String.valueOf(this.requestHeader.getKitSdkVersion())));
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_PHONETYPE, Util.getSystemProperties("ro.logsystem.usertype", ""));
        HiAnalyticsUtil.getInstance().onNewEvent(context, HiAnalyticsConstant.HMS_SDK_BASE_CALL_AIDL, mapFromRequestHeader);
    }

    public void biReportRequestReturnSolution(Context context, ResponseHeader responseHeader, long j) {
        HiAnalyticsUtil.getInstance();
        Map<String, String> mapFromRequestHeader = HiAnalyticsUtil.getMapFromRequestHeader(responseHeader);
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, HiAnalyticsConstant.Direction.RESPONSE);
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_WAITTIME, String.valueOf(j));
        mapFromRequestHeader.put("version", HiAnalyticsUtil.versionCodeToName(String.valueOf(this.requestHeader.getKitSdkVersion())));
        mapFromRequestHeader.put(HiAnalyticsConstant.HaKey.BI_KEY_PHONETYPE, Util.getSystemProperties("ro.logsystem.usertype", ""));
        HiAnalyticsUtil.getInstance().onNewEvent(context, HiAnalyticsConstant.HMS_SDK_BASE_START_RESOLUTION, mapFromRequestHeader);
    }

    public String buildBodyStr(int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("errorCode", i);
        } catch (JSONException e) {
            StringBuilder m8728C = C22128a.m8728C("buildBodyStr failed: ");
            m8728C.append(e.getMessage());
            HMSLog.m37195e(TAG, m8728C.toString());
        }
        return jSONObject.toString();
    }

    public ResponseWrap buildResponseWrap(int i, String str) {
        setResponseHeader(i);
        ResponseWrap responseWrap = new ResponseWrap(this.responseHeader);
        responseWrap.setBody(str);
        return responseWrap;
    }

    private BaseCallBack getBaseCallBackReplay() {
        return this.baseCallBackReplay;
    }

    public BaseCallBack getCallBack() {
        BaseCallBack baseCallBack = this.callback;
        BaseCallBack baseCallBack2 = baseCallBack;
        if (baseCallBack == null) {
            HMSLog.m37195e(TAG, "callback null");
            baseCallBack2 = null;
        }
        return baseCallBack2;
    }

    public Activity getCpActivity() {
        if (this.activityWeakReference == null) {
            StringBuilder m8728C = C22128a.m8728C("activityWeakReference is ");
            m8728C.append(this.activityWeakReference);
            HMSLog.m37193i(TAG, m8728C.toString());
            return null;
        }
        ApiClient apiClient = this.api.get();
        if (apiClient == null) {
            HMSLog.m37193i(TAG, "tmpApi is null");
            return null;
        }
        StringBuilder m8728C2 = C22128a.m8728C("activityWeakReference has ");
        m8728C2.append(this.activityWeakReference.get());
        HMSLog.m37193i(TAG, m8728C2.toString());
        return Util.getActiveActivity(this.activityWeakReference.get(), apiClient.getContext());
    }

    private String getJsonHeaderReplay() {
        return this.jsonHeaderReplay;
    }

    private String getJsonObjectReplay() {
        return this.jsonObjectReplay;
    }

    private Parcelable getParcelableReplay() {
        return this.parcelableReplay;
    }

    public String getResponseHeaderForError(int i) {
        setResponseHeader(i);
        return this.responseHeader.toJson();
    }

    public boolean hasExtraPrivacyResult(Intent intent, BaseCallBack baseCallBack) {
        if (intent.hasExtra(CommonCode.MapKey.PRIVACY_STATEMENT_CONFIRM_RESULT)) {
            if (intent.getIntExtra(CommonCode.MapKey.PRIVACY_STATEMENT_CONFIRM_RESULT, 1001) == 1001) {
                HMSLog.m37193i(TAG, "privacy_statement_confirm_result agreed, replay request");
                replayRequest();
                return true;
            }
            HMSLog.m37193i(TAG, "privacy_statement_confirm_result rejected");
            baseCallBack.onError(buildResponseWrap(CommonCode.BusInterceptor.PRIVACY_CNCEL_ERROR_CODE, buildBodyStr(CommonCode.BusInterceptor.PRIVACY_CNCEL_ERROR_CODE)).toJson());
            return true;
        }
        return false;
    }

    public boolean hasExtraUpdateResult(Intent intent, BaseCallBack baseCallBack) {
        if (intent.hasExtra(KpmsConstant.KIT_UPDATE_RESULT)) {
            int intExtra = intent.getIntExtra(KpmsConstant.KIT_UPDATE_RESULT, 0);
            C22128a.m8723D0("kit_update_result is ", intExtra, TAG);
            if (intExtra == 1) {
                HMSLog.m37195e(TAG, "kit update success,replay request");
                replayRequest();
                return true;
            }
            HMSLog.m37195e(TAG, "kit update failed");
            baseCallBack.onError(buildResponseWrap(-10, buildBodyStr(intExtra)).toJson());
            return true;
        }
        return false;
    }

    private void initObserver() {
        this.observer = new 1(this);
    }

    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    public void onCompleteResult(Intent intent, BaseCallBack baseCallBack) {
        char c;
        String stringExtra = intent.getStringExtra(CommonCode.MapKey.JSON_HEADER);
        String stringExtra2 = intent.getStringExtra(CommonCode.MapKey.JSON_BODY);
        Object infoFromJsonobject = JsonUtil.getInfoFromJsonobject(stringExtra, "status_code");
        Object infoFromJsonobject2 = JsonUtil.getInfoFromJsonobject(stringExtra, "error_code");
        if (intent.hasExtra(CommonCode.MapKey.HMS_FOREGROUND_RES_UI)) {
            Object infoFromJsonobject3 = JsonUtil.getInfoFromJsonobject(intent.getStringExtra(CommonCode.MapKey.HMS_FOREGROUND_RES_UI), "uiDuration");
            if (infoFromJsonobject3 instanceof Long) {
                c = ((Long) infoFromJsonobject3).longValue();
                if ((infoFromJsonobject instanceof Integer) || !(infoFromJsonobject2 instanceof Integer)) {
                    getResponseHeaderForError(-8);
                    biReportRequestReturnSolution(this.appContext, this.responseHeader, c);
                } else {
                    int intValue = ((Integer) infoFromJsonobject).intValue();
                    getResponseHeaderForError(((Integer) infoFromJsonobject2).intValue());
                    this.responseHeader.setStatusCode(intValue);
                    biReportRequestReturnSolution(this.appContext, this.responseHeader, c);
                }
                baseCallBack.onComplete(stringExtra, stringExtra2, null);
            }
        }
        c = 0;
        if (infoFromJsonobject instanceof Integer) {
        }
        getResponseHeaderForError(-8);
        biReportRequestReturnSolution(this.appContext, this.responseHeader, c);
        baseCallBack.onComplete(stringExtra, stringExtra2, null);
    }

    private void replayRequest() {
        if (this.jsonHeaderReplay == null || this.baseCallBackReplay == null) {
            return;
        }
        this.responseHeader = null;
        this.responseHeader = new ResponseHeader();
        baseRequest(getJsonHeaderReplay(), getJsonObjectReplay(), getParcelableReplay(), getBaseCallBackReplay());
    }

    public void sendBroadcastAfterHmsInstall() {
        if (this.appContext == null) {
            HMSLog.m37195e(TAG, "sendBroadcastAfterHmsInstall, context is null");
            return;
        }
        Intent intent = new Intent(HMS_SESSION_INVALID);
        intent.setPackage(this.appContext.getPackageName());
        this.appContext.sendBroadcast(intent);
    }

    private void setBaseCallBackReplay(BaseCallBack baseCallBack) {
        this.baseCallBackReplay = baseCallBack;
    }

    private void setJsonHeaderReplay(String str) {
        this.jsonHeaderReplay = str;
    }

    private void setJsonObjectReplay(String str) {
        this.jsonObjectReplay = str;
    }

    private void setParcelableReplay(Parcelable parcelable) {
        this.parcelableReplay = parcelable;
    }

    private void setReplayData(String str, String str2, Parcelable parcelable, BaseCallBack baseCallBack) {
        setJsonHeaderReplay(str);
        setJsonObjectReplay(str2);
        setParcelableReplay(parcelable);
        setBaseCallBackReplay(baseCallBack);
    }

    private void setResponseHeader(int i) {
        this.responseHeader.setTransactionId(this.requestHeader.getTransactionId());
        this.responseHeader.setAppID(this.requestHeader.getAppID());
        this.responseHeader.setApiName(this.requestHeader.getApiName());
        this.responseHeader.setSrvName(this.requestHeader.getSrvName());
        this.responseHeader.setPkgName(this.requestHeader.getPkgName());
        this.responseHeader.setStatusCode(1);
        this.responseHeader.setErrorCode(i);
        this.responseHeader.setErrorReason("Core error");
    }

    public void startResolution(Activity activity, Parcelable parcelable) {
        HMSLog.m37193i(TAG, "startResolution");
        RequestHeader requestHeader = this.requestHeader;
        if (requestHeader != null) {
            biReportRequestEntrySolution(this.appContext, requestHeader);
        }
        if (this.observer == null) {
            initObserver();
        }
        SystemManager.getSystemNotifier().registerObserver(this.observer);
        Intent intentStartBridgeActivity = BridgeActivity.getIntentStartBridgeActivity(activity, BaseResolutionAdapter.class.getName());
        Bundle bundle = new Bundle();
        bundle.putParcelable(CommonCode.MapKey.HAS_RESOLUTION, parcelable);
        intentStartBridgeActivity.putExtras(bundle);
        intentStartBridgeActivity.putExtra(CommonCode.MapKey.TRANSACTION_ID, this.transactionId);
        activity.startActivity(intentStartBridgeActivity);
    }

    public void baseRequest(String str, String str2, Parcelable parcelable, BaseCallBack baseCallBack) {
        setReplayData(str, str2, parcelable, baseCallBack);
        if (this.api == null) {
            HMSLog.m37195e(TAG, "client is null");
            baseCallBack.onError(getResponseHeaderForError(-2));
            return;
        }
        this.callback = baseCallBack;
        JsonUtil.jsonToEntity(str, this.requestHeader);
        CoreBaseRequest coreBaseRequest = new CoreBaseRequest();
        coreBaseRequest.setJsonObject(str2);
        coreBaseRequest.setJsonHeader(str);
        coreBaseRequest.setParcelable(parcelable);
        String apiName = this.requestHeader.getApiName();
        if (TextUtils.isEmpty(apiName)) {
            HMSLog.m37195e(TAG, "get uri null");
            baseCallBack.onError(getResponseHeaderForError(-5));
            return;
        }
        String transactionId = this.requestHeader.getTransactionId();
        this.transactionId = transactionId;
        if (TextUtils.isEmpty(transactionId)) {
            HMSLog.m37195e(TAG, "get transactionId null");
            baseCallBack.onError(getResponseHeaderForError(-6));
            return;
        }
        StringBuilder m8692L = C22128a.m8692L("in baseRequest + uri is :", apiName, ", transactionId is : ");
        m8692L.append(this.transactionId);
        HMSLog.m37193i(TAG, m8692L.toString());
        biReportRequestEntryIpc(this.appContext, this.requestHeader);
        baseRequest(this.api.get(), apiName, coreBaseRequest).setResultCallback(new BaseRequestResultCallback(this));
    }
}
