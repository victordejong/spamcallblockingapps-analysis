package p081h.p119d.p120a.p124s.p131j;

import android.net.Uri;
import android.text.TextUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;
/* renamed from: h.d.a.s.j.d */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/d.class */
public class C5904d {

    /* renamed from: a */
    public final URL f14831a;

    /* renamed from: b */
    public final AbstractC5905e f14832b;

    /* renamed from: c */
    public final String f14833c;

    /* renamed from: d */
    public String f14834d;

    /* renamed from: e */
    public URL f14835e;

    public C5904d(String str) {
        this(str, AbstractC5905e.f14836a);
    }

    public C5904d(String str, AbstractC5905e eVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("String url must not be empty or null: " + str);
        } else if (eVar != null) {
            this.f14833c = str;
            this.f14831a = null;
            this.f14832b = eVar;
        } else {
            throw new IllegalArgumentException("Headers must not be null");
        }
    }

    public C5904d(URL url) {
        this(url, AbstractC5905e.f14836a);
    }

    public C5904d(URL url, AbstractC5905e eVar) {
        if (url == null) {
            throw new IllegalArgumentException("URL must not be null!");
        } else if (eVar != null) {
            this.f14831a = url;
            this.f14833c = null;
            this.f14832b = eVar;
        } else {
            throw new IllegalArgumentException("Headers must not be null");
        }
    }

    /* renamed from: a */
    public String m24155a() {
        String str = this.f14833c;
        if (str == null) {
            str = this.f14831a.toString();
        }
        return str;
    }

    /* renamed from: b */
    public Map<String, String> m24154b() {
        return this.f14832b.getHeaders();
    }

    /* renamed from: c */
    public final String m24153c() {
        if (TextUtils.isEmpty(this.f14834d)) {
            String str = this.f14833c;
            String str2 = str;
            if (TextUtils.isEmpty(str)) {
                str2 = this.f14831a.toString();
            }
            this.f14834d = Uri.encode(str2, "@#&=*+-_.,:!?()/~'%");
        }
        return this.f14834d;
    }

    /* renamed from: d */
    public final URL m24152d() throws MalformedURLException {
        if (this.f14835e == null) {
            this.f14835e = new URL(m24153c());
        }
        return this.f14835e;
    }

    /* renamed from: e */
    public URL m24151e() throws MalformedURLException {
        return m24152d();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C5904d) {
            C5904d dVar = (C5904d) obj;
            z = false;
            if (m24155a().equals(dVar.m24155a())) {
                z = false;
                if (this.f14832b.equals(dVar.f14832b)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return (m24155a().hashCode() * 31) + this.f14832b.hashCode();
    }

    public String toString() {
        return m24155a() + '\n' + this.f14832b.toString();
    }
}
