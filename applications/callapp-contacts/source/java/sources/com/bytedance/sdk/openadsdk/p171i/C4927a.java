package com.bytedance.sdk.openadsdk.p171i;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.C4516c;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.p171i.p172a.C4931b;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.i.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/i/a.class */
public class C4927a {

    /* renamed from: a */
    private static volatile C4927a f17938a;

    /* renamed from: b */
    private ExecutorService f17939b = Executors.newFixedThreadPool(5);

    private C4927a() {
    }

    /* renamed from: a */
    public static C4927a m33549a() {
        if (f17938a == null) {
            synchronized (C4927a.class) {
                try {
                    if (f17938a == null) {
                        f17938a = new C4927a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f17938a;
    }

    /* renamed from: a */
    public boolean m33543a(String str, int i) {
        C4516c m35418a = C4516c.m35418a(C4600n.m34815a());
        boolean z = false;
        int m35413b = m35418a.m35413b(str, 0);
        if ((m35413b & 2) == 0 || (m35413b & 1) != i) {
            z = true;
        }
        if (z) {
            m35418a.m35417a(str, i + 2);
        }
        return z;
    }

    /* renamed from: g */
    public boolean m33534g(C4931b c4931b) {
        return c4931b == null;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x004c -> B:4:0x0025). Please submit an issue!!! */
    /* renamed from: a */
    public void m33548a(long j, long j2, int i) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("starttime", j);
            jSONObject.put("endtime", j2);
            jSONObject.put("start_type", i);
        } catch (Throwable th) {
        }
        C4600n.m34804i().mo33493a(C4931b.m33530b().m33531a("general_label").m33516h(String.valueOf(j2 - j)).m33528b(jSONObject.toString()), false);
    }

    /* renamed from: a */
    public void m33547a(C4931b c4931b) {
        if (m33534g(c4931b)) {
            return;
        }
        c4931b.m33532a(System.currentTimeMillis() / 1000);
        C4600n.m34804i().mo33494a(c4931b);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x002b -> B:4:0x0010). Please submit an issue!!! */
    /* renamed from: a */
    public void m33544a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playable_url", str);
        } catch (Throwable th) {
        }
        C4600n.m34804i().mo33493a(C4931b.m33530b().m33531a("click_playable_test_tool").m33528b(jSONObject.toString()), false);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0040 -> B:4:0x0024). Please submit an issue!!! */
    /* renamed from: a */
    public void m33542a(String str, int i, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playable_url", str);
            jSONObject.put("error_code", i);
            jSONObject.put("error_message", str2);
        } catch (Throwable th) {
        }
        C4600n.m34804i().mo33493a(C4931b.m33530b().m33531a("use_playable_test_tool_error").m33528b(jSONObject.toString()), false);
    }

    /* renamed from: a */
    public void m33541a(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str) || jSONObject == null) {
            return;
        }
        C4600n.m34804i().mo33493a(C4931b.m33530b().m33531a(str).m33528b(jSONObject.toString()), false);
    }

    /* renamed from: b */
    public void m33540b(C4931b c4931b) {
        if (m33534g(c4931b)) {
            return;
        }
        c4931b.m33531a("express_ad_render");
        c4931b.m33532a(System.currentTimeMillis() / 1000);
        C4600n.m34804i().mo33494a(c4931b);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x002b -> B:4:0x0010). Please submit an issue!!! */
    /* renamed from: b */
    public void m33539b(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playable_url", str);
        } catch (Throwable th) {
        }
        C4600n.m34804i().mo33493a(C4931b.m33530b().m33531a("close_playable_test_tool").m33528b(jSONObject.toString()), false);
    }

    /* renamed from: c */
    public void m33538c(final C4931b c4931b) {
        if (!m33534g(c4931b)) {
            this.f17939b.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.i.a.1
                @Override // java.lang.Runnable
                public void run() {
                    if (C4927a.this.m33534g(c4931b) || !C4927a.this.m33543a(c4931b.m33523e(), 1)) {
                        return;
                    }
                    c4931b.m33531a("reg_creative");
                    C4600n.m34804i().mo33494a(c4931b);
                }
            });
        }
    }

    /* renamed from: d */
    public void m33537d(final C4931b c4931b) {
        if (!m33534g(c4931b)) {
            this.f17939b.execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.i.a.2
                @Override // java.lang.Runnable
                public void run() {
                    if (C4927a.this.m33534g(c4931b) || !C4927a.this.m33543a(c4931b.m33523e(), 0)) {
                        return;
                    }
                    c4931b.m33531a("no_reg_creative");
                    C4600n.m34804i().mo33494a(c4931b);
                }
            });
        }
    }

    /* renamed from: e */
    public void m33536e(C4931b c4931b) {
        if (!m33534g(c4931b)) {
            c4931b.m33531a("load_icon_error");
            C4600n.m34804i().mo33494a(c4931b);
        }
    }

    /* renamed from: f */
    public void m33535f(C4931b c4931b) {
        if (m33534g(c4931b)) {
            return;
        }
        c4931b.m33531a("show_backup_endcard");
        c4931b.m33532a(System.currentTimeMillis() / 1000);
        C4600n.m34804i().mo33494a(c4931b);
    }
}
