package com.bytedance.sdk.openadsdk.g.a;

import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.g.a.d;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/q.class */
public class q {

    /* renamed from: a  reason: collision with root package name */
    static v f9545a;

    /* renamed from: b  reason: collision with root package name */
    private final a f9546b;

    /* renamed from: c  reason: collision with root package name */
    private final WebView f9547c;

    /* renamed from: d  reason: collision with root package name */
    private final j f9548d;
    private final List<n> e;
    private o f;
    private volatile boolean g = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(j jVar) {
        v vVar;
        ArrayList arrayList = new ArrayList();
        this.e = arrayList;
        this.f9548d = jVar;
        u a2 = (!jVar.h || (vVar = f9545a) == null) ? null : vVar.a(jVar.k);
        if (jVar.f9533a != null) {
            y yVar = new y();
            this.f9546b = yVar;
            yVar.a(jVar, a2);
        } else {
            a aVar = jVar.f9534b;
            this.f9546b = aVar;
            aVar.a(jVar, a2);
        }
        this.f9547c = jVar.f9533a;
        arrayList.add(jVar.j);
        i.a(jVar.f);
        x.a(jVar.g);
    }

    public static j a(WebView webView) {
        return new j(webView);
    }

    private void a() {
        if (this.g) {
            i.a(new IllegalStateException("JsBridge2 is already released!!!"));
        }
    }

    public q a(String str, d.b bVar) {
        return a(str, (String) null, bVar);
    }

    public q a(String str, e<?, ?> eVar) {
        return a(str, (String) null, eVar);
    }

    public q a(String str, String str2, d.b bVar) {
        a();
        this.f9546b.g.a(str, bVar);
        o oVar = this.f;
        if (oVar != null) {
            oVar.a(str);
        }
        return this;
    }

    public q a(String str, String str2, e<?, ?> eVar) {
        a();
        this.f9546b.g.a(str, eVar);
        o oVar = this.f;
        if (oVar != null) {
            oVar.a(str);
        }
        return this;
    }
}
