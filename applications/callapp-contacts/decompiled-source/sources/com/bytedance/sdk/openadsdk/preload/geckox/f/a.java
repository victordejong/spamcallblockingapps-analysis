package com.bytedance.sdk.openadsdk.preload.geckox.f;

import com.bytedance.sdk.openadsdk.preload.geckox.g.b;
import com.bytedance.sdk.openadsdk.preload.geckox.g.c;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.k;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/f/a.class */
class a {

    /* renamed from: a  reason: collision with root package name */
    private String f10197a;

    /* renamed from: b  reason: collision with root package name */
    private String f10198b;

    /* renamed from: c  reason: collision with root package name */
    private volatile File f10199c;

    /* renamed from: d  reason: collision with root package name */
    private volatile Long f10200d;
    private volatile com.bytedance.sdk.openadsdk.preload.geckox.f.a.a e;
    private AtomicBoolean f = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, String str2, String str3) {
        this.f10197a = str2;
        this.f10198b = str3;
    }

    private String a(String str, String str2) {
        return str2.substring(str.length() + 1);
    }

    private void b() throws Exception {
        b a2 = b.a(this.f10197a + File.separator + this.f10198b + File.separator + "select.lock");
        com.bytedance.sdk.openadsdk.preload.geckox.h.b.a("gecko-file-lock", "channel version loader clean");
        try {
            if (this.f10199c != null) {
                c.b(this.f10199c.getAbsolutePath() + File.separator + "using.lock");
                a2.a();
                com.bytedance.sdk.openadsdk.preload.geckox.a.c.a(this.f10197a + File.separator + this.f10198b);
            }
        } finally {
            a2.a();
        }
    }

    private com.bytedance.sdk.openadsdk.preload.geckox.f.a.a c(String str) throws Exception {
        synchronized (this) {
            if (this.e != null) {
                return this.e;
            }
            File d2 = d(str);
            if (d2 != null) {
                File file = new File(d2, "res.macv");
                File file2 = new File(d2, "res");
                if (file2.exists() && file2.isDirectory()) {
                    this.e = new com.bytedance.sdk.openadsdk.preload.geckox.f.a.c(d2);
                } else if (!file.exists() || !file.isFile()) {
                    throw new RuntimeException("can not find res, dir:" + d2.getAbsolutePath());
                } else {
                    this.e = new com.bytedance.sdk.openadsdk.preload.geckox.f.a.b(d2);
                }
                return this.e;
            }
            throw new FileNotFoundException("channel no exist，channel:".concat(String.valueOf(str)));
        }
    }

    private File d(String str) throws Exception {
        synchronized (this) {
            if (this.f10199c != null) {
                return this.f10199c;
            } else if (this.f10200d != null && this.f10200d.longValue() == -1) {
                return null;
            } else {
                b a2 = b.a(this.f10197a + File.separator + str + File.separator + "select.lock");
                if (this.f10200d == null) {
                    this.f10200d = k.a(new File(this.f10197a, str));
                }
                if (this.f10200d == null) {
                    this.f10200d = -1L;
                    a2.a();
                    return null;
                }
                String str2 = this.f10197a;
                File file = new File(str2, File.separator + str + File.separator + this.f10200d + File.separator + "using.lock");
                this.f10199c = file.getParentFile();
                c.a(file.getAbsolutePath());
                File file2 = this.f10199c;
                a2.a();
                return file2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final InputStream a(String str) throws Exception {
        return c(this.f10198b).a(a(this.f10198b, str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() throws Exception {
        if (!this.f.getAndSet(true)) {
            b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(String str) throws Exception {
        return c(this.f10198b).b(a(this.f10198b, str));
    }
}
