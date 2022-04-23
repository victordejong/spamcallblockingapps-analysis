package com.android.volley.toolbox;

import android.support.v4.view.p;
import com.android.volley.n;
import java.net.URI;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
/* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/d.class */
public final class d implements f {

    /* renamed from: a  reason: collision with root package name */
    protected final HttpClient f2327a;

    /* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/d$a.class */
    public static final class a extends HttpEntityEnclosingRequestBase {
        public a() {
        }

        public a(String str) {
            setURI(URI.create(str));
        }

        public final String getMethod() {
            return "PATCH";
        }
    }

    public d(HttpClient httpClient) {
        this.f2327a = httpClient;
    }

    private static void a(HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, n<?> nVar) {
        byte[] h = nVar.h();
        if (h != null) {
            httpEntityEnclosingRequestBase.setEntity(new ByteArrayEntity(h));
        }
    }

    private static void a(HttpUriRequest httpUriRequest, Map<String, String> map) {
        for (String str : map.keySet()) {
            httpUriRequest.setHeader(str, map.get(str));
        }
    }

    @Override // com.android.volley.toolbox.f
    public final HttpResponse a(n<?> nVar, Map<String, String> map) {
        HttpPost aVar;
        switch (nVar.f2302a) {
            case p.POSITION_UNCHANGED /* -1 */:
                byte[] f = nVar.f();
                if (f == null) {
                    aVar = new HttpGet(nVar.b());
                    break;
                } else {
                    aVar = new HttpPost(nVar.b());
                    aVar.addHeader("Content-Type", nVar.e());
                    aVar.setEntity(new ByteArrayEntity(f));
                    break;
                }
            case 0:
                aVar = new HttpGet(nVar.b());
                break;
            case 1:
                aVar = new HttpPost(nVar.b());
                aVar.addHeader("Content-Type", nVar.g());
                a((HttpEntityEnclosingRequestBase) aVar, nVar);
                break;
            case 2:
                aVar = new HttpPut(nVar.b());
                aVar.addHeader("Content-Type", nVar.g());
                a((HttpEntityEnclosingRequestBase) aVar, nVar);
                break;
            case 3:
                aVar = new HttpDelete(nVar.b());
                break;
            case 4:
                aVar = new HttpHead(nVar.b());
                break;
            case 5:
                aVar = new HttpOptions(nVar.b());
                break;
            case 6:
                aVar = new HttpTrace(nVar.b());
                break;
            case 7:
                aVar = new a(nVar.b());
                aVar.addHeader("Content-Type", nVar.g());
                a((HttpEntityEnclosingRequestBase) aVar, nVar);
                break;
            default:
                throw new IllegalStateException("Unknown request method.");
        }
        a((HttpUriRequest) aVar, map);
        a((HttpUriRequest) aVar, nVar.d());
        HttpParams params = aVar.getParams();
        int j = nVar.j();
        HttpConnectionParams.setConnectionTimeout(params, 5000);
        HttpConnectionParams.setSoTimeout(params, j);
        return this.f2327a.execute(aVar);
    }
}
