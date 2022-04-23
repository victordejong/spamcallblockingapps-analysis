package org.mp4parser.aspectj.a.b;

import java.lang.ref.SoftReference;
import java.util.StringTokenizer;
import org.mp4parser.aspectj.lang.c;
/* loaded from: classes5-dex2jar.jar:org/mp4parser/aspectj/a/b/f.class */
abstract class f implements c {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f39355a = true;
    static String[] k = new String[0];
    static Class[] l = new Class[0];

    /* renamed from: b  reason: collision with root package name */
    private String f39356b;
    int e;
    String f;
    String g;
    Class h;
    a i;
    ClassLoader j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:org/mp4parser/aspectj/a/b/f$a.class */
    public interface a {
        String a(int i);

        void a(int i, String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:org/mp4parser/aspectj/a/b/f$b.class */
    public static final class b implements a {

        /* renamed from: a  reason: collision with root package name */
        private SoftReference f39357a;

        public b() {
            b();
        }

        private String[] a() {
            return (String[]) this.f39357a.get();
        }

        private String[] b() {
            String[] strArr = new String[3];
            this.f39357a = new SoftReference(strArr);
            return strArr;
        }

        @Override // org.mp4parser.aspectj.a.b.f.a
        public final String a(int i) {
            String[] a2 = a();
            if (a2 == null) {
                return null;
            }
            return a2[i];
        }

        @Override // org.mp4parser.aspectj.a.b.f.a
        public final void a(int i, String str) {
            String[] a2 = a();
            String[] strArr = a2;
            if (a2 == null) {
                strArr = b();
            }
            strArr[i] = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(int i, String str, Class cls) {
        this.e = -1;
        this.j = null;
        this.e = i;
        this.f = str;
        this.h = cls;
    }

    public f(String str) {
        this.e = -1;
        this.j = null;
        this.f39356b = str;
    }

    private ClassLoader b() {
        if (this.j == null) {
            this.j = getClass().getClassLoader();
        }
        return this.j;
    }

    public final Class a() {
        if (this.h == null) {
            this.h = b(2);
        }
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a(int i) {
        int indexOf = this.f39356b.indexOf(45);
        int i2 = 0;
        for (int i3 = i; i3 > 0; i3--) {
            i2 = indexOf + 1;
            indexOf = this.f39356b.indexOf(45, i2);
        }
        int i4 = indexOf;
        if (indexOf == -1) {
            i4 = this.f39356b.length();
        }
        return this.f39356b.substring(i2, i4);
    }

    protected abstract String a(h hVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Class b(int i) {
        return org.mp4parser.aspectj.a.b.b.a(a(i), b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String b(org.mp4parser.aspectj.a.b.h r5) {
        /*
            r4 = this;
            boolean r0 = org.mp4parser.aspectj.a.b.f.f39355a
            if (r0 == 0) goto L_0x0035
            r0 = r4
            org.mp4parser.aspectj.a.b.f$a r0 = r0.i
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0027
            org.mp4parser.aspectj.a.b.f$b r0 = new org.mp4parser.aspectj.a.b.f$b     // Catch: all -> 0x001f
            r6 = r0
            r0 = r6
            r0.<init>()     // Catch: all -> 0x001f
            r0 = r4
            r1 = r6
            r0.i = r1     // Catch: all -> 0x001f
            goto L_0x0035
        L_0x001f:
            r6 = move-exception
            r0 = 0
            org.mp4parser.aspectj.a.b.f.f39355a = r0
            goto L_0x0035
        L_0x0027:
            r0 = r6
            r1 = r5
            int r1 = r1.i
            java.lang.String r0 = r0.a(r1)
            r6 = r0
            goto L_0x0037
        L_0x0035:
            r0 = 0
            r6 = r0
        L_0x0037:
            r0 = r6
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0043
            r0 = r4
            r1 = r5
            java.lang.String r0 = r0.a(r1)
            r7 = r0
        L_0x0043:
            boolean r0 = org.mp4parser.aspectj.a.b.f.f39355a
            if (r0 == 0) goto L_0x0057
            r0 = r4
            org.mp4parser.aspectj.a.b.f$a r0 = r0.i
            r1 = r5
            int r1 = r1.i
            r2 = r7
            r0.a(r1, r2)
        L_0x0057:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mp4parser.aspectj.a.b.f.b(org.mp4parser.aspectj.a.b.h):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Class[] c(int i) {
        StringTokenizer stringTokenizer = new StringTokenizer(a(i), ":");
        int countTokens = stringTokenizer.countTokens();
        Class[] clsArr = new Class[countTokens];
        for (int i2 = 0; i2 < countTokens; i2++) {
            clsArr[i2] = org.mp4parser.aspectj.a.b.b.a(stringTokenizer.nextToken(), b());
        }
        return clsArr;
    }

    public final String toString() {
        return b(h.k);
    }
}
