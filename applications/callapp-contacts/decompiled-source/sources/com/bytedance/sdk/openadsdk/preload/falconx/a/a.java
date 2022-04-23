package com.bytedance.sdk.openadsdk.preload.falconx.a;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.preload.geckox.f.b;
import java.io.File;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/falconx/a/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private b f10124a;

    /* renamed from: b  reason: collision with root package name */
    private AtomicBoolean f10125b = new AtomicBoolean(false);

    public a(Context context, String str, File file) {
        if (context == null) {
            throw new RuntimeException("context == null");
        } else if (TextUtils.isEmpty(str)) {
            throw new RuntimeException("access key empty");
        } else if (file != null) {
            this.f10124a = new b(context, str, file);
        } else {
            throw new RuntimeException("resRootDir == null");
        }
    }

    public InputStream a(String str) throws Exception {
        if (!this.f10125b.get()) {
            com.bytedance.sdk.openadsdk.preload.geckox.h.b.a("WebOffline-falcon", "GeckoResLoader ready to load, file:", str);
            return this.f10124a.a(str);
        }
        throw new RuntimeException("released!");
    }

    public void a() throws Exception {
        if (!this.f10125b.getAndSet(true)) {
            this.f10124a.a();
        }
    }

    public boolean b(String str) throws Exception {
        if (!this.f10125b.get()) {
            return this.f10124a.b(str);
        }
        throw new RuntimeException("released!");
    }
}
