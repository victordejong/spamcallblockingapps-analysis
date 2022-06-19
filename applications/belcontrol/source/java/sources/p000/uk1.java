package p000;
/* renamed from: uk1 */
/* loaded from: classes3-dex2jar.jar:uk1.class */
public class uk1 implements Iterable<Integer> {

    /* renamed from: d */
    public static final C1689a f8326d = new C1689a(null);

    /* renamed from: a */
    public final int f8327a;

    /* renamed from: b */
    public final int f8328b;

    /* renamed from: c */
    public final int f8329c;

    /* renamed from: uk1$a */
    /* loaded from: classes3-dex2jar.jar:uk1$a.class */
    public static final class C1689a {
        public C1689a() {
        }

        public /* synthetic */ C1689a(ok1 ok1Var) {
            this();
        }

        /* renamed from: a */
        public final uk1 m388a(int i, int i2, int i3) {
            return new uk1(i, i2, i3);
        }
    }

    public uk1(int i, int i2, int i3) {
        if (i3 != 0) {
            if (i3 == Integer.MIN_VALUE) {
                throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
            }
            this.f8327a = i;
            this.f8328b = gk1.m1657b(i, i2, i3);
            this.f8329c = i3;
            return;
        }
        throw new IllegalArgumentException("Step must be non-zero.");
    }

    /* renamed from: a */
    public final int m392a() {
        return this.f8327a;
    }

    /* renamed from: b */
    public final int m391b() {
        return this.f8328b;
    }

    /* renamed from: c */
    public final int m390c() {
        return this.f8329c;
    }

    /* renamed from: d */
    public fk1 iterator() {
        return new vk1(this.f8327a, this.f8328b, this.f8329c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        if (r3.f8329c == r0.f8329c) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof p000.uk1
            if (r0 == 0) goto L45
            r0 = r3
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L18
            r0 = r4
            uk1 r0 = (p000.uk1) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L40
        L18:
            r0 = r3
            int r0 = r0.f8327a
            r5 = r0
            r0 = r4
            uk1 r0 = (p000.uk1) r0
            r4 = r0
            r0 = r5
            r1 = r4
            int r1 = r1.f8327a
            if (r0 != r1) goto L45
            r0 = r3
            int r0 = r0.f8328b
            r1 = r4
            int r1 = r1.f8328b
            if (r0 != r1) goto L45
            r0 = r3
            int r0 = r0.f8329c
            r1 = r4
            int r1 = r1.f8329c
            if (r0 != r1) goto L45
        L40:
            r0 = 1
            r6 = r0
            goto L47
        L45:
            r0 = 0
            r6 = r0
        L47:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.uk1.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return isEmpty() ? -1 : (((this.f8327a * 31) + this.f8328b) * 31) + this.f8329c;
    }

    public boolean isEmpty() {
        boolean z = true;
        if (this.f8329c <= 0 ? this.f8327a >= this.f8328b : this.f8327a <= this.f8328b) {
            z = false;
        }
        return z;
    }

    public String toString() {
        int i;
        StringBuilder sb;
        if (this.f8329c > 0) {
            sb = new StringBuilder();
            sb.append(this.f8327a);
            sb.append("..");
            sb.append(this.f8328b);
            sb.append(" step ");
            i = this.f8329c;
        } else {
            sb = new StringBuilder();
            sb.append(this.f8327a);
            sb.append(" downTo ");
            sb.append(this.f8328b);
            sb.append(" step ");
            i = -this.f8329c;
        }
        sb.append(i);
        return sb.toString();
    }
}
