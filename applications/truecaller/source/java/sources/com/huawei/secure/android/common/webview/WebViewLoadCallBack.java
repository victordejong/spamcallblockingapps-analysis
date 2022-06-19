package com.huawei.secure.android.common.webview;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/webview/WebViewLoadCallBack.class */
public interface WebViewLoadCallBack {

    /* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/webview/WebViewLoadCallBack$ErrorCode.class */
    public enum ErrorCode {
        HTTP_URL,
        URL_NOT_IN_WHITE_LIST,
        OTHER
    }

    void onCheckError(String str, ErrorCode errorCode);
}
