package com.bytedance.sdk.openadsdk.k.a;

import android.content.Context;
import com.bytedance.sdk.openadsdk.k.b.c;
import com.bytedance.sdk.openadsdk.k.e;
import com.bytedance.sdk.openadsdk.k.g.d;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/a/b.class */
public class b extends a {

    /* renamed from: a  reason: collision with root package name */
    public final File f9668a;

    public void a() {
        d.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.k.a.b.1
            @Override // java.lang.Runnable
            public void run() {
                b.this.b();
            }
        });
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:10:0x0033). Please submit an issue!!! */
    public void b() {
        com.bytedance.sdk.openadsdk.k.d.c().d();
        Context a2 = e.a();
        if (a2 != null) {
            c.a(a2).a(1);
        }
        for (File file : this.f9668a.listFiles()) {
            try {
                file.delete();
            } catch (Throwable th) {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.k.a.a
    public File c(String str) {
        return e(str);
    }

    @Override // com.bytedance.sdk.openadsdk.k.a.a
    public File d(String str) {
        return e(str);
    }

    File e(String str) {
        return new File(this.f9668a, str);
    }
}
