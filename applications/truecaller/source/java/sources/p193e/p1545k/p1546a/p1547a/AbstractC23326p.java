package p193e.p1545k.p1546a.p1547a;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Collections;
import java.util.Set;
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
/* renamed from: e.k.a.a.p */
/* loaded from: classes2-dex2jar.jar:e/k/a/a/p.class */
public @interface AbstractC23326p {

    /* renamed from: e.k.a.a.p$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/a/p$a.class */
    public static class C23327a implements Object<AbstractC23326p> {

        /* renamed from: f */
        public static final C23327a f64514f = new C23327a(Collections.emptySet(), false, false, false, true);

        /* renamed from: a */
        public final Set<String> f64515a;

        /* renamed from: b */
        public final boolean f64516b;

        /* renamed from: c */
        public final boolean f64517c;

        /* renamed from: d */
        public final boolean f64518d;

        /* renamed from: e */
        public final boolean f64519e;

        public C23327a(Set<String> set, boolean z, boolean z2, boolean z3, boolean z4) {
            if (set == null) {
                this.f64515a = Collections.emptySet();
            } else {
                this.f64515a = set;
            }
            this.f64516b = z;
            this.f64517c = z2;
            this.f64518d = z3;
            this.f64519e = z4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x004f, code lost:
            if (r3.size() == 0) goto L14;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static boolean m7279a(java.util.Set<java.lang.String> r3, boolean r4, boolean r5, boolean r6, boolean r7) {
            /*
                e.k.a.a.p$a r0 = p193e.p1545k.p1546a.p1547a.AbstractC23326p.C23327a.f64514f
                r8 = r0
                r0 = r8
                boolean r0 = r0.f64516b
                r9 = r0
                r0 = 0
                r10 = r0
                r0 = r10
                r11 = r0
                r0 = r4
                r1 = r9
                if (r0 != r1) goto L55
                r0 = r10
                r11 = r0
                r0 = r5
                r1 = r8
                boolean r1 = r1.f64517c
                if (r0 != r1) goto L55
                r0 = r10
                r11 = r0
                r0 = r6
                r1 = r8
                boolean r1 = r1.f64518d
                if (r0 != r1) goto L55
                r0 = r10
                r11 = r0
                r0 = r7
                r1 = r8
                boolean r1 = r1.f64519e
                if (r0 != r1) goto L55
                r0 = r3
                if (r0 == 0) goto L52
                r0 = r10
                r11 = r0
                r0 = r3
                int r0 = r0.size()
                if (r0 != 0) goto L55
            L52:
                r0 = 1
                r11 = r0
            L55:
                r0 = r11
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1547a.AbstractC23326p.C23327a.m7279a(java.util.Set, boolean, boolean, boolean, boolean):boolean");
        }

        /* renamed from: b */
        public static boolean m7278b(C23327a c23327a, C23327a c23327a2) {
            return c23327a.f64516b == c23327a2.f64516b && c23327a.f64519e == c23327a2.f64519e && c23327a.f64517c == c23327a2.f64517c && c23327a.f64518d == c23327a2.f64518d && c23327a.f64515a.equals(c23327a2.f64515a);
        }

        /* renamed from: c */
        public static C23327a m7277c(Set<String> set, boolean z, boolean z2, boolean z3, boolean z4) {
            return m7279a(set, z, z2, z3, z4) ? f64514f : new C23327a(set, z, z2, z3, z4);
        }

        /* renamed from: d */
        public Set<String> m7276d() {
            return this.f64518d ? Collections.emptySet() : this.f64515a;
        }

        /* renamed from: e */
        public Set<String> m7275e() {
            return this.f64517c ? Collections.emptySet() : this.f64515a;
        }

        @Override // java.lang.Object
        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (obj == null) {
                return false;
            }
            if (obj.getClass() != getClass() || !m7278b(this, (C23327a) obj)) {
                z = false;
            }
            return z;
        }

        @Override // java.lang.Object
        public int hashCode() {
            int size = this.f64515a.size();
            int i = this.f64516b ? 1 : -3;
            int i2 = this.f64517c ? 3 : -7;
            return size + i + i2 + (this.f64518d ? 7 : -11) + (this.f64519e ? 11 : -13);
        }

        public Object readResolve() {
            return m7279a(this.f64515a, this.f64516b, this.f64517c, this.f64518d, this.f64519e) ? f64514f : this;
        }

        @Override // java.lang.Object
        public String toString() {
            return String.format("JsonIgnoreProperties.Value(ignored=%s,ignoreUnknown=%s,allowGetters=%s,allowSetters=%s,merge=%s)", this.f64515a, Boolean.valueOf(this.f64516b), Boolean.valueOf(this.f64517c), Boolean.valueOf(this.f64518d), Boolean.valueOf(this.f64519e));
        }
    }

    boolean allowGetters() default false;

    boolean allowSetters() default false;

    boolean ignoreUnknown() default false;

    String[] value() default {};
}
