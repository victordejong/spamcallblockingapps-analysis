package com.telguarder.helpers.errorhandling;

import com.android.volley.NetworkResponse;
import com.android.volley.VolleyError;
import com.telguarder.helpers.backend.BackendRequest;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/errorhandling/NetworkError.class */
public class NetworkError extends VolleyError {
    public final String body;
    public final Map<String, String> headers;
    public final Map<String, Object> params;
    public final BackendRequest.Method requestMethod;
    public final NetworkResponse response;
    public final String url;

    public NetworkError(VolleyError volleyError, String str, Map<String, Object> map, String str2, Map<String, String> map2, BackendRequest.Method method) {
        super(volleyError);
        this.url = str;
        this.params = map;
        this.body = str2;
        this.headers = map2;
        this.requestMethod = method;
        this.response = volleyError.networkResponse;
    }
}
