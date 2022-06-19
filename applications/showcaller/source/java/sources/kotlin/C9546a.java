package kotlin;

import kotlin.p338c.p339a.C9549a;
import kotlin.p338c.p339a.C9550b;
/* renamed from: kotlin.a */
/* loaded from: classes2-dex2jar.jar:kotlin/a.class */
public final class C9546a implements Comparable<C9546a> {

    /* renamed from: d */
    public static final C9547a f40479d = new C9547a(null);

    /* renamed from: e */
    public static final C9546a f40480e = C9548b.m377a();

    /* renamed from: f */
    private final int f40481f;

    /* renamed from: g */
    private final int f40482g;

    /* renamed from: h */
    private final int f40483h;

    /* renamed from: i */
    private final int f40484i;

    /* renamed from: kotlin.a$a */
    /* loaded from: classes2-dex2jar.jar:kotlin/a$a.class */
    public static final class C9547a {
        private C9547a() {
        }

        public /* synthetic */ C9547a(C9549a c9549a) {
            this();
        }
    }

    public C9546a(int i, int i2, int i3) {
        this.f40481f = i;
        this.f40482g = i2;
        this.f40483h = i3;
        this.f40484i = m378d(i, i2, i3);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0069  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int m378d(int r5, int r6, int r7) {
        /*
            r4 = this;
            r0 = 1
            r8 = r0
            r0 = r5
            if (r0 < 0) goto L14
            r0 = r5
            r1 = 256(0x100, float:3.59E-43)
            if (r0 >= r1) goto L14
            r0 = 1
            r9 = r0
            goto L17
        L14:
            r0 = 0
            r9 = r0
        L17:
            r0 = r9
            if (r0 == 0) goto L55
            r0 = r6
            if (r0 < 0) goto L2d
            r0 = r6
            r1 = 256(0x100, float:3.59E-43)
            if (r0 >= r1) goto L2d
            r0 = 1
            r9 = r0
            goto L30
        L2d:
            r0 = 0
            r9 = r0
        L30:
            r0 = r9
            if (r0 == 0) goto L55
            r0 = r7
            if (r0 < 0) goto L46
            r0 = r7
            r1 = 256(0x100, float:3.59E-43)
            if (r0 >= r1) goto L46
            r0 = 1
            r9 = r0
            goto L49
        L46:
            r0 = 0
            r9 = r0
        L49:
            r0 = r9
            if (r0 == 0) goto L55
            r0 = r8
            r9 = r0
            goto L58
        L55:
            r0 = 0
            r9 = r0
        L58:
            r0 = r9
            if (r0 == 0) goto L69
            r0 = r5
            r1 = 16
            int r0 = r0 << r1
            r1 = r6
            r2 = 8
            int r1 = r1 << r2
            int r0 = r0 + r1
            r1 = r7
            int r0 = r0 + r1
            return r0
        L69:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "Version components are out of range: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = 46
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = 46
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r2 = r10
            java.lang.String r2 = r2.toString()
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.C9546a.m378d(int, int, int):int");
    }

    /* renamed from: a */
    public int compareTo(C9546a c9546a) {
        C9550b.m375b(c9546a, "other");
        return this.f40484i - c9546a.f40484i;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        C9546a c9546a = obj instanceof C9546a ? (C9546a) obj : null;
        if (c9546a == null) {
            return false;
        }
        if (this.f40484i != c9546a.f40484i) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f40484i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f40481f);
        sb.append('.');
        sb.append(this.f40482g);
        sb.append('.');
        sb.append(this.f40483h);
        return sb.toString();
    }
}
