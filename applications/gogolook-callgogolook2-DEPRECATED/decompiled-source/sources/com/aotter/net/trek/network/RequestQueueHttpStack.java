package com.aotter.net.trek.network;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.aotter.net.volley.Request;
import com.aotter.net.volley.toolbox.HurlStack;
import java.util.Map;
import java.util.TreeMap;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.HttpResponse;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/network/RequestQueueHttpStack.class */
public class RequestQueueHttpStack extends HurlStack {
    @NonNull

    /* renamed from: a */
    public final String f1560a;

    public RequestQueueHttpStack(@NonNull String str) {
        this(str, null);
    }

    public RequestQueueHttpStack(@NonNull String str, @Nullable HurlStack.UrlRewriter urlRewriter) {
        this(str, urlRewriter, null);
    }

    public RequestQueueHttpStack(@NonNull String str, @Nullable HurlStack.UrlRewriter urlRewriter, @Nullable SSLSocketFactory sSLSocketFactory) {
        super(urlRewriter, sSLSocketFactory);
        this.f1560a = str;
    }

    @Override // com.aotter.net.volley.toolbox.HurlStack, com.aotter.net.volley.toolbox.HttpStack
    public HttpResponse performRequest(@NonNull Request<?> request, @Nullable Map<String, String> map) {
        Map<String, String> map2 = map;
        if (map == null) {
            map2 = new TreeMap<>();
        }
        return super.performRequest(request, map2);
    }
}
