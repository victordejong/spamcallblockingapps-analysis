package kotlin.reflect.jvm.internal.impl.load.java.a;

import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.descriptors.an;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.j;
import kotlin.reflect.jvm.internal.impl.load.java.d.l;
import kotlin.reflect.jvm.internal.impl.load.java.d.n;
import kotlin.reflect.jvm.internal.impl.load.java.d.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/g.class */
public interface g {

    /* renamed from: a  reason: collision with root package name */
    public static final g f37735a = new g() { // from class: kotlin.reflect.jvm.internal.impl.load.java.a.g.1
        private static /* synthetic */ void a(int i) {
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

        @Override // kotlin.reflect.jvm.internal.impl.load.java.a.g
        public final d a(b bVar) {
            if (bVar != null) {
                return null;
            }
            a(0);
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.a.g
        public final void a(kotlin.reflect.jvm.internal.impl.load.java.d.g gVar) {
            if (gVar == null) {
                a(7);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.a.g
        public final void a(l lVar, j jVar) {
            if (lVar == null) {
                a(3);
            }
            if (jVar == null) {
                a(4);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.a.g
        public final void a(n nVar, an anVar) {
            if (nVar == null) {
                a(5);
            }
            if (anVar == null) {
                a(6);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.a.g
        public final void a(p pVar, as asVar) {
            if (pVar == null) {
                a(1);
            }
            if (asVar == null) {
                a(2);
            }
        }
    };

    d a(b bVar);

    void a(kotlin.reflect.jvm.internal.impl.load.java.d.g gVar);

    void a(l lVar, j jVar);

    void a(n nVar, an anVar);

    void a(p pVar, as asVar);
}
