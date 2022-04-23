package p573f.p595z;

import java.util.Iterator;
import p573f.p587u.C10016c;
import p573f.p590w.p592c.C10057o;
/* renamed from: f.z.a */
/* loaded from: classes2-dex2jar.jar:f/z/a.class */
public class C10077a implements Iterable<Integer> {

    /* renamed from: d */
    public static final C10078a f37200d = new C10078a(null);

    /* renamed from: a */
    public final int f37201a;

    /* renamed from: b */
    public final int f37202b;

    /* renamed from: c */
    public final int f37203c;

    /* renamed from: f.z.a$a */
    /* loaded from: classes2-dex2jar.jar:f/z/a$a.class */
    public static final class C10078a {
        public C10078a() {
        }

        public /* synthetic */ C10078a(C10057o oVar) {
            this();
        }

        /* renamed from: a */
        public final C10077a m1577a(int i, int i2, int i3) {
            return new C10077a(i, i2, i3);
        }
    }

    public C10077a(int i, int i2, int i3) {
        if (i3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        } else if (i3 != Integer.MIN_VALUE) {
            this.f37201a = i;
            this.f37202b = C10016c.m1667b(i, i2, i3);
            this.f37203c = i3;
        } else {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
    }

    /* renamed from: a */
    public final int m1578a() {
        return this.f37203c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        if (r3.f37203c == r0.f37203c) goto L_0x0040;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof p573f.p595z.C10077a
            if (r0 == 0) goto L_0x0045
            r0 = r3
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0018
            r0 = r4
            f.z.a r0 = (p573f.p595z.C10077a) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0040
        L_0x0018:
            r0 = r3
            int r0 = r0.f37201a
            r5 = r0
            r0 = r4
            f.z.a r0 = (p573f.p595z.C10077a) r0
            r4 = r0
            r0 = r5
            r1 = r4
            int r1 = r1.f37201a
            if (r0 != r1) goto L_0x0045
            r0 = r3
            int r0 = r0.f37202b
            r1 = r4
            int r1 = r1.f37202b
            if (r0 != r1) goto L_0x0045
            r0 = r3
            int r0 = r0.f37203c
            r1 = r4
            int r1 = r1.f37203c
            if (r0 != r1) goto L_0x0045
        L_0x0040:
            r0 = 1
            r6 = r0
            goto L_0x0047
        L_0x0045:
            r0 = 0
            r6 = r0
        L_0x0047:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p573f.p595z.C10077a.equals(java.lang.Object):boolean");
    }

    public final int getFirst() {
        return this.f37201a;
    }

    public final int getLast() {
        return this.f37202b;
    }

    public int hashCode() {
        return isEmpty() ? -1 : (((this.f37201a * 31) + this.f37202b) * 31) + this.f37203c;
    }

    public boolean isEmpty() {
        boolean z = true;
        if (this.f37203c <= 0 ? this.f37201a >= this.f37202b : this.f37201a <= this.f37202b) {
            z = false;
        }
        return z;
    }

    @Override // java.lang.Iterable
    /* renamed from: iterator */
    public Iterator<Integer> iterator2() {
        return new C10079b(this.f37201a, this.f37202b, this.f37203c);
    }

    public String toString() {
        int i;
        StringBuilder sb;
        if (this.f37203c > 0) {
            sb = new StringBuilder();
            sb.append(this.f37201a);
            sb.append("..");
            sb.append(this.f37202b);
            sb.append(" step ");
            i = this.f37203c;
        } else {
            sb = new StringBuilder();
            sb.append(this.f37201a);
            sb.append(" downTo ");
            sb.append(this.f37202b);
            sb.append(" step ");
            i = -this.f37203c;
        }
        sb.append(i);
        return sb.toString();
    }
}
