package com.bytedance.sdk.openadsdk.preload.geckox.p219f;

import com.bytedance.sdk.openadsdk.preload.geckox.p206a.C5316c;
import com.bytedance.sdk.openadsdk.preload.geckox.p219f.p220a.AbstractC5372a;
import com.bytedance.sdk.openadsdk.preload.geckox.p219f.p220a.C5373b;
import com.bytedance.sdk.openadsdk.preload.geckox.p219f.p220a.C5374c;
import com.bytedance.sdk.openadsdk.preload.geckox.p221g.C5377b;
import com.bytedance.sdk.openadsdk.preload.geckox.p221g.C5378c;
import com.bytedance.sdk.openadsdk.preload.geckox.p222h.C5381b;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5427k;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.f.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/f/a.class */
public class C5371a {

    /* renamed from: a */
    private String f18858a;

    /* renamed from: b */
    private String f18859b;

    /* renamed from: c */
    private volatile File f18860c;

    /* renamed from: d */
    private volatile Long f18861d;

    /* renamed from: e */
    private volatile AbstractC5372a f18862e;

    /* renamed from: f */
    private AtomicBoolean f18863f = new AtomicBoolean(false);

    public C5371a(String str, String str2, String str3) {
        this.f18858a = str2;
        this.f18859b = str3;
    }

    /* renamed from: a */
    private String m32452a(String str, String str2) {
        return str2.substring(str.length() + 1);
    }

    /* renamed from: b */
    private void m32451b() throws Exception {
        C5377b m32435a = C5377b.m32435a(this.f18858a + File.separator + this.f18859b + File.separator + "select.lock");
        C5381b.m32429a("gecko-file-lock", "channel version loader clean");
        try {
            if (this.f18860c == null) {
                return;
            }
            C5378c.m32433b(this.f18860c.getAbsolutePath() + File.separator + "using.lock");
            m32435a.m32436a();
            C5316c.m32590a(this.f18858a + File.separator + this.f18859b);
        } finally {
            m32435a.m32436a();
        }
    }

    /* renamed from: c */
    private AbstractC5372a m32449c(String str) throws Exception {
        synchronized (this) {
            if (this.f18862e != null) {
                return this.f18862e;
            }
            File m32448d = m32448d(str);
            if (m32448d == null) {
                throw new FileNotFoundException("channel no exist，channel:".concat(String.valueOf(str)));
            }
            File file = new File(m32448d, "res.macv");
            File file2 = new File(m32448d, "res");
            if (file2.exists() && file2.isDirectory()) {
                this.f18862e = new C5374c(m32448d);
            } else if (!file.exists() || !file.isFile()) {
                throw new RuntimeException("can not find res, dir:" + m32448d.getAbsolutePath());
            } else {
                this.f18862e = new C5373b(m32448d);
            }
            return this.f18862e;
        }
    }

    /* renamed from: d */
    private File m32448d(String str) throws Exception {
        synchronized (this) {
            if (this.f18860c != null) {
                return this.f18860c;
            } else if (this.f18861d != null && this.f18861d.longValue() == -1) {
                return null;
            } else {
                C5377b m32435a = C5377b.m32435a(this.f18858a + File.separator + str + File.separator + "select.lock");
                if (this.f18861d == null) {
                    this.f18861d = C5427k.m32344a(new File(this.f18858a, str));
                }
                if (this.f18861d == null) {
                    this.f18861d = -1L;
                    m32435a.m32436a();
                    return null;
                }
                String str2 = this.f18858a;
                File file = new File(str2, File.separator + str + File.separator + this.f18861d + File.separator + "using.lock");
                this.f18860c = file.getParentFile();
                C5378c.m32434a(file.getAbsolutePath());
                File file2 = this.f18860c;
                m32435a.m32436a();
                return file2;
            }
        }
    }

    /* renamed from: a */
    public final InputStream m32453a(String str) throws Exception {
        return m32449c(this.f18859b).m32447a(m32452a(this.f18859b, str));
    }

    /* renamed from: a */
    public void m32454a() throws Exception {
        if (this.f18863f.getAndSet(true)) {
            return;
        }
        m32451b();
    }

    /* renamed from: b */
    public final boolean m32450b(String str) throws Exception {
        return m32449c(this.f18859b).m32446b(m32452a(this.f18859b, str));
    }
}
