package kotlin.reflect.jvm.internal.impl.load.java.p558a;

import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19017an;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19192j;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19398g;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19403l;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19405n;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19407p;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.a.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/g.class */
public interface AbstractC19356g {

    /* renamed from: a */
    public static final AbstractC19356g f65259a = new AbstractC19356g() { // from class: kotlin.reflect.jvm.internal.impl.load.java.a.g.1
        /* renamed from: a */
        private static /* synthetic */ void m2274a(int i) {
            Object[] objArr = new Object[3];
            switch (i) {
                case 1:
                    objArr[0] = "member";
                    break;
                case 2:
                case 4:
                case 6:
                case 8:
                    objArr[0] = "descriptor";
                    break;
                case 3:
                    objArr[0] = "element";
                    break;
                case 5:
                    objArr[0] = "field";
                    break;
                case 7:
                    objArr[0] = "javaClass";
                    break;
                default:
                    objArr[0] = "fqName";
                    break;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1";
            switch (i) {
                case 1:
                case 2:
                    objArr[2] = "recordMethod";
                    break;
                case 3:
                case 4:
                    objArr[2] = "recordConstructor";
                    break;
                case 5:
                case 6:
                    objArr[2] = "recordField";
                    break;
                case 7:
                case 8:
                    objArr[2] = "recordClass";
                    break;
                default:
                    objArr[2] = "getClassResolvedFromSource";
                    break;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.p558a.AbstractC19356g
        /* renamed from: a */
        public final AbstractC19070d mo2273a(C18961b c18961b) {
            if (c18961b == null) {
                m2274a(0);
                return null;
            }
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.p558a.AbstractC19356g
        /* renamed from: a */
        public final void mo2272a(AbstractC19398g abstractC19398g) {
            if (abstractC19398g == null) {
                m2274a(7);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.p558a.AbstractC19356g
        /* renamed from: a */
        public final void mo2271a(AbstractC19403l abstractC19403l, AbstractC19192j abstractC19192j) {
            if (abstractC19403l == null) {
                m2274a(3);
            }
            if (abstractC19192j == null) {
                m2274a(4);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.p558a.AbstractC19356g
        /* renamed from: a */
        public final void mo2270a(AbstractC19405n abstractC19405n, AbstractC19017an abstractC19017an) {
            if (abstractC19405n == null) {
                m2274a(5);
            }
            if (abstractC19017an == null) {
                m2274a(6);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.p558a.AbstractC19356g
        /* renamed from: a */
        public final void mo2269a(AbstractC19407p abstractC19407p, AbstractC19025as abstractC19025as) {
            if (abstractC19407p == null) {
                m2274a(1);
            }
            if (abstractC19025as == null) {
                m2274a(2);
            }
        }
    };

    /* renamed from: a */
    AbstractC19070d mo2273a(C18961b c18961b);

    /* renamed from: a */
    void mo2272a(AbstractC19398g abstractC19398g);

    /* renamed from: a */
    void mo2271a(AbstractC19403l abstractC19403l, AbstractC19192j abstractC19192j);

    /* renamed from: a */
    void mo2270a(AbstractC19405n abstractC19405n, AbstractC19017an abstractC19017an);

    /* renamed from: a */
    void mo2269a(AbstractC19407p abstractC19407p, AbstractC19025as abstractC19025as);
}
