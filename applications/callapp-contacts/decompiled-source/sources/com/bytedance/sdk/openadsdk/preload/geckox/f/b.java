package com.bytedance.sdk.openadsdk.preload.geckox.f;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/f/b.class */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private String f10203b;

    /* renamed from: d  reason: collision with root package name */
    private String f10205d;

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, a> f10202a = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private AtomicBoolean f10204c = new AtomicBoolean(false);

    public b(Context context, String str, File file) {
        if (!TextUtils.isEmpty(str)) {
            this.f10203b = str;
            if (file == null) {
                File filesDir = context.getFilesDir();
                this.f10205d = new File(filesDir, "gecko_offline_res_x" + File.separator + str).getAbsolutePath();
                return;
            }
            this.f10205d = new File(file, str).getAbsolutePath();
            return;
        }
        throw new RuntimeException("access key empty");
    }

    private void b() throws Exception {
        synchronized (this.f10202a) {
            for (a aVar : this.f10202a.values()) {
                aVar.a();
            }
            this.f10202a.clear();
        }
    }

    private a c(String str) {
        a aVar;
        int indexOf = str.indexOf("/");
        if (indexOf == -1) {
            new RuntimeException("缺少channel：".concat(String.valueOf(str)));
        }
        String substring = str.substring(0, indexOf);
        synchronized (this.f10202a) {
            a aVar2 = this.f10202a.get(substring);
            aVar = aVar2;
            if (aVar2 == null) {
                aVar = new a(this.f10203b, this.f10205d, substring);
                this.f10202a.put(substring, aVar);
            }
        }
        return aVar;
    }

    public InputStream a(String str) throws Exception {
        if (this.f10204c.get()) {
            throw new RuntimeException("released");
        } else if (!TextUtils.isEmpty(str)) {
            return c(str.trim()).a(str);
        } else {
            throw new RuntimeException("relativePath empty");
        }
    }

    public void a() throws Exception {
        if (!this.f10204c.getAndSet(true)) {
            com.bytedance.sdk.openadsdk.preload.geckox.h.b.a("Loader", "release version res loader");
            b();
        }
    }

    public boolean b(String str) throws Exception {
        if (this.f10204c.get()) {
            throw new RuntimeException("released");
        } else if (!TextUtils.isEmpty(str)) {
            return c(str.trim()).b(str);
        } else {
            throw new RuntimeException("relativePath empty");
        }
    }
}
