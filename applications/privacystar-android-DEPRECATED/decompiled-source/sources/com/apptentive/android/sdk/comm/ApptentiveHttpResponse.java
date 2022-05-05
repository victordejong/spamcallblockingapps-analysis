package com.apptentive.android.sdk.comm;

import io.fabric.sdk.android.services.network.HttpRequest;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/comm/ApptentiveHttpResponse.class */
public class ApptentiveHttpResponse {
    private Map<String, String> headers;
    private String content = null;
    private String reason = null;
    private int code = -1;
    private boolean badPayload = false;

    public int getCode() {
        return this.code;
    }

    public String getContent() {
        return this.content;
    }

    public Map<String, String> getHeaders() {
        return this.headers;
    }

    public String getReason() {
        return this.reason;
    }

    public boolean isBadPayload() {
        return this.badPayload;
    }

    public boolean isException() {
        return this.code < 0;
    }

    public boolean isRejectedPermanently() {
        return this.code >= 400 && this.code < 500;
    }

    public boolean isRejectedTemporarily() {
        return !isSuccessful() && !isRejectedPermanently();
    }

    public boolean isSuccessful() {
        return this.code >= 200 && this.code < 300;
    }

    public boolean isZipped() {
        if (this.headers == null) {
            return false;
        }
        String str = this.headers.get(HttpRequest.HEADER_CONTENT_ENCODING);
        boolean z = false;
        if (str != null) {
            z = false;
            if (str.equalsIgnoreCase("[gzip]")) {
                z = true;
            }
        }
        return z;
    }

    public void setBadPayload(boolean z) {
        this.badPayload = z;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setHeaders(Map<String, String> map) {
        this.headers = map;
    }

    public void setReason(String str) {
        this.reason = str;
    }
}
