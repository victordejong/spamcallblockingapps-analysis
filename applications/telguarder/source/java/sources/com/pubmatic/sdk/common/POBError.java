package com.pubmatic.sdk.common;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/POBError.class */
public class POBError {
    public static final int AD_ALREADY_SHOWN = 2001;
    public static final int AD_EXPIRED = 1011;
    public static final int AD_NOT_READY = 2002;
    public static final int AD_NOT_USED = 3003;
    public static final int AD_SERVER_AUCTION_LOST = 3002;
    public static final int CLIENT_SIDE_AUCTION_LOST = 3001;
    public static final int INTERNAL_ERROR = 1006;
    @Deprecated
    public static final int INTERSTITIAL_ALREADY_SHOWN = 2001;
    @Deprecated
    public static final int INTERSTITIAL_NOT_READY = 2002;
    public static final int INVALID_REQUEST = 1001;
    public static final int INVALID_RESPONSE = 1007;
    public static final int NETWORK_ERROR = 1003;
    public static final int NO_ADS_AVAILABLE = 1002;
    public static final int NO_PARTNER_DETAILS = 4001;
    public static final int OPENWRAP_SIGNALING_ERROR = 1010;
    public static final int RENDER_ERROR = 1009;
    public static final int REQUEST_CANCELLED = 1008;
    public static final int SERVER_ERROR = 1004;
    public static final int TIMEOUT_ERROR = 1005;

    /* renamed from: a */
    private int f347a;

    /* renamed from: b */
    private String f348b;

    /* renamed from: c */
    private Map<String, Object> f349c;

    public POBError(int i, String str) {
        String str2;
        StringBuilder sb;
        this.f347a = i;
        if (i == 2001) {
            sb = new StringBuilder();
            str2 = "ALREADY_SHOWN: ";
        } else if (i == 2002) {
            sb = new StringBuilder();
            str2 = "NOT_READY: ";
        } else if (i != 4001) {
            switch (i) {
                case 1001:
                    sb = new StringBuilder();
                    str2 = "INVALID_REQUEST: ";
                    break;
                case 1002:
                    sb = new StringBuilder();
                    str2 = "NO_ADS_AVAILABLE: ";
                    break;
                case 1003:
                    sb = new StringBuilder();
                    str2 = "NETWORK_ERROR: ";
                    break;
                case 1004:
                    sb = new StringBuilder();
                    str2 = "SERVER_ERROR: ";
                    break;
                case 1005:
                    sb = new StringBuilder();
                    str2 = "TIMEOUT_ERROR: ";
                    break;
                case 1006:
                    sb = new StringBuilder();
                    str2 = "INTERNAL_ERROR: ";
                    break;
                case 1007:
                    sb = new StringBuilder();
                    str2 = "INVALID_RESPONSE: ";
                    break;
                case 1008:
                    sb = new StringBuilder();
                    str2 = "REQUEST_CANCELLED: ";
                    break;
                case 1009:
                    sb = new StringBuilder();
                    str2 = "RENDER_ERROR: ";
                    break;
                case 1010:
                    sb = new StringBuilder();
                    str2 = "OPENWRAP_SIGNALING_ERROR: ";
                    break;
                case 1011:
                    sb = new StringBuilder();
                    str2 = "AD_EXPIRED: ";
                    break;
                default:
                    switch (i) {
                        case 3001:
                            sb = new StringBuilder();
                            str2 = "CLIENT_SIDE_AUCTION_LOST: ";
                            break;
                        case AD_SERVER_AUCTION_LOST /* 3002 */:
                            sb = new StringBuilder();
                            str2 = "AD_SERVER_AUCTION_LOST: ";
                            break;
                        case AD_NOT_USED /* 3003 */:
                            sb = new StringBuilder();
                            str2 = "AD_NOT_USED: ";
                            break;
                        default:
                            return;
                    }
            }
        } else {
            sb = new StringBuilder();
            str2 = "NO_PARTNER_DETAILS: ";
        }
        sb.append(str2);
        sb.append(str);
        this.f348b = sb.toString();
    }

    public void addExtraInfo(String str, Object obj) {
        if (this.f349c == null) {
            this.f349c = new HashMap();
        }
        this.f349c.put(str, obj);
    }

    public int getErrorCode() {
        return this.f347a;
    }

    public String getErrorMessage() {
        return this.f348b;
    }

    public Object getExtraInfo(String str) {
        Map<String, Object> map = this.f349c;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    public Map<String, Object> getExtraInfo() {
        return this.f349c;
    }

    public void setErrorCode(int i) {
        this.f347a = i;
    }

    public void setErrorMessage(String str) {
        this.f348b = str;
    }

    public void setExtraInfo(Map<String, Object> map) {
        this.f349c = map;
    }

    public String toString() {
        return "POBError{errorCode=" + this.f347a + ", errorMessage='" + this.f348b + "'}";
    }
}
