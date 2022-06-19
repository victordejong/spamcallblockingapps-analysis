package com.explorestack.iab.vast.processor.url;

import android.os.Bundle;
import android.text.TextUtils;
import com.explorestack.iab.vast.VastLog;
import com.explorestack.iab.vast.VastRequest;
/* renamed from: com.explorestack.iab.vast.processor.url.a */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/processor/url/a.class */
public final class C9662a implements UrlProcessor {
    @Override // com.explorestack.iab.vast.processor.url.UrlProcessor
    public final String prepare(String str, Bundle bundle) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str;
            if (bundle != null) {
                str2 = str;
                if (bundle.containsKey(VastRequest.PARAMS_ERROR_CODE)) {
                    int i = bundle.getInt(VastRequest.PARAMS_ERROR_CODE, -1);
                    str2 = str;
                    if (i >= 0) {
                        VastLog.m24015d("VastAdUrlProcessor", String.format("Before prepare url: %s", str));
                        String str3 = str;
                        if (str.contains("[ERRORCODE]")) {
                            str3 = str.replace("[ERRORCODE]", String.valueOf(i));
                        }
                        String str4 = str3;
                        if (str3.contains("%5BERRORCODE%5D")) {
                            str4 = str3.replace("%5BERRORCODE%5D", String.valueOf(i));
                        }
                        VastLog.m24015d("VastAdUrlProcessor", String.format("After prepare url: %s", str4));
                        str2 = str4;
                    }
                }
            }
        }
        return str2;
    }
}
