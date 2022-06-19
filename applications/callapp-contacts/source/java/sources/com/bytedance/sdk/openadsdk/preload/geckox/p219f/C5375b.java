package com.bytedance.sdk.openadsdk.preload.geckox.p219f;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import java.io.File;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.f.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/f/b.class */
public class C5375b {

    /* renamed from: b */
    private String f18866b;

    /* renamed from: d */
    private String f18868d;

    /* renamed from: a */
    private final Map<String, C5371a> f18865a = new HashMap();

    /* renamed from: c */
    private AtomicBoolean f18867c = new AtomicBoolean(false);

    public C5375b(Context context, String str, File file) {
        if (!TextUtils.isEmpty(str)) {
            this.f18866b = str;
            if (file != null) {
                this.f18868d = new File(file, str).getAbsolutePath();
                return;
            }
            File filesDir = context.getFilesDir();
            this.f18868d = new File(filesDir, "gecko_offline_res_x" + File.separator + str).getAbsolutePath();
            return;
        }
        throw new RuntimeException("access key empty");
    }

    /* renamed from: b */
    private void m32441b() throws Exception {
        synchronized (this.f18865a) {
            for (C5371a c5371a : this.f18865a.values()) {
                c5371a.m32454a();
            }
            this.f18865a.clear();
        }
    }

    /* renamed from: c */
    private C5371a m32439c(String str) {
        C5371a c5371a;
        int indexOf = str.indexOf("/");
        if (indexOf == -1) {
            new RuntimeException("缺少channel：".concat(String.valueOf(str)));
        }
        String substring = str.substring(0, indexOf);
        synchronized (this.f18865a) {
            C5371a c5371a2 = this.f18865a.get(substring);
            c5371a = c5371a2;
            if (c5371a2 == null) {
                c5371a = new C5371a(this.f18866b, this.f18868d, substring);
                this.f18865a.put(substring, c5371a);
            }
        }
        return c5371a;
    }

    /* renamed from: a */
    public InputStream m32442a(String str) throws Exception {
        if (!this.f18867c.get()) {
            if (TextUtils.isEmpty(str)) {
                throw new RuntimeException("relativePath empty");
            }
            return m32439c(str.trim()).m32453a(str);
        }
        throw new RuntimeException("released");
    }

    /* renamed from: a */
    public void m32443a() throws Exception {
        if (this.f18867c.getAndSet(true)) {
            return;
        }
        C5381b.m32429a("Loader", "release version res loader");
        m32441b();
    }

    /* renamed from: b */
    public boolean m32440b(String str) throws Exception {
        if (!this.f18867c.get()) {
            if (TextUtils.isEmpty(str)) {
                throw new RuntimeException("relativePath empty");
            }
            return m32439c(str.trim()).m32450b(str);
        }
        throw new RuntimeException("released");
    }
}
