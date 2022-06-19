package p023b8;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.net.CookieManager;
import java.net.HttpCookie;
import java.net.URI;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import p181n7.AbstractC3749g;
import p181n7.AbstractC3761j;
import p181n7.C3746d0;
import p181n7.C3782w;
import p277w7.C4749e;
/* renamed from: b8.a */
/* loaded from: classes2-dex2jar.jar:b8/a.class */
public class C0739a extends C3746d0 {

    /* renamed from: a */
    public CookieManager f2804a;

    /* renamed from: b */
    public SharedPreferences f2805b;

    /* renamed from: c */
    public C4749e f2806c;

    public C0739a(C4749e c4749e) {
        this.f2806c = c4749e;
    }

    @Override // p181n7.C3746d0, p181n7.AbstractC3749g
    /* renamed from: c */
    public void mo1825c(AbstractC3749g.C3754e c3754e) {
        m7420i();
        try {
            Map<String, List<String>> map = this.f2804a.get(URI.create(c3754e.f12182b.f12186c.toString()), c3754e.f12182b.f12187d.f12257a);
            C3782w c3782w = c3754e.f12182b.f12187d;
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                String key = entry.getKey();
                if ("Cookie".equalsIgnoreCase(key) || "Cookie2".equalsIgnoreCase(key)) {
                    c3782w.m1804b(key, entry.getValue());
                }
            }
        } catch (Exception e) {
        }
    }

    @Override // p181n7.C3746d0, p181n7.AbstractC3749g
    /* renamed from: f */
    public void mo1824f(AbstractC3749g.C3753d c3753d) {
        m7420i();
        try {
            m7419j(URI.create(c3753d.f12182b.f12186c.toString()), ((AbstractC3761j) c3753d.f12178f).f12200k);
        } catch (Exception e) {
        }
    }

    /* renamed from: i */
    public final void m7420i() {
        boolean z;
        if (this.f2804a == null) {
            this.f2804a = new CookieManager(null, null);
            SharedPreferences sharedPreferences = this.f2806c.f14642g.getSharedPreferences(this.f2806c.f14639d + "-cookies", 0);
            this.f2805b = sharedPreferences;
            for (String str : sharedPreferences.getAll().keySet()) {
                try {
                    String string = this.f2805b.getString(str, null);
                    C3782w c3782w = new C3782w();
                    String[] split = string.split("\n");
                    int length = split.length;
                    boolean z2 = true;
                    int i = 0;
                    while (i < length) {
                        String str2 = split[i];
                        if (z2) {
                            z = false;
                        } else {
                            z = z2;
                            if (!TextUtils.isEmpty(str2)) {
                                c3782w.m1803c(str2);
                                z = z2;
                            }
                        }
                        i++;
                        z2 = z;
                    }
                    this.f2804a.put(URI.create(str), c3782w.f12257a);
                } catch (Exception e) {
                }
            }
        }
    }

    /* renamed from: j */
    public void m7419j(URI uri, C3782w c3782w) {
        m7420i();
        try {
            this.f2804a.put(uri, c3782w.f12257a);
            if (c3782w.f12257a.m1829a("Set-Cookie".toLowerCase(Locale.US)) == null) {
                return;
            }
            List<HttpCookie> list = this.f2804a.getCookieStore().get(uri);
            C3782w c3782w2 = new C3782w();
            for (HttpCookie httpCookie : list) {
                c3782w2.m1805a("Set-Cookie", httpCookie.getName() + "=" + httpCookie.getValue() + "; path=" + httpCookie.getPath());
            }
            this.f2805b.edit().putString(uri.getScheme() + "://" + uri.getAuthority(), c3782w2.m1801e("HTTP/1.1 200 OK")).commit();
        } catch (Exception e) {
        }
    }
}
