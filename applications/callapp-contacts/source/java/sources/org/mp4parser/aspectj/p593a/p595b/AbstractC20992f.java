package org.mp4parser.aspectj.p593a.p595b;

import java.lang.ref.SoftReference;
import java.util.StringTokenizer;
import org.mp4parser.aspectj.lang.AbstractC21000c;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: org.mp4parser.aspectj.a.b.f */
/* loaded from: classes5-dex2jar.jar:org/mp4parser/aspectj/a/b/f.class */
public abstract class AbstractC20992f implements AbstractC21000c {

    /* renamed from: a */
    private static boolean f67565a = true;

    /* renamed from: k */
    static String[] f67566k = new String[0];

    /* renamed from: l */
    static Class[] f67567l = new Class[0];

    /* renamed from: b */
    private String f67568b;

    /* renamed from: e */
    int f67569e;

    /* renamed from: f */
    String f67570f;

    /* renamed from: g */
    String f67571g;

    /* renamed from: h */
    Class f67572h;

    /* renamed from: i */
    AbstractC20993a f67573i;

    /* renamed from: j */
    ClassLoader f67574j;

    /* renamed from: org.mp4parser.aspectj.a.b.f$a */
    /* loaded from: classes5-dex2jar.jar:org/mp4parser/aspectj/a/b/f$a.class */
    public interface AbstractC20993a {
        /* renamed from: a */
        String mo153a(int i);

        /* renamed from: a */
        void mo152a(int i, String str);
    }

    /* renamed from: org.mp4parser.aspectj.a.b.f$b */
    /* loaded from: classes5-dex2jar.jar:org/mp4parser/aspectj/a/b/f$b.class */
    public static final class C20994b implements AbstractC20993a {

        /* renamed from: a */
        private SoftReference f67575a;

        public C20994b() {
            m151b();
        }

        /* renamed from: a */
        private String[] m154a() {
            return (String[]) this.f67575a.get();
        }

        /* renamed from: b */
        private String[] m151b() {
            String[] strArr = new String[3];
            this.f67575a = new SoftReference(strArr);
            return strArr;
        }

        @Override // org.mp4parser.aspectj.p593a.p595b.AbstractC20992f.AbstractC20993a
        /* renamed from: a */
        public final String mo153a(int i) {
            String[] m154a = m154a();
            if (m154a == null) {
                return null;
            }
            return m154a[i];
        }

        @Override // org.mp4parser.aspectj.p593a.p595b.AbstractC20992f.AbstractC20993a
        /* renamed from: a */
        public final void mo152a(int i, String str) {
            String[] m154a = m154a();
            String[] strArr = m154a;
            if (m154a == null) {
                strArr = m151b();
            }
            strArr[i] = str;
        }
    }

    public AbstractC20992f(int i, String str, Class cls) {
        this.f67569e = -1;
        this.f67574j = null;
        this.f67569e = i;
        this.f67570f = str;
        this.f67572h = cls;
    }

    public AbstractC20992f(String str) {
        this.f67569e = -1;
        this.f67574j = null;
        this.f67568b = str;
    }

    /* renamed from: b */
    private ClassLoader m158b() {
        if (this.f67574j == null) {
            this.f67574j = getClass().getClassLoader();
        }
        return this.f67574j;
    }

    /* renamed from: a */
    public final Class m161a() {
        if (this.f67572h == null) {
            this.f67572h = m157b(2);
        }
        return this.f67572h;
    }

    /* renamed from: a */
    public final String m160a(int i) {
        int i2 = 0;
        int indexOf = this.f67568b.indexOf(45);
        for (int i3 = i; i3 > 0; i3--) {
            i2 = indexOf + 1;
            indexOf = this.f67568b.indexOf(45, i2);
        }
        int i4 = indexOf;
        if (indexOf == -1) {
            i4 = this.f67568b.length();
        }
        return this.f67568b.substring(i2, i4);
    }

    /* renamed from: a */
    protected abstract String mo159a(C20996h c20996h);

    /* renamed from: b */
    public final Class m157b(int i) {
        return C20987b.m166a(m160a(i), m158b());
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m156b(org.mp4parser.aspectj.p593a.p595b.C20996h r5) {
        /*
            r4 = this;
            boolean r0 = org.mp4parser.aspectj.p593a.p595b.AbstractC20992f.f67565a
            if (r0 == 0) goto L35
            r0 = r4
            org.mp4parser.aspectj.a.b.f$a r0 = r0.f67573i
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L27
            org.mp4parser.aspectj.a.b.f$b r0 = new org.mp4parser.aspectj.a.b.f$b     // Catch: java.lang.Throwable -> L1f
            r6 = r0
            r0 = r6
            r0.<init>()     // Catch: java.lang.Throwable -> L1f
            r0 = r4
            r1 = r6
            r0.f67573i = r1     // Catch: java.lang.Throwable -> L1f
            goto L35
        L1f:
            r6 = move-exception
            r0 = 0
            org.mp4parser.aspectj.p593a.p595b.AbstractC20992f.f67565a = r0
            goto L35
        L27:
            r0 = r6
            r1 = r5
            int r1 = r1.f67590i
            java.lang.String r0 = r0.mo153a(r1)
            r6 = r0
            goto L37
        L35:
            r0 = 0
            r6 = r0
        L37:
            r0 = r6
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L43
            r0 = r4
            r1 = r5
            java.lang.String r0 = r0.mo159a(r1)
            r7 = r0
        L43:
            boolean r0 = org.mp4parser.aspectj.p593a.p595b.AbstractC20992f.f67565a
            if (r0 == 0) goto L57
            r0 = r4
            org.mp4parser.aspectj.a.b.f$a r0 = r0.f67573i
            r1 = r5
            int r1 = r1.f67590i
            r2 = r7
            r0.mo152a(r1, r2)
        L57:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mp4parser.aspectj.p593a.p595b.AbstractC20992f.m156b(org.mp4parser.aspectj.a.b.h):java.lang.String");
    }

    /* renamed from: c */
    public final Class[] m155c(int i) {
        StringTokenizer stringTokenizer = new StringTokenizer(m160a(i), ":");
        int countTokens = stringTokenizer.countTokens();
        Class[] clsArr = new Class[countTokens];
        for (int i2 = 0; i2 < countTokens; i2++) {
            clsArr[i2] = C20987b.m166a(stringTokenizer.nextToken(), m158b());
        }
        return clsArr;
    }

    public final String toString() {
        return m156b(C20996h.f67580k);
    }
}
