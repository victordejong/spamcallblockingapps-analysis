package p193e.p1411b.p1412a.p1420y;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.y.e */
/* loaded from: classes-dex2jar.jar:e/b/a/y/e.class */
public class C21975e {

    /* renamed from: a */
    public final List<String> f61024a;

    /* renamed from: b */
    public AbstractC21976f f61025b;

    public C21975e(C21975e c21975e) {
        this.f61024a = new ArrayList(c21975e.f61024a);
        this.f61025b = c21975e.f61025b;
    }

    public C21975e(String... strArr) {
        this.f61024a = Arrays.asList(strArr);
    }

    /* renamed from: a */
    public C21975e m8850a(String str) {
        C21975e c21975e = new C21975e(this);
        c21975e.f61024a.add(str);
        return c21975e;
    }

    /* renamed from: b */
    public final boolean m8849b() {
        return ((String) C22128a.m8714F1(this.f61024a, -1)).equals("**");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0084, code lost:
        if (m8849b() != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00e8, code lost:
        if (m8849b() != false) goto L42;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m8848c(java.lang.String r5, int r6) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1411b.p1412a.p1420y.C21975e.m8848c(java.lang.String, int):boolean");
    }

    /* renamed from: d */
    public int m8847d(String str, int i) {
        if ("__container".equals(str)) {
            return 0;
        }
        if (!this.f61024a.get(i).equals("**")) {
            return 1;
        }
        return (i != this.f61024a.size() - 1 && this.f61024a.get(i + 1).equals(str)) ? 2 : 0;
    }

    /* renamed from: e */
    public boolean m8846e(String str, int i) {
        if ("__container".equals(str)) {
            return true;
        }
        if (i >= this.f61024a.size()) {
            return false;
        }
        return this.f61024a.get(i).equals(str) || this.f61024a.get(i).equals("**") || this.f61024a.get(i).equals("*");
    }

    /* renamed from: f */
    public boolean m8845f(String str, int i) {
        if ("__container".equals(str)) {
            return true;
        }
        boolean z = true;
        if (i >= this.f61024a.size() - 1) {
            z = this.f61024a.get(i).equals("**");
        }
        return z;
    }

    /* renamed from: g */
    public C21975e m8844g(AbstractC21976f abstractC21976f) {
        C21975e c21975e = new C21975e(this);
        c21975e.f61025b = abstractC21976f;
        return c21975e;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("KeyPath{keys=");
        m8728C.append(this.f61024a);
        m8728C.append(",resolved=");
        return C22128a.m8598m(m8728C, this.f61025b != null, '}');
    }
}
