package com.zhy.http.okhttp.builder;

import android.net.Uri;
import com.zhy.http.okhttp.request.GetRequest;
import com.zhy.http.okhttp.request.RequestCall;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/zhy/http/okhttp/builder/GetBuilder.class */
public class GetBuilder extends OkHttpRequestBuilder<GetBuilder> implements HasParamsable {
    @Override // com.zhy.http.okhttp.builder.HasParamsable
    public GetBuilder addParams(String str, String str2) {
        if (this.params == null) {
            this.params = new LinkedHashMap();
        }
        this.params.put(str, str2);
        return this;
    }

    protected String appendParams(String str, Map<String, String> map) {
        String str2 = str;
        if (str != null) {
            str2 = str;
            if (map != null) {
                if (map.isEmpty()) {
                    str2 = str;
                } else {
                    Uri.Builder buildUpon = Uri.parse(str).buildUpon();
                    for (String str3 : map.keySet()) {
                        buildUpon.appendQueryParameter(str3, map.get(str3));
                    }
                    str2 = buildUpon.build().toString();
                }
            }
        }
        return str2;
    }

    @Override // com.zhy.http.okhttp.builder.OkHttpRequestBuilder
    public RequestCall build() {
        Map<String, String> map = this.params;
        if (map != null) {
            this.url = appendParams(this.url, map);
        }
        return new GetRequest(this.url, this.tag, this.params, this.headers, this.f12598id).build();
    }

    @Override // com.zhy.http.okhttp.builder.HasParamsable
    public GetBuilder params(Map<String, String> map) {
        this.params = map;
        return this;
    }
}
