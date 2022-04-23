package com.callapp.contacts.util;

import android.net.Uri;
import com.callapp.contacts.util.http.HttpRequestParams;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.http.JSoupParseHttpResponseHandler;
import com.callapp.framework.util.StringUtils;
import java.io.IOException;
import java.util.Locale;
import org.jsoup.nodes.f;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/JSoupUtils.class */
public class JSoupUtils {
    public static f a(String str, String str2) throws IOException {
        String format = String.format(Locale.US, str, Uri.encode(str2));
        JSoupParseHttpResponseHandler jSoupParseHttpResponseHandler = new JSoupParseHttpResponseHandler();
        HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(format);
        httpRequestParamsBuilder.f = 10000;
        httpRequestParamsBuilder.f16228c = jSoupParseHttpResponseHandler;
        if (StringUtils.b((CharSequence) null)) {
            httpRequestParamsBuilder.f16229d = null;
        }
        HttpUtils.c(httpRequestParamsBuilder.a());
        return jSoupParseHttpResponseHandler.f16237a;
    }
}
