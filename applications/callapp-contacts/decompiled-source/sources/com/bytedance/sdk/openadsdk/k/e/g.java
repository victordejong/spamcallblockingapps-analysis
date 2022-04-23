package com.bytedance.sdk.openadsdk.k.e;

import com.bytedance.sdk.adnet.core.Header;
import com.bytedance.sdk.adnet.core.HttpResponse;
import com.bytedance.sdk.openadsdk.k.i;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/e/g.class */
public class g extends a {

    /* renamed from: c  reason: collision with root package name */
    private HttpResponse f9733c;

    public g(HttpResponse httpResponse, f fVar) {
        this.f9733c = httpResponse;
        this.f9725a = new ArrayList();
        for (int i = 0; i < this.f9733c.getHeaders().size(); i++) {
            Header header = this.f9733c.getHeaders().get(i);
            if (header != null) {
                this.f9725a.add(new i.b(header.getName(), header.getValue()));
            }
        }
        this.f9726b = fVar;
    }

    @Override // com.bytedance.sdk.openadsdk.k.e.a
    public int a() {
        return this.f9733c.getStatusCode();
    }

    @Override // com.bytedance.sdk.openadsdk.k.e.a
    public String a(String str, String str2) {
        return a(str) != null ? a(str).f9786b : str2;
    }

    @Override // com.bytedance.sdk.openadsdk.k.e.a
    public boolean b() {
        return this.f9733c.getStatusCode() >= 200 && this.f9733c.getStatusCode() < 300;
    }

    @Override // com.bytedance.sdk.openadsdk.k.e.a
    public List<i.b> c() {
        return this.f9725a;
    }

    @Override // com.bytedance.sdk.openadsdk.k.e.a
    public InputStream d() {
        return this.f9733c.getContent();
    }

    @Override // com.bytedance.sdk.openadsdk.k.e.a
    public String e() {
        return "http/1.1";
    }

    @Override // com.bytedance.sdk.openadsdk.k.e.a
    public String f() {
        return a(this.f9733c.getStatusCode());
    }
}
