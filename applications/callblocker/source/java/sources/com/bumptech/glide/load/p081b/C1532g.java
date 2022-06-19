package com.bumptech.glide.load.p081b;

import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.p077h.C1456i;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.b.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/g.class */
public class C1532g implements AbstractC1777f {

    /* renamed from: b */
    private final AbstractC1533h f4875b;

    /* renamed from: c */
    private final URL f4876c;

    /* renamed from: d */
    private final String f4877d;

    /* renamed from: e */
    private String f4878e;

    /* renamed from: f */
    private URL f4879f;

    /* renamed from: g */
    private volatile byte[] f4880g;

    /* renamed from: h */
    private int f4881h;

    public C1532g(String str) {
        this(str, AbstractC1533h.f4883b);
    }

    public C1532g(String str, AbstractC1533h abstractC1533h) {
        this.f4876c = null;
        this.f4877d = C1456i.m16987a(str);
        this.f4875b = (AbstractC1533h) C1456i.m16989a(abstractC1533h);
    }

    public C1532g(URL url) {
        this(url, AbstractC1533h.f4883b);
    }

    public C1532g(URL url, AbstractC1533h abstractC1533h) {
        this.f4876c = (URL) C1456i.m16989a(url);
        this.f4877d = null;
        this.f4875b = (AbstractC1533h) C1456i.m16989a(abstractC1533h);
    }

    /* renamed from: d */
    private URL m16860d() {
        if (this.f4879f == null) {
            this.f4879f = new URL(m16859e());
        }
        return this.f4879f;
    }

    /* renamed from: e */
    private String m16859e() {
        if (TextUtils.isEmpty(this.f4878e)) {
            String str = this.f4877d;
            String str2 = str;
            if (TextUtils.isEmpty(str)) {
                str2 = ((URL) C1456i.m16989a(this.f4876c)).toString();
            }
            this.f4878e = Uri.encode(str2, "@#&=*+-_.,:!?()/~'%;$");
        }
        return this.f4878e;
    }

    /* renamed from: f */
    private byte[] m16858f() {
        if (this.f4880g == null) {
            this.f4880g = m16861c().getBytes(f5410a);
        }
        return this.f4880g;
    }

    /* renamed from: a */
    public URL m16863a() {
        return m16860d();
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    /* renamed from: a */
    public void mo16320a(MessageDigest messageDigest) {
        messageDigest.update(m16858f());
    }

    /* renamed from: b */
    public Map<String, String> m16862b() {
        return this.f4875b.mo16857a();
    }

    /* renamed from: c */
    public String m16861c() {
        return this.f4877d != null ? this.f4877d : ((URL) C1456i.m16989a(this.f4876c)).toString();
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C1532g) {
            C1532g c1532g = (C1532g) obj;
            z = false;
            if (m16861c().equals(c1532g.m16861c())) {
                z = false;
                if (this.f4875b.equals(c1532g.f4875b)) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.load.AbstractC1777f
    public int hashCode() {
        if (this.f4881h == 0) {
            this.f4881h = m16861c().hashCode();
            this.f4881h = (this.f4881h * 31) + this.f4875b.hashCode();
        }
        return this.f4881h;
    }

    public String toString() {
        return m16861c();
    }
}
