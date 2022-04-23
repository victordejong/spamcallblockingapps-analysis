package com.amazonaws;

import com.amazonaws.http.HttpMethodName;
import com.amazonaws.util.AWSRequestMetrics;
import java.io.InputStream;
import java.net.URI;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/DefaultRequest.class */
public class DefaultRequest<T> implements Request<T> {

    /* renamed from: a  reason: collision with root package name */
    private String f6538a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f6539b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, String> f6540c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, String> f6541d;
    private URI e;
    private String f;
    private final AmazonWebServiceRequest g;
    private HttpMethodName h;
    private InputStream i;
    private int j;
    private AWSRequestMetrics k;
    private String l;

    public DefaultRequest(AmazonWebServiceRequest amazonWebServiceRequest, String str) {
        this.f6539b = false;
        this.f6540c = new LinkedHashMap();
        this.f6541d = new HashMap();
        this.h = HttpMethodName.POST;
        this.f = str;
        this.g = amazonWebServiceRequest;
    }

    public DefaultRequest(String str) {
        this(null, str);
    }

    @Override // com.amazonaws.Request
    public final AmazonWebServiceRequest a() {
        return this.g;
    }

    @Override // com.amazonaws.Request
    public final void a(int i) {
        this.j = i;
    }

    @Override // com.amazonaws.Request
    public final void a(HttpMethodName httpMethodName) {
        this.h = httpMethodName;
    }

    @Override // com.amazonaws.Request
    @Deprecated
    public final void a(AWSRequestMetrics aWSRequestMetrics) {
        if (this.k == null) {
            this.k = aWSRequestMetrics;
            return;
        }
        throw new IllegalStateException("AWSRequestMetrics has already been set on this request");
    }

    @Override // com.amazonaws.Request
    public final void a(InputStream inputStream) {
        this.i = inputStream;
    }

    @Override // com.amazonaws.Request
    public final void a(String str) {
        this.f6538a = str;
    }

    @Override // com.amazonaws.Request
    public final void a(String str, String str2) {
        this.f6541d.put(str, str2);
    }

    @Override // com.amazonaws.Request
    public final void a(URI uri) {
        this.e = uri;
    }

    @Override // com.amazonaws.Request
    public final void a(Map<String, String> map) {
        this.f6541d.clear();
        this.f6541d.putAll(map);
    }

    @Override // com.amazonaws.Request
    public final Map<String, String> b() {
        return this.f6541d;
    }

    @Override // com.amazonaws.Request
    public final void b(String str, String str2) {
        this.f6540c.put(str, str2);
    }

    @Override // com.amazonaws.Request
    public final void b(Map<String, String> map) {
        this.f6540c.clear();
        this.f6540c.putAll(map);
    }

    @Override // com.amazonaws.Request
    public final String c() {
        return this.f6538a;
    }

    @Override // com.amazonaws.Request
    public final Map<String, String> d() {
        return this.f6540c;
    }

    @Override // com.amazonaws.Request
    public final HttpMethodName e() {
        return this.h;
    }

    @Override // com.amazonaws.Request
    public final URI f() {
        return this.e;
    }

    @Override // com.amazonaws.Request
    public final String g() {
        return this.f;
    }

    @Override // com.amazonaws.Request
    public final InputStream h() {
        return this.i;
    }

    @Override // com.amazonaws.Request
    public final String i() {
        return this.l;
    }

    @Override // com.amazonaws.Request
    public final int j() {
        return this.j;
    }

    @Override // com.amazonaws.Request
    @Deprecated
    public final AWSRequestMetrics k() {
        return this.k;
    }

    @Override // com.amazonaws.Request
    public final boolean l() {
        return this.f6539b;
    }

    @Override // com.amazonaws.Request
    public final void m() {
        this.f6539b = true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.h);
        sb.append(StringUtils.SPACE);
        sb.append(this.e);
        sb.append(StringUtils.SPACE);
        String str = this.f6538a;
        if (str == null) {
            sb.append("/");
        } else {
            if (!str.startsWith("/")) {
                sb.append("/");
            }
            sb.append(str);
        }
        sb.append(StringUtils.SPACE);
        if (!this.f6540c.isEmpty()) {
            sb.append("Parameters: (");
            for (String str2 : this.f6540c.keySet()) {
                sb.append(str2);
                sb.append(": ");
                sb.append(this.f6540c.get(str2));
                sb.append(", ");
            }
            sb.append(") ");
        }
        if (!this.f6541d.isEmpty()) {
            sb.append("Headers: (");
            for (String str3 : this.f6541d.keySet()) {
                sb.append(str3);
                sb.append(": ");
                sb.append(this.f6541d.get(str3));
                sb.append(", ");
            }
            sb.append(") ");
        }
        return sb.toString();
    }
}
