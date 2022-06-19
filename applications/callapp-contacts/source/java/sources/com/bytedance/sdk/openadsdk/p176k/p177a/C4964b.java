package com.bytedance.sdk.openadsdk.p176k.p177a;

import android.content.Context;
import com.bytedance.sdk.openadsdk.p176k.C4991d;
import com.bytedance.sdk.openadsdk.p176k.C5001e;
import com.bytedance.sdk.openadsdk.p176k.p178b.C4982c;
import com.bytedance.sdk.openadsdk.p176k.p183g.C5030d;
import java.io.File;
/* renamed from: com.bytedance.sdk.openadsdk.k.a.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/a/b.class */
public class C4964b extends AbstractC4963a {

    /* renamed from: a */
    public final File f18051a;

    /* renamed from: a */
    public void m33407a() {
        C5030d.m33225a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.a.b.1
            @Override // java.lang.Runnable
            public void run() {
                C4964b.this.m33406b();
            }
        });
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:10:0x0033). Please submit an issue!!! */
    /* renamed from: b */
    public void m33406b() {
        C4991d.m33345c().m33344d();
        Context m33341a = C5001e.m33341a();
        if (m33341a != null) {
            C4982c.m33368a(m33341a).m33369a(1);
        }
        for (File file : this.f18051a.listFiles()) {
            try {
                file.delete();
            } catch (Throwable th) {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p176k.p177a.AbstractC4963a
    /* renamed from: c */
    public File mo33391c(String str) {
        return m33405e(str);
    }

    @Override // com.bytedance.sdk.openadsdk.p176k.p177a.AbstractC4963a
    /* renamed from: d */
    public File mo33390d(String str) {
        return m33405e(str);
    }

    /* renamed from: e */
    File m33405e(String str) {
        return new File(this.f18051a, str);
    }
}
