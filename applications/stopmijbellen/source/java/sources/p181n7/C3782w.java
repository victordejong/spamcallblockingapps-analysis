package p181n7;

import android.support.p012v4.media.C0082b;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import p255u7.C4545g;
/* renamed from: n7.w */
/* loaded from: classes2-dex2jar.jar:n7/w.class */
public class C3782w {

    /* renamed from: a */
    public final C3737a0 f12257a = new C3783a(this);

    /* renamed from: n7.w$a */
    /* loaded from: classes2-dex2jar.jar:n7/w$a.class */
    public class C3783a extends C3737a0 {
        public C3783a(C3782w c3782w) {
        }

        @Override // p181n7.C3737a0
        /* renamed from: b */
        public List<String> mo1799b() {
            return new C4545g();
        }
    }

    public C3782w() {
    }

    public C3782w(Map<String, List<String>> map) {
        for (String str : map.keySet()) {
            m1804b(str, map.get(str));
        }
    }

    /* renamed from: a */
    public C3782w m1805a(String str, String str2) {
        String lowerCase = str.toLowerCase(Locale.US);
        C3737a0 c3737a0 = this.f12257a;
        List<String> list = c3737a0.get(lowerCase);
        List<String> list2 = list;
        if (list == null) {
            list2 = c3737a0.mo1799b();
            c3737a0.put(lowerCase, list2);
        }
        list2.add(str2);
        C4545g c4545g = (C4545g) this.f12257a.get(lowerCase);
        synchronized (c4545g) {
            if (c4545g.f13972a == null) {
                c4545g.f13972a = str;
            }
        }
        return this;
    }

    /* renamed from: b */
    public C3782w m1804b(String str, List<String> list) {
        for (String str2 : list) {
            m1805a(str, str2);
        }
        return this;
    }

    /* renamed from: c */
    public C3782w m1803c(String str) {
        if (str != null) {
            String[] split = str.trim().split(":", 2);
            if (split.length == 2) {
                m1805a(split[0].trim(), split[1].trim());
            } else {
                m1805a(split[0].trim(), "");
            }
        }
        return this;
    }

    /* renamed from: d */
    public C3782w m1802d(String str, String str2) {
        if (str2 == null || (!str2.contains("\n") && !str2.contains("\r"))) {
            String lowerCase = str.toLowerCase(Locale.US);
            C3737a0 c3737a0 = this.f12257a;
            List<String> mo1799b = c3737a0.mo1799b();
            mo1799b.add(str2);
            c3737a0.put(lowerCase, mo1799b);
            C4545g c4545g = (C4545g) this.f12257a.get(lowerCase);
            synchronized (c4545g) {
                if (c4545g.f13972a == null) {
                    c4545g.f13972a = str;
                }
            }
            return this;
        }
        throw new IllegalArgumentException("value must not contain a new line or line feed");
    }

    /* renamed from: e */
    public String m1801e(String str) {
        StringBuilder m1800f = m1800f();
        return m1800f.insert(0, str + "\r\n").toString();
    }

    /* renamed from: f */
    public StringBuilder m1800f() {
        Object obj;
        StringBuilder sb = new StringBuilder(256);
        for (String str : this.f12257a.keySet()) {
            C4545g c4545g = (C4545g) this.f12257a.get(str);
            Iterator<T> it2 = c4545g.iterator();
            while (it2.hasNext()) {
                String str2 = (String) it2.next();
                synchronized (c4545g) {
                    obj = c4545g.f13972a;
                }
                C0082b.m8749m(sb, (String) obj, ": ", str2, "\r\n");
            }
        }
        sb.append("\r\n");
        return sb;
    }

    public String toString() {
        return m1800f().toString();
    }
}
