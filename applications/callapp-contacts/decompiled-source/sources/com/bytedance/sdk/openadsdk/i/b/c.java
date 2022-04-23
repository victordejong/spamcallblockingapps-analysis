package com.bytedance.sdk.openadsdk.i.b;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.h.d;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.d.j;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/i/b/c.class */
public class c implements com.bytedance.sdk.openadsdk.i.b.a {

    /* renamed from: b  reason: collision with root package name */
    private final List<a> f9606b = Collections.synchronizedList(new LinkedList());

    /* renamed from: c  reason: collision with root package name */
    private final ExecutorService f9607c = Executors.newSingleThreadExecutor();

    /* renamed from: a  reason: collision with root package name */
    private final b f9605a = b.a();

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/i/b/c$a.class */
    public static class a implements j {

        /* renamed from: a  reason: collision with root package name */
        public final String f9609a;

        /* renamed from: b  reason: collision with root package name */
        public final JSONObject f9610b;

        public a(String str, JSONObject jSONObject) {
            this.f9609a = str;
            this.f9610b = jSONObject;
        }

        public static a a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                String optString = jSONObject.optString("localId", null);
                JSONObject optJSONObject = jSONObject.optJSONObject("event");
                if (TextUtils.isEmpty(optString) || optJSONObject == null) {
                    return null;
                }
                return new a(optString, optJSONObject);
            } catch (Throwable th) {
                return null;
            }
        }

        public String a() {
            if (TextUtils.isEmpty(this.f9609a) || this.f9610b == null) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("localId", this.f9609a);
                jSONObject.put("event", this.f9610b);
            } catch (Throwable th) {
            }
            return jSONObject.toString();
        }

        @Override // com.bytedance.sdk.openadsdk.d.j
        public String b() {
            return this.f9609a;
        }
    }

    public static com.bytedance.sdk.openadsdk.i.b.a c() {
        return e.c();
    }

    @Override // com.bytedance.sdk.openadsdk.i.b.a
    public void a() {
        this.f9607c.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.i.b.c.1
            @Override // java.lang.Runnable
            public void run() {
                List<a> d2 = c.this.f9605a.d();
                if (d2 != null) {
                    c.this.f9606b.addAll(d2);
                }
                c.this.f9605a.c();
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.i.b.a
    public void a(com.bytedance.sdk.openadsdk.i.a.a aVar) {
        a(aVar, false);
    }

    @Override // com.bytedance.sdk.openadsdk.i.b.a
    public void a(com.bytedance.sdk.openadsdk.i.a.a aVar, boolean z) {
        if (aVar != null && d.a()) {
            a aVar2 = new a(UUID.randomUUID().toString(), aVar.a());
            if (z) {
                n.e().a(aVar2);
            } else {
                n.d().a(aVar2);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.i.b.a
    public void b() {
        ExecutorService executorService = this.f9607c;
        if (executorService != null) {
            executorService.shutdownNow();
        }
    }
}
