package com.huawei.hms.opendevice;

import android.content.Context;
import com.huawei.hms.aaid.constant.ErrorEnum;
import com.huawei.hms.common.internal.ResponseErrorCode;
import com.huawei.hms.support.api.client.Status;
import com.huawei.hms.support.hianalytics.HiAnalyticsClient;
/* renamed from: com.huawei.hms.opendevice.q */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/opendevice/q.class */
public final class C2419q {
    /* renamed from: a */
    public static String m37392a(Context context, String str) {
        return HiAnalyticsClient.reportEntry(context, str, 60300301);
    }

    /* renamed from: a */
    public static void m37391a(Context context, String str, ResponseErrorCode responseErrorCode) {
        HiAnalyticsClient.reportExit(context, str, responseErrorCode.getTransactionId(), responseErrorCode.getStatusCode(), responseErrorCode.getErrorCode(), 60300301);
    }

    /* renamed from: a */
    public static void m37390a(Context context, String str, String str2, int i) {
        HiAnalyticsClient.reportExit(context, str, str2, Status.SUCCESS.getStatusCode(), i, 60300301);
    }

    /* renamed from: a */
    public static void m37389a(Context context, String str, String str2, ErrorEnum errorEnum) {
        HiAnalyticsClient.reportExit(context, str, str2, Status.SUCCESS.getStatusCode(), errorEnum.getExternalCode(), 60300301);
    }
}
