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

    /* renamed from: a */
    private String f11953a;

    /* renamed from: b */
    private boolean f11954b;

    /* renamed from: c */
    private final Map<String, String> f11955c;

    /* renamed from: d */
    private final Map<String, String> f11956d;

    /* renamed from: e */
    private URI f11957e;

    /* renamed from: f */
    private String f11958f;

    /* renamed from: g */
    private final AmazonWebServiceRequest f11959g;

    /* renamed from: h */
    private HttpMethodName f11960h;

    /* renamed from: i */
    private InputStream f11961i;

    /* renamed from: j */
    private int f11962j;

    /* renamed from: k */
    private AWSRequestMetrics f11963k;

    /* renamed from: l */
    private String f11964l;

    public DefaultRequest(AmazonWebServiceRequest amazonWebServiceRequest, String str) {
        this.f11954b = false;
        this.f11955c = new LinkedHashMap();
        this.f11956d = new HashMap();
        this.f11960h = HttpMethodName.POST;
        this.f11958f = str;
        this.f11959g = amazonWebServiceRequest;
    }

    public DefaultRequest(String str) {
        this(null, str);
    }

    @Override // com.amazonaws.Request
    /* renamed from: a */
    public final AmazonWebServiceRequest mo38720a() {
        return this.f11959g;
    }

    @Override // com.amazonaws.Request
    /* renamed from: a */
    public final void mo38719a(int i) {
        this.f11962j = i;
    }

    @Override // com.amazonaws.Request
    /* renamed from: a */
    public final void mo38718a(HttpMethodName httpMethodName) {
        this.f11960h = httpMethodName;
    }

    @Override // com.amazonaws.Request
    @Deprecated
    /* renamed from: a */
    public final void mo38717a(AWSRequestMetrics aWSRequestMetrics) {
        if (this.f11963k == null) {
            this.f11963k = aWSRequestMetrics;
            return;
        }
        throw new IllegalStateException("AWSRequestMetrics has already been set on this request");
    }

    @Override // com.amazonaws.Request
    /* renamed from: a */
    public final void mo38716a(InputStream inputStream) {
        this.f11961i = inputStream;
    }

    @Override // com.amazonaws.Request
    /* renamed from: a */
    public final void mo38715a(String str) {
        this.f11953a = str;
    }

    @Override // com.amazonaws.Request
    /* renamed from: a */
    public final void mo38714a(String str, String str2) {
        this.f11956d.put(str, str2);
    }

    @Override // com.amazonaws.Request
    /* renamed from: a */
    public final void mo38713a(URI uri) {
        this.f11957e = uri;
    }

    @Override // com.amazonaws.Request
    /* renamed from: a */
    public final void mo38712a(Map<String, String> map) {
        this.f11956d.clear();
        this.f11956d.putAll(map);
    }

    @Override // com.amazonaws.Request
    /* renamed from: b */
    public final Map<String, String> mo38711b() {
        return this.f11956d;
    }

    @Override // com.amazonaws.Request
    /* renamed from: b */
    public final void mo38710b(String str, String str2) {
        this.f11955c.put(str, str2);
    }

    @Override // com.amazonaws.Request
    /* renamed from: b */
    public final void mo38709b(Map<String, String> map) {
        this.f11955c.clear();
        this.f11955c.putAll(map);
    }

    @Override // com.amazonaws.Request
    /* renamed from: c */
    public final String mo38708c() {
        return this.f11953a;
    }

    @Override // com.amazonaws.Request
    /* renamed from: d */
    public final Map<String, String> mo38707d() {
        return this.f11955c;
    }

    @Override // com.amazonaws.Request
    /* renamed from: e */
    public final HttpMethodName mo38706e() {
        return this.f11960h;
    }

    @Override // com.amazonaws.Request
    /* renamed from: f */
    public final URI mo38705f() {
        return this.f11957e;
    }

    @Override // com.amazonaws.Request
    /* renamed from: g */
    public final String mo38704g() {
        return this.f11958f;
    }

    @Override // com.amazonaws.Request
    /* renamed from: h */
    public final InputStream mo38703h() {
        return this.f11961i;
    }

    @Override // com.amazonaws.Request
    /* renamed from: i */
    public final String mo38702i() {
        return this.f11964l;
    }

    @Override // com.amazonaws.Request
    /* renamed from: j */
    public final int mo38701j() {
        return this.f11962j;
    }

    @Override // com.amazonaws.Request
    @Deprecated
    /* renamed from: k */
    public final AWSRequestMetrics mo38700k() {
        return this.f11963k;
    }

    @Override // com.amazonaws.Request
    /* renamed from: l */
    public final boolean mo38699l() {
        return this.f11954b;
    }

    @Override // com.amazonaws.Request
    /* renamed from: m */
    public final void mo38698m() {
        this.f11954b = true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f11960h);
        sb.append(StringUtils.SPACE);
        sb.append(this.f11957e);
        sb.append(StringUtils.SPACE);
        String str = this.f11953a;
        if (str == null) {
            sb.append("/");
        } else {
            if (!str.startsWith("/")) {
                sb.append("/");
            }
            sb.append(str);
        }
        sb.append(StringUtils.SPACE);
        if (!this.f11955c.isEmpty()) {
            sb.append("Parameters: (");
            for (String str2 : this.f11955c.keySet()) {
                sb.append(str2);
                sb.append(": ");
                sb.append(this.f11955c.get(str2));
                sb.append(", ");
            }
            sb.append(") ");
        }
        if (!this.f11956d.isEmpty()) {
            sb.append("Headers: (");
            for (String str3 : this.f11956d.keySet()) {
                sb.append(str3);
                sb.append(": ");
                sb.append(this.f11956d.get(str3));
                sb.append(", ");
            }
            sb.append(") ");
        }
        return sb.toString();
    }
}
