package org.xutils;

import org.xutils.common.Callback;
import org.xutils.http.HttpMethod;
import org.xutils.http.RequestParams;
/* loaded from: classes2-dex2jar.jar:org/xutils/HttpManager.class */
public interface HttpManager {
    <T> Callback.Cancelable get(RequestParams requestParams, Callback.CommonCallback<T> commonCallback);

    <T> T getSync(RequestParams requestParams, Class<T> cls);

    <T> Callback.Cancelable post(RequestParams requestParams, Callback.CommonCallback<T> commonCallback);

    <T> T postSync(RequestParams requestParams, Class<T> cls);

    <T> Callback.Cancelable request(HttpMethod httpMethod, RequestParams requestParams, Callback.CommonCallback<T> commonCallback);

    <T> T requestSync(HttpMethod httpMethod, RequestParams requestParams, Class<T> cls);

    <T> T requestSync(HttpMethod httpMethod, RequestParams requestParams, Callback.TypedCallback<T> typedCallback);
}
