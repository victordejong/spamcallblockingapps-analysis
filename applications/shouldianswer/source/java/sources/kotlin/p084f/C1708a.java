package kotlin.p084f;

import kotlin.p073a.AbstractC1613t;
import kotlin.p079d.C1659c;
import kotlin.p081e.p083b.C1691e;
/* renamed from: kotlin.f.a */
/* loaded from: classes-dex2jar.jar:kotlin/f/a.class */
public class C1708a implements Iterable<Integer> {

    /* renamed from: a */
    public static final C1709a f4395a = new C1709a(null);

    /* renamed from: b */
    private final int f4396b;

    /* renamed from: c */
    private final int f4397c;

    /* renamed from: d */
    private final int f4398d;

    /* renamed from: kotlin.f.a$a */
    /* loaded from: classes-dex2jar.jar:kotlin/f/a$a.class */
    public static final class C1709a {
        private C1709a() {
        }

        public /* synthetic */ C1709a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final C1708a m3088a(int i, int i2, int i3) {
            return new C1708a(i, i2, i3);
        }
    }

    public C1708a(int i, int i2, int i3) {
        if (i3 != 0) {
            if (i3 == Integer.MIN_VALUE) {
                throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
            }
            this.f4396b = i;
            this.f4397c = C1659c.m3134a(i, i2, i3);
            this.f4398d = i3;
            return;
        }
        throw new IllegalArgumentException("Step must be non-zero.");
    }

    /* renamed from: a */
    public final int m3092a() {
        return this.f4396b;
    }

    /* renamed from: b */
    public final int m3091b() {
        return this.f4397c;
    }

    /* renamed from: c */
    public final int m3090c() {
        return this.f4398d;
    }

    /* renamed from: d */
    public AbstractC1613t iterator() {
        return new C1710b(this.f4396b, this.f4397c, this.f4398d);
    }

    /* renamed from: e */
    public boolean mo3086e() {
        boolean z = true;
        if (this.f4398d <= 0 ? this.f4396b >= this.f4397c : this.f4396b <= this.f4397c) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        if (r3.f4398d == r0.f4398d) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof kotlin.p084f.C1708a
            if (r0 == 0) goto L45
            r0 = r3
            boolean r0 = r0.mo3086e()
            if (r0 == 0) goto L18
            r0 = r4
            kotlin.f.a r0 = (kotlin.p084f.C1708a) r0
            boolean r0 = r0.mo3086e()
            if (r0 != 0) goto L40
        L18:
            r0 = r3
            int r0 = r0.f4396b
            r5 = r0
            r0 = r4
            kotlin.f.a r0 = (kotlin.p084f.C1708a) r0
            r4 = r0
            r0 = r5
            r1 = r4
            int r1 = r1.f4396b
            if (r0 != r1) goto L45
            r0 = r3
            int r0 = r0.f4397c
            r1 = r4
            int r1 = r1.f4397c
            if (r0 != r1) goto L45
            r0 = r3
            int r0 = r0.f4398d
            r1 = r4
            int r1 = r1.f4398d
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
        throw new UnsupportedOperationException("Method not decompiled: kotlin.p084f.C1708a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return mo3086e() ? -1 : (((this.f4396b * 31) + this.f4397c) * 31) + this.f4398d;
    }

    public String toString() {
        int i;
        StringBuilder sb;
        if (this.f4398d > 0) {
            sb = new StringBuilder();
            sb.append(this.f4396b);
            sb.append("..");
            sb.append(this.f4397c);
            sb.append(" step ");
            i = this.f4398d;
        } else {
            sb = new StringBuilder();
            sb.append(this.f4396b);
            sb.append(" downTo ");
            sb.append(this.f4397c);
            sb.append(" step ");
            i = -this.f4398d;
        }
        sb.append(i);
        return sb.toString();
    }
}
