package com.bytedance.sdk.openadsdk.i;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.i.a.b;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/i/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f9592a;

    /* renamed from: b  reason: collision with root package name */
    private ExecutorService f9593b = Executors.newFixedThreadPool(5);

    private a() {
    }

    public static a a() {
        if (f9592a == null) {
            synchronized (a.class) {
                try {
                    if (f9592a == null) {
                        f9592a = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f9592a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str, int i) {
        c a2 = c.a(n.a());
        boolean z = false;
        int b2 = a2.b(str, 0);
        if ((b2 & 2) == 0 || (b2 & 1) != i) {
            z = true;
        }
        if (z) {
            a2.a(str, i + 2);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g(b bVar) {
        return bVar == null;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x004c -> B:4:0x0025). Please submit an issue!!! */
    public void a(long j, long j2, int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("starttime", j);
            jSONObject.put("endtime", j2);
            jSONObject.put("start_type", i);
        } catch (Throwable th) {
        }
        n.i().a(b.b().a("general_label").h(String.valueOf(j2 - j)).b(jSONObject.toString()), false);
    }

    public void a(b bVar) {
        if (!g(bVar)) {
            bVar.a(System.currentTimeMillis() / 1000);
            n.i().a(bVar);
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x002b -> B:4:0x0010). Please submit an issue!!! */
    public void a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playable_url", str);
        } catch (Throwable th) {
        }
        n.i().a(b.b().a("click_playable_test_tool").b(jSONObject.toString()), false);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0040 -> B:4:0x0024). Please submit an issue!!! */
    public void a(String str, int i, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playable_url", str);
            jSONObject.put("error_code", i);
            jSONObject.put("error_message", str2);
        } catch (Throwable th) {
        }
        n.i().a(b.b().a("use_playable_test_tool_error").b(jSONObject.toString()), false);
    }

    public void a(String str, JSONObject jSONObject) {
        if (!TextUtils.isEmpty(str) && jSONObject != null) {
            n.i().a(b.b().a(str).b(jSONObject.toString()), false);
        }
    }

    public void b(b bVar) {
        if (!g(bVar)) {
            bVar.a("express_ad_render");
            bVar.a(System.currentTimeMillis() / 1000);
            n.i().a(bVar);
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x002b -> B:4:0x0010). Please submit an issue!!! */
    public void b(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playable_url", str);
        } catch (Throwable th) {
        }
        n.i().a(b.b().a("close_playable_test_tool").b(jSONObject.toString()), false);
    }

    public void c(final b bVar) {
        if (!g(bVar)) {
            this.f9593b.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.i.a.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!a.this.g(bVar) && a.this.a(bVar.e(), 1)) {
                        bVar.a("reg_creative");
                        n.i().a(bVar);
                    }
                }
            });
        }
    }

    public void d(final b bVar) {
        if (!g(bVar)) {
            this.f9593b.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.i.a.2
                @Override // java.lang.Runnable
                public void run() {
                    if (!a.this.g(bVar) && a.this.a(bVar.e(), 0)) {
                        bVar.a("no_reg_creative");
                        n.i().a(bVar);
                    }
                }
            });
        }
    }

    public void e(b bVar) {
        if (!g(bVar)) {
            bVar.a("load_icon_error");
            n.i().a(bVar);
        }
    }

    public void f(b bVar) {
        if (!g(bVar)) {
            bVar.a("show_backup_endcard");
            bVar.a(System.currentTimeMillis() / 1000);
            n.i().a(bVar);
        }
    }
}
