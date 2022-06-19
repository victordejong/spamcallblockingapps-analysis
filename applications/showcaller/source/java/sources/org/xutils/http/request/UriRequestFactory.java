package org.xutils.http.request;

import android.text.TextUtils;
import java.lang.reflect.Type;
import java.util.HashMap;
import org.xutils.common.util.LogUtil;
import org.xutils.http.RequestParams;
import org.xutils.http.app.RequestTracker;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/request/UriRequestFactory.class */
public final class UriRequestFactory {

    /* renamed from: a */
    private static Class<? extends RequestTracker> f40789a;

    /* renamed from: b */
    private static final HashMap<String, Class<? extends UriRequest>> f40790b = new HashMap<>();

    private UriRequestFactory() {
    }

    public static RequestTracker getDefaultTracker() {
        RequestTracker requestTracker = null;
        try {
            Class<? extends RequestTracker> cls = f40789a;
            if (cls != null) {
                requestTracker = cls.newInstance();
            }
            return requestTracker;
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
            return null;
        }
    }

    public static UriRequest getUriRequest(RequestParams requestParams, Type type) {
        String uri = requestParams.getUri();
        int indexOf = uri.indexOf(":");
        String substring = uri.startsWith("/") ? "file" : indexOf > 0 ? uri.substring(0, indexOf) : null;
        if (TextUtils.isEmpty(substring)) {
            throw new IllegalArgumentException("The url not be support: " + uri);
        }
        String lowerCase = substring.toLowerCase();
        Class<? extends UriRequest> cls = f40790b.get(lowerCase);
        if (cls != null) {
            return cls.getConstructor(RequestParams.class, Type.class).newInstance(requestParams, type);
        }
        if (lowerCase.startsWith("http")) {
            return new HttpRequest(requestParams, type);
        }
        if (lowerCase.equals("assets")) {
            return new AssetsRequest(requestParams, type);
        }
        if (lowerCase.equals("file")) {
            return new LocalFileRequest(requestParams, type);
        }
        if (lowerCase.equals("res")) {
            return new ResRequest(requestParams, type);
        }
        throw new IllegalArgumentException("The url not be support: " + uri);
    }

    public static void registerDefaultTrackerClass(Class<? extends RequestTracker> cls) {
        f40789a = cls;
    }

    public static void registerRequestClass(String str, Class<? extends UriRequest> cls) {
        f40790b.put(str, cls);
    }
}
