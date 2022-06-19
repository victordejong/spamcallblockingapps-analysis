package p193e.p1545k.p1546a.p1548b.p1553x;

import java.util.HashSet;
import p193e.p1545k.p1546a.p1548b.C23375i;
/* renamed from: e.k.a.b.x.b */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/x/b.class */
public class C23407b {

    /* renamed from: a */
    public final Object f64835a;

    /* renamed from: b */
    public String f64836b;

    /* renamed from: c */
    public String f64837c;

    /* renamed from: d */
    public HashSet<String> f64838d;

    public C23407b(Object obj) {
        this.f64835a = obj;
    }

    /* renamed from: a */
    public C23407b m7084a() {
        return new C23407b(this.f64835a);
    }

    /* renamed from: b */
    public boolean m7083b(String str) throws C23375i {
        String str2 = this.f64836b;
        if (str2 == null) {
            this.f64836b = str;
            return false;
        } else if (str.equals(str2)) {
            return true;
        } else {
            String str3 = this.f64837c;
            if (str3 == null) {
                this.f64837c = str;
                return false;
            } else if (str.equals(str3)) {
                return true;
            } else {
                if (this.f64838d == null) {
                    HashSet<String> hashSet = new HashSet<>(16);
                    this.f64838d = hashSet;
                    hashSet.add(this.f64836b);
                    this.f64838d.add(this.f64837c);
                }
                return !this.f64838d.add(str);
            }
        }
    }

    /* renamed from: c */
    public void m7082c() {
        this.f64836b = null;
        this.f64837c = null;
        this.f64838d = null;
    }
}
