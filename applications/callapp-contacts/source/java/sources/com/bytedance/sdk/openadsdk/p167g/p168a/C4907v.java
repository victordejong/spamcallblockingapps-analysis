package com.bytedance.sdk.openadsdk.p167g.p168a;

import android.text.TextUtils;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.g.a.v */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/v.class */
public class C4907v {

    /* renamed from: a */
    private final Collection<String> f17910a;

    /* renamed from: b */
    private final Map<String, C4902u> f17911b;

    /* renamed from: c */
    private final AbstractC4886k f17912c;

    /* renamed from: d */
    private final Set<AbstractC4908a> f17913d;

    /* renamed from: com.bytedance.sdk.openadsdk.g.a.v$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/v$a.class */
    public interface AbstractC4908a {
    }

    /* renamed from: a */
    private C4902u m33593a(String str, JSONObject jSONObject) {
        C4902u c4902u;
        C4902u c4902u2 = this.f17911b.get(str);
        if (c4902u2 == null) {
            C4902u c4902u3 = new C4902u(str, this.f17912c.m33643c(), this.f17912c.m33645a(), this.f17912c.m33644b(), jSONObject);
            this.f17911b.put(str, c4902u3);
            c4902u = c4902u3;
        } else {
            c4902u = c4902u2;
            if (jSONObject != null) {
                c4902u2.m33601a(jSONObject);
                c4902u = c4902u2;
            }
        }
        return c4902u;
    }

    /* renamed from: a */
    public C4902u m33594a(String str) {
        if (this.f17910a.contains(str) || TextUtils.equals(str, "host")) {
            return m33593a(str, null);
        }
        throw new IllegalArgumentException("Namespace: " + str + " not registered.");
    }

    /* renamed from: a */
    public void m33595a(AbstractC4908a abstractC4908a) {
        this.f17913d.add(abstractC4908a);
    }
}
