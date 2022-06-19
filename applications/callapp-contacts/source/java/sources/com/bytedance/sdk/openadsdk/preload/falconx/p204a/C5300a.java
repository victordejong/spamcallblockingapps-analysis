package com.bytedance.sdk.openadsdk.preload.falconx.p204a;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.preload.geckox.p219f.C5375b;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import java.io.File;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.bytedance.sdk.openadsdk.preload.falconx.a.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/falconx/a/a.class */
public class C5300a {

    /* renamed from: a */
    private C5375b f18739a;

    /* renamed from: b */
    private AtomicBoolean f18740b = new AtomicBoolean(false);

    public C5300a(Context context, String str, File file) {
        if (context != null) {
            if (TextUtils.isEmpty(str)) {
                throw new RuntimeException("access key empty");
            }
            if (file == null) {
                throw new RuntimeException("resRootDir == null");
            }
            this.f18739a = new C5375b(context, str, file);
            return;
        }
        throw new RuntimeException("context == null");
    }

    /* renamed from: a */
    public InputStream m32628a(String str) throws Exception {
        if (!this.f18740b.get()) {
            C5381b.m32429a("WebOffline-falcon", "GeckoResLoader ready to load, file:", str);
            return this.f18739a.m32442a(str);
        }
        throw new RuntimeException("released!");
    }

    /* renamed from: a */
    public void m32629a() throws Exception {
        if (this.f18740b.getAndSet(true)) {
            return;
        }
        this.f18739a.m32443a();
    }

    /* renamed from: b */
    public boolean m32627b(String str) throws Exception {
        if (!this.f18740b.get()) {
            return this.f18739a.m32440b(str);
        }
        throw new RuntimeException("released!");
    }
}
