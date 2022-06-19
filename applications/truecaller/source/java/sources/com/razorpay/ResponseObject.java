package com.razorpay;

import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/razorpay/ResponseObject.class */
public class ResponseObject {
    private Map<String, List<String>> headers;
    private int responseCode;
    private String responseResult;

    public Map<String, List<String>> getHeaders() {
        return this.headers;
    }

    public int getResponseCode() {
        return this.responseCode;
    }

    public String getResponseResult() {
        return this.responseResult;
    }

    public void setHeaders(Map<String, List<String>> map) {
        this.headers = map;
    }

    public void setResponseCode(int i) {
        this.responseCode = i;
    }

    public void setResponseResult(String str) {
        this.responseResult = str;
    }
}
