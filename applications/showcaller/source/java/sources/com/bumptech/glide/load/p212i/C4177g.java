package com.bumptech.glide.load.p212i;

import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.p223p.C4382j;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.i.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/g.class */
public class C4177g implements AbstractC3999c {

    /* renamed from: b */
    private final AbstractC4178h f13031b;

    /* renamed from: c */
    private final URL f13032c;

    /* renamed from: d */
    private final String f13033d;

    /* renamed from: e */
    private String f13034e;

    /* renamed from: f */
    private URL f13035f;

    /* renamed from: g */
    private volatile byte[] f13036g;

    /* renamed from: h */
    private int f13037h;

    public C4177g(String str) {
        this(str, AbstractC4178h.f13039b);
    }

    public C4177g(String str, AbstractC4178h abstractC4178h) {
        this.f13032c = null;
        this.f13033d = C4382j.m22721b(str);
        this.f13031b = (AbstractC4178h) C4382j.m22719d(abstractC4178h);
    }

    public C4177g(URL url) {
        this(url, AbstractC4178h.f13039b);
    }

    public C4177g(URL url, AbstractC4178h abstractC4178h) {
        this.f13032c = (URL) C4382j.m22719d(url);
        this.f13033d = null;
        this.f13031b = (AbstractC4178h) C4382j.m22719d(abstractC4178h);
    }

    /* renamed from: d */
    private byte[] m23154d() {
        if (this.f13036g == null) {
            this.f13036g = m23155c().getBytes(AbstractC3999c.f12633a);
        }
        return this.f13036g;
    }

    /* renamed from: f */
    private String m23152f() {
        if (TextUtils.isEmpty(this.f13034e)) {
            String str = this.f13033d;
            String str2 = str;
            if (TextUtils.isEmpty(str)) {
                str2 = ((URL) C4382j.m22719d(this.f13032c)).toString();
            }
            this.f13034e = Uri.encode(str2, "@#&=*+-_.,:!?()/~'%;$");
        }
        return this.f13034e;
    }

    /* renamed from: g */
    private URL m23151g() {
        if (this.f13035f == null) {
            this.f13035f = new URL(m23152f());
        }
        return this.f13035f;
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    /* renamed from: a */
    public void mo22754a(MessageDigest messageDigest) {
        messageDigest.update(m23154d());
    }

    /* renamed from: c */
    public String m23155c() {
        String str = this.f13033d;
        if (str == null) {
            str = ((URL) C4382j.m22719d(this.f13032c)).toString();
        }
        return str;
    }

    /* renamed from: e */
    public Map<String, String> m23153e() {
        return this.f13031b.getHeaders();
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C4177g) {
            C4177g c4177g = (C4177g) obj;
            z = false;
            if (m23155c().equals(c4177g.m23155c())) {
                z = false;
                if (this.f13031b.equals(c4177g.f13031b)) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: h */
    public URL m23150h() {
        return m23151g();
    }

    @Override // com.bumptech.glide.load.AbstractC3999c
    public int hashCode() {
        if (this.f13037h == 0) {
            int hashCode = m23155c().hashCode();
            this.f13037h = hashCode;
            this.f13037h = (hashCode * 31) + this.f13031b.hashCode();
        }
        return this.f13037h;
    }

    public String toString() {
        return m23155c();
    }
}
