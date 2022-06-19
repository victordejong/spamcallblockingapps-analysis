package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import p193e.p1545k.p1546a.p1556c.EnumC23942p;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
import p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23633a;
import p193e.p1545k.p1546a.p1556c.p1565h0.C23697c;
import p193e.p1545k.p1546a.p1556c.p1574n0.C23914g;
/* renamed from: e.k.a.c.g0.w */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/w.class */
public class C23686w extends AbstractC23633a {

    /* renamed from: a */
    public final AbstractC23687a f65669a;

    /* renamed from: b */
    public final boolean f65670b;

    /* renamed from: c */
    public final String f65671c;

    /* renamed from: d */
    public final String f65672d;

    /* renamed from: e */
    public final String f65673e;

    /* renamed from: e.k.a.c.g0.w$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/w$a.class */
    public interface AbstractC23687a {
        /* renamed from: a */
        boolean m6324a(char c, String str, int i);
    }

    /* renamed from: e.k.a.c.g0.w$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/w$b.class */
    public static class C23688b extends AbstractC23633a.AbstractC23634a implements Serializable {
    }

    /* renamed from: e.k.a.c.g0.w$c */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/w$c.class */
    public static class C23689c extends C23686w {

        /* renamed from: f */
        public final Set<String> f65674f = new HashSet();

        public C23689c(AbstractC23458k<?> abstractC23458k, C23638c c23638c) {
            super(abstractC23458k, c23638c, null, "get", "is", null);
            int i;
            Class<?> cls = c23638c.f65538b;
            RuntimeException runtimeException = C23697c.f65724e;
            if (runtimeException == null) {
                C23697c c23697c = C23697c.f65723d;
                Object[] m6245a = c23697c.m6245a(cls);
                int length = m6245a.length;
                String[] strArr = new String[length];
                int i2 = 0;
                while (true) {
                    if (i2 < m6245a.length) {
                        try {
                            strArr[i2] = (String) c23697c.f65726b.invoke(m6245a[i2], new Object[0]);
                            i2++;
                        } catch (Exception e) {
                            throw new IllegalArgumentException(String.format("Failed to access name of field #%d (of %d) of Record type %s", Integer.valueOf(i2), Integer.valueOf(m6245a.length), C23914g.m5776E(cls)), e);
                        }
                    }
                }
                for (i = 0; i < length; i++) {
                    this.f65674f.add(strArr[i]);
                }
                return;
            }
            throw runtimeException;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1564g0.C23686w, p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23633a
        /* renamed from: c */
        public String mo6323c(C23664j c23664j, String str) {
            return this.f65674f.contains(str) ? str : C23686w.super.mo6323c(c23664j, str);
        }
    }

