package com.bytedance.sdk.openadsdk.p171i.p173b;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p157h.C4587d;
import com.bytedance.sdk.openadsdk.p164d.AbstractC4821j;
import com.bytedance.sdk.openadsdk.p171i.p172a.AbstractC4930a;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.i.b.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/i/b/c.class */
public class C4934c implements AbstractC4932a {

    /* renamed from: b */
    private final List<C4936a> f17962b = Collections.synchronizedList(new LinkedList());

    /* renamed from: c */
    private final ExecutorService f17963c = Executors.newSingleThreadExecutor();

    /* renamed from: a */
    private final C4933b f17961a = C4933b.m33505a();

    /* renamed from: com.bytedance.sdk.openadsdk.i.b.c$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/i/b/c$a.class */
    public static class C4936a implements AbstractC4821j {

        /* renamed from: a */
        public final String f17965a;

        /* renamed from: b */
        public final JSONObject f17966b;

        public C4936a(String str, JSONObject jSONObject) {
            this.f17965a = str;
            this.f17966b = jSONObject;
        }

        /* renamed from: a */
        public static C4936a m33497a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                String optString = jSONObject.optString("localId", null);
                JSONObject optJSONObject = jSONObject.optJSONObject("event");
                if (!TextUtils.isEmpty(optString) && optJSONObject != null) {
                    return new C4936a(optString, optJSONObject);
                }
                return null;
            } catch (Throwable th) {
                return null;
            }
        }

        /* renamed from: a */
        public String m33498a() {
            if (TextUtils.isEmpty(this.f17965a) || this.f17966b == null) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("localId", this.f17965a);
                jSONObject.put("event", this.f17966b);
            } catch (Throwable th) {
            }
            return jSONObject.toString();
        }

        @Override // com.bytedance.sdk.openadsdk.p164d.AbstractC4821j
        /* renamed from: b */
        public String mo33496b() {
            return this.f17965a;
        }
    }

    /* renamed from: c */
    public static AbstractC4932a m33499c() {
        return C4938e.m33491c();
    }

    @Override // com.bytedance.sdk.openadsdk.p171i.p173b.AbstractC4932a
    /* renamed from: a */
    public void mo33495a() {
        this.f17963c.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.i.b.c.1
            @Override // java.lang.Runnable
            public void run() {
                List<C4936a> m33502d = C4934c.this.f17961a.m33502d();
                if (m33502d != null) {
                    C4934c.this.f17962b.addAll(m33502d);
                }
                C4934c.this.f17961a.m33503c();
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.p171i.p173b.AbstractC4932a
    /* renamed from: a */
    public void mo33494a(AbstractC4930a abstractC4930a) {
        mo33493a(abstractC4930a, false);
    }

    @Override // com.bytedance.sdk.openadsdk.p171i.p173b.AbstractC4932a
    /* renamed from: a */
    public void mo33493a(AbstractC4930a abstractC4930a, boolean z) {
        if (abstractC4930a == null || !C4587d.m34919a()) {
            return;
        }
        C4936a c4936a = new C4936a(UUID.randomUUID().toString(), abstractC4930a.mo33068a());
        if (z) {
            C4600n.m34808e().mo33797a(c4936a);
        } else {
            C4600n.m34809d().mo33797a(c4936a);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p171i.p173b.AbstractC4932a
    /* renamed from: b */
    public void mo33492b() {
        ExecutorService executorService = this.f17963c;
        if (executorService != null) {
            executorService.shutdownNow();
        }
    }
}
