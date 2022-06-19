package com.huawei.hms.framework.network.grs;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/GrsClient.class */
public class GrsClient {
    private static final String EMPTY_STRING = "";
    private final C2306c grsClientGlobal;

    public GrsClient(Context context, GrsBaseInfo grsBaseInfo) {
        if (context == null || grsBaseInfo == null) {
            throw new NullPointerException("invalid init params for context is null or GrsBaseInfo instance is null Object.");
        }
        this.grsClientGlobal = C2308d.m38000a(grsBaseInfo, context);
    }

    public void ayncGetGrsUrl(String str, String str2, IQueryUrlCallBack iQueryUrlCallBack) {
        C2306c c2306c = this.grsClientGlobal;
        if (c2306c == null) {
            iQueryUrlCallBack.onCallBackFail(-8);
        } else {
            c2306c.m38011a(str, str2, iQueryUrlCallBack);
        }
    }

    public void ayncGetGrsUrls(String str, IQueryUrlsCallBack iQueryUrlsCallBack) {
        C2306c c2306c = this.grsClientGlobal;
        if (c2306c == null) {
            iQueryUrlsCallBack.onCallBackFail(-8);
        } else {
            c2306c.m38013a(str, iQueryUrlsCallBack);
        }
    }

    public void clearSp() {
        C2306c c2306c = this.grsClientGlobal;
        if (c2306c == null) {
            return;
        }
        c2306c.m38024a();
    }

    public boolean forceExpire() {
        C2306c c2306c = this.grsClientGlobal;
        if (c2306c == null) {
            return false;
        }
        return c2306c.m38009b();
    }

    public String synGetGrsUrl(String str, String str2) {
        C2306c c2306c = this.grsClientGlobal;
        return c2306c == null ? "" : c2306c.m38012a(str, str2);
    }

    public Map<String, String> synGetGrsUrls(String str) {
        C2306c c2306c = this.grsClientGlobal;
        return c2306c == null ? new HashMap() : c2306c.m38014a(str);
    }
}
