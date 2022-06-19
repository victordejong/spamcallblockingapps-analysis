package com.callapp.contacts.util;

import android.net.Uri;
import com.callapp.contacts.util.http.HttpRequestParams;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.http.JSoupParseHttpResponseHandler;
import com.callapp.framework.util.StringUtils;
import java.io.IOException;
import java.util.Locale;
import org.jsoup.nodes.C20906f;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/JSoupUtils.class */
public class JSoupUtils {
    /* renamed from: a */
    public static C20906f m27492a(String str, String str2) throws IOException {
        String format = String.format(Locale.US, str, Uri.encode(str2));
        JSoupParseHttpResponseHandler jSoupParseHttpResponseHandler = new JSoupParseHttpResponseHandler();
        HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(format);
        httpRequestParamsBuilder.f28296f = 10000;
        httpRequestParamsBuilder.f28293c = jSoupParseHttpResponseHandler;
        if (StringUtils.m26045b((CharSequence) null)) {
            httpRequestParamsBuilder.f28294d = null;
        }
        HttpUtils.m26966c(httpRequestParamsBuilder.m26994a());
        return jSoupParseHttpResponseHandler.f28309a;
    }
}
