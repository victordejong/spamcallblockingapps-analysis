package com.bytedance.sdk.openadsdk.p176k.p181e;

import com.bytedance.sdk.adnet.core.Header;
import com.bytedance.sdk.adnet.core.HttpResponse;
import com.bytedance.sdk.openadsdk.p176k.C5034i;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.k.e.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/e/g.class */
public class C5010g extends AbstractC5003a {

    /* renamed from: c */
    private HttpResponse f18158c;

    public C5010g(HttpResponse httpResponse, C5009f c5009f) {
        this.f18158c = httpResponse;
        this.f18149a = new ArrayList();
        for (int i = 0; i < this.f18158c.getHeaders().size(); i++) {
            Header header = this.f18158c.getHeaders().get(i);
            if (header != null) {
                this.f18149a.add(new C5034i.C5036b(header.getName(), header.getValue()));
            }
        }
        this.f18150b = c5009f;
    }

    @Override // com.bytedance.sdk.openadsdk.p176k.p181e.AbstractC5003a
    /* renamed from: a */
    public int mo33322a() {
        return this.f18158c.getStatusCode();
    }

    @Override // com.bytedance.sdk.openadsdk.p176k.p181e.AbstractC5003a
    /* renamed from: a */
    public String mo33321a(String str, String str2) {
        return m33330a(str) != null ? m33330a(str).f18236b : str2;
    }

    @Override // com.bytedance.sdk.openadsdk.p176k.p181e.AbstractC5003a
    /* renamed from: b */
    public boolean mo33320b() {
        return this.f18158c.getStatusCode() >= 200 && this.f18158c.getStatusCode() < 300;
    }

    @Override // com.bytedance.sdk.openadsdk.p176k.p181e.AbstractC5003a
    /* renamed from: c */
    public List<C5034i.C5036b> mo33319c() {
        return this.f18149a;
    }

    @Override // com.bytedance.sdk.openadsdk.p176k.p181e.AbstractC5003a
    /* renamed from: d */
    public InputStream mo33318d() {
        return this.f18158c.getContent();
    }

    @Override // com.bytedance.sdk.openadsdk.p176k.p181e.AbstractC5003a
    /* renamed from: e */
    public String mo33317e() {
        return "http/1.1";
    }

    @Override // com.bytedance.sdk.openadsdk.p176k.p181e.AbstractC5003a
    /* renamed from: f */
    public String mo33316f() {
        return m33331a(this.f18158c.getStatusCode());
    }
}