    public C23686w(AbstractC23458k<?> abstractC23458k, C23638c c23638c, String str, String str2, String str3, AbstractC23687a abstractC23687a) {
        this.f65670b = abstractC23458k.m6859o(EnumC23942p.USE_STD_BEAN_NAMING);
        this.f65673e = str;
        this.f65671c = str2;
        this.f65672d = str3;
        this.f65669a = abstractC23687a;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23633a
    /* renamed from: a */
    public String mo6328a(C23664j c23664j, String str) {
        if (this.f65672d != null) {
            Class<?> mo6378d = c23664j.mo6378d();
            if ((mo6378d != Boolean.class && mo6378d != Boolean.TYPE) || !str.startsWith(this.f65672d)) {
                return null;
            }
            return this.f65670b ? m6325e(str, 2) : m6326d(str, 2);
        }
        return null;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23633a
    /* renamed from: b */
    public String mo6327b(C23664j c23664j, String str) {
        String str2 = this.f65673e;
        if (str2 == null || !str.startsWith(str2)) {
            return null;
        }
        return this.f65670b ? m6325e(str, this.f65673e.length()) : m6326d(str, this.f65673e.length());
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0062, code lost:
        if (r0.startsWith("org.springframework.cglib") != false) goto L18;
     */
    @Override // p193e.p1545k.p1546a.p1556c.p1564g0.AbstractC23633a
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo6323c(p193e.p1545k.p1546a.p1556c.p1564g0.C23664j r5, java.lang.String r6) {
        /*
            r4 = this;
            r0 = r4
            java.lang.String r0 = r0.f65671c
            r7 = r0
            r0 = r7
            if (r0 == 0) goto Laf
            r0 = r6
            r1 = r7
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto Laf
            java.lang.String r0 = "getCallbacks"
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L6f
            r0 = r5
            java.lang.Class r0 = r0.mo6378d()
            r5 = r0
            r0 = r5
            boolean r0 = r0.isArray()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r8
            if (r0 == 0) goto L68
            r0 = r5
            java.lang.Class r0 = r0.getComponentType()
            java.lang.String r0 = r0.getName()
            r5 = r0
            r0 = r9
            r10 = r0
            r0 = r5
            java.lang.String r1 = ".cglib"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L68
            r0 = r5
            java.lang.String r1 = "net.sf.cglib"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L65
            r0 = r5
            java.lang.String r1 = "org.hibernate.repackage.cglib"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L65
            r0 = r9
            r10 = r0
            r0 = r5
            java.lang.String r1 = "org.springframework.cglib"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L68
        L65:
            r0 = 1
            r10 = r0
        L68:
            r0 = r10
            if (r0 == 0) goto L89
            r0 = 0
            return r0
        L6f:
            java.lang.String r0 = "getMetaClass"
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L89
            r0 = r5
            java.lang.Class r0 = r0.mo6378d()
            java.lang.String r0 = r0.getName()
            java.lang.String r1 = "groovy.lang"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L89
            r0 = 0
            return r0
        L89:
            r0 = r4
            boolean r0 = r0.f65670b
            if (r0 == 0) goto La0
            r0 = r4
            r1 = r6
            r2 = r4
            java.lang.String r2 = r2.f65671c
            int r2 = r2.length()
            java.lang.String r0 = r0.m6325e(r1, r2)
            r5 = r0
            goto Lad
        La0:
            r0 = r4
            r1 = r6
            r2 = r4
            java.lang.String r2 = r2.f65671c
            int r2 = r2.length()
            java.lang.String r0 = r0.m6326d(r1, r2)
            r5 = r0
        Lad:
            r0 = r5
            return r0
        Laf:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1556c.p1564g0.C23686w.mo6323c(e.k.a.c.g0.j, java.lang.String):java.lang.String");
    }

    /* renamed from: d */
    public String m6326d(String str, int i) {
        int length = str.length();
        if (length == i) {
            return null;
        }
        char charAt = str.charAt(i);
        AbstractC23687a abstractC23687a = this.f65669a;
        if (abstractC23687a != null && !abstractC23687a.m6324a(charAt, str, i)) {
            return null;
        }
        char lowerCase = Character.toLowerCase(charAt);
        if (charAt == lowerCase) {
            return str.substring(i);
        }
        StringBuilder sb = new StringBuilder(length - i);
        sb.append(lowerCase);
        while (true) {
            i++;
            if (i >= length) {
                break;
            }
            char charAt2 = str.charAt(i);
            char lowerCase2 = Character.toLowerCase(charAt2);
            if (charAt2 == lowerCase2) {
                sb.append((CharSequence) str, i, length);
                break;
            }
            sb.append(lowerCase2);
        }
        return sb.toString();
    }

    /* renamed from: e */
    public String m6325e(String str, int i) {
        int length = str.length();
        if (length == i) {
            return null;
        }
        char charAt = str.charAt(i);
        AbstractC23687a abstractC23687a = this.f65669a;
        if (abstractC23687a != null && !abstractC23687a.m6324a(charAt, str, i)) {
            return null;
        }
        char lowerCase = Character.toLowerCase(charAt);
        if (charAt == lowerCase) {
            return str.substring(i);
        }
        int i2 = i + 1;
        if (i2 < length && Character.isUpperCase(str.charAt(i2))) {
            return str.substring(i);
        }
        StringBuilder sb = new StringBuilder(length - i);
        sb.append(lowerCase);
        sb.append((CharSequence) str, i2, length);
        return sb.toString();
    }
}
