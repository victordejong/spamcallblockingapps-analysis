package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.f.h;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.reflect.jvm.internal.impl.resolve.constants.j;
import kotlin.reflect.jvm.internal.impl.utils.e;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final e f37759a;

    /* renamed from: b  reason: collision with root package name */
    private final h<d, kotlin.reflect.jvm.internal.impl.descriptors.a.c> f37760b;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final kotlin.reflect.jvm.internal.impl.descriptors.a.c f37761a;

        /* renamed from: b  reason: collision with root package name */
        private final int f37762b;

        public a(kotlin.reflect.jvm.internal.impl.descriptors.a.c typeQualifier, int i) {
            p.d(typeQualifier, "typeQualifier");
            this.f37761a = typeQualifier;
            this.f37762b = i;
        }

        private final boolean a(kotlin.reflect.jvm.internal.impl.load.java.a aVar) {
            return ((1 << aVar.ordinal()) & this.f37762b) != 0;
        }

        public final List<kotlin.reflect.jvm.internal.impl.load.java.a> a() {
            kotlin.reflect.jvm.internal.impl.load.java.a[] values = kotlin.reflect.jvm.internal.impl.load.java.a.values();
            ArrayList arrayList = new ArrayList();
            for (kotlin.reflect.jvm.internal.impl.load.java.a aVar : values) {
                boolean z = true;
                if (!a(aVar) && (!a(kotlin.reflect.jvm.internal.impl.load.java.a.TYPE_USE) || aVar == kotlin.reflect.jvm.internal.impl.load.java.a.TYPE_PARAMETER_BOUNDS)) {
                    z = false;
                }
                if (z) {
                    arrayList.add(aVar);
                }
            }
            return arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/c$b.class */
    public static final class b extends r implements Function2<j, kotlin.reflect.jvm.internal.impl.load.java.a, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final b f37763a = new b();

        b() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* synthetic */ Boolean invoke(j jVar, kotlin.reflect.jvm.internal.impl.load.java.a aVar) {
            j jVar2 = jVar;
            kotlin.reflect.jvm.internal.impl.load.java.a it2 = aVar;
            p.d(jVar2, "<this>");
            p.d(it2, "it");
            return Boolean.valueOf(p.a((Object) jVar2.f38255a.b(), (Object) it2.getJavaTarget()));
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.c$c  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/c$c.class */
    final /* synthetic */ class C0683c extends m implements Function1<d, kotlin.reflect.jvm.internal.impl.descriptors.a.c> {
        C0683c(c cVar) {
            super(1, cVar);
        }

        @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
        public final String getName() {
            return "computeTypeQualifierNickname";
        }

        @Override // kotlin.jvm.internal.e
        public final KDeclarationContainer getOwner() {
            return ac.b(c.class);
        }

        @Override // kotlin.jvm.internal.e
        public final String getSignature() {
            return "computeTypeQualifierNickname(Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;)Lorg/jetbrains/kotlin/descriptors/annotations/AnnotationDescriptor;";
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.a.c invoke(d dVar) {
            d p0 = dVar;
            p.d(p0, "p0");
            return c.a((c) this.receiver, p0);
        }
    }

    public c(n storageManager, e javaTypeEnhancementState) {
        p.d(storageManager, "storageManager");
        p.d(javaTypeEnhancementState, "javaTypeEnhancementState");
        this.f37759a = javaTypeEnhancementState;
        this.f37760b = storageManager.b(new C0683c(this));
    }

    private final List<kotlin.reflect.jvm.internal.impl.load.java.a> a(g<?> gVar, Function2<? super j, ? super kotlin.reflect.jvm.internal.impl.load.java.a, Boolean> function2) {
        kotlin.reflect.jvm.internal.impl.load.java.a aVar;
        if (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.b) {
            List<? extends g<?>> a2 = ((kotlin.reflect.jvm.internal.impl.resolve.constants.b) gVar).a();
            ArrayList arrayList = new ArrayList();
            for (g<?> gVar2 : a2) {
                kotlin.a.n.a((Collection) arrayList, (Iterable) a(gVar2, function2));
            }
            return arrayList;
        } else if (!(gVar instanceof j)) {
            return z.f36608a;
        } else {
            kotlin.reflect.jvm.internal.impl.load.java.a[] values = kotlin.reflect.jvm.internal.impl.load.java.a.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    aVar = null;
                    break;
                }
                kotlin.reflect.jvm.internal.impl.load.java.a aVar2 = values[i];
                if (function2.invoke(gVar, aVar2).booleanValue()) {
                    aVar = aVar2;
                    break;
                }
                i++;
            }
            return kotlin.a.n.b(aVar);
        }
    }

    public static final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.a.c a(c cVar, d dVar) {
        if (!dVar.getAnnotations().b(kotlin.reflect.jvm.internal.impl.load.java.b.a())) {
            return null;
        }
        for (kotlin.reflect.jvm.internal.impl.descriptors.a.c cVar2 : dVar.getAnnotations()) {
            kotlin.reflect.jvm.internal.impl.descriptors.a.c a2 = cVar.a(cVar2);
            if (a2 != null) {
                return a2;
            }
        }
        return null;
    }

    private final kotlin.reflect.jvm.internal.impl.utils.g a(d dVar) {
        kotlin.reflect.jvm.internal.impl.descriptors.a.c a2 = dVar.getAnnotations().a(kotlin.reflect.jvm.internal.impl.load.java.b.d());
        g<?> b2 = a2 == null ? null : kotlin.reflect.jvm.internal.impl.resolve.b.a.b(a2);
        j jVar = b2 instanceof j ? (j) b2 : null;
        if (jVar == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.utils.g gVar = this.f37759a.f38518c;
        if (gVar != null) {
            return gVar;
        }
        String a3 = jVar.f38255a.a();
        int hashCode = a3.hashCode();
        if (hashCode != -2137067054) {
            if (hashCode != -1838656823) {
                if (hashCode == 2656902 && a3.equals("WARN")) {
                    return kotlin.reflect.jvm.internal.impl.utils.g.WARN;
                }
                return null;
            } else if (!a3.equals("STRICT")) {
                return null;
            } else {
                return kotlin.reflect.jvm.internal.impl.utils.g.STRICT;
            }
        } else if (!a3.equals("IGNORE")) {
            return null;
        } else {
            return kotlin.reflect.jvm.internal.impl.utils.g.IGNORE;
        }
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.a.c a(kotlin.reflect.jvm.internal.impl.descriptors.a.c annotationDescriptor) {
        d a2;
        p.d(annotationDescriptor, "annotationDescriptor");
        if (this.f37759a.g || (a2 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a(annotationDescriptor)) == null) {
            return null;
        }
        if (kotlin.reflect.jvm.internal.impl.load.java.b.g().contains(kotlin.reflect.jvm.internal.impl.resolve.b.a.b(a2)) || a2.getAnnotations().b(kotlin.reflect.jvm.internal.impl.load.java.b.b())) {
            return annotationDescriptor;
        }
        if (a2.getKind() != kotlin.reflect.jvm.internal.impl.descriptors.e.ANNOTATION_CLASS) {
            return null;
        }
        return this.f37760b.invoke(a2);
    }

    public final a b(kotlin.reflect.jvm.internal.impl.descriptors.a.c annotationDescriptor) {
        kotlin.reflect.jvm.internal.impl.descriptors.a.c cVar;
        p.d(annotationDescriptor, "annotationDescriptor");
        if (this.f37759a.g) {
            return null;
        }
        d a2 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a(annotationDescriptor);
        if (a2 == null || !a2.getAnnotations().b(kotlin.reflect.jvm.internal.impl.load.java.b.c())) {
            a2 = null;
        }
        if (a2 == null) {
            return null;
        }
        d a3 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a(annotationDescriptor);
        p.a(a3);
        kotlin.reflect.jvm.internal.impl.descriptors.a.c a4 = a3.getAnnotations().a(kotlin.reflect.jvm.internal.impl.load.java.b.c());
        p.a(a4);
        Map<kotlin.reflect.jvm.internal.impl.c.e, g<?>> c2 = a4.c();
        ArrayList<kotlin.reflect.jvm.internal.impl.load.java.a> arrayList = new ArrayList();
        for (Map.Entry<kotlin.reflect.jvm.internal.impl.c.e, g<?>> entry : c2.entrySet()) {
            kotlin.a.n.a((Collection) arrayList, (Iterable) (p.a(entry.getKey(), u.f38003c) ? a(entry.getValue(), b.f37763a) : z.f36608a));
        }
        int i = 0;
        for (kotlin.reflect.jvm.internal.impl.load.java.a aVar : arrayList) {
            i |= 1 << aVar.ordinal();
        }
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.a.c> it2 = a2.getAnnotations().iterator();
        while (true) {
            if (!it2.hasNext()) {
                cVar = null;
                break;
            }
            cVar = it2.next();
            if (a(cVar) != null) {
                break;
            }
        }
        kotlin.reflect.jvm.internal.impl.descriptors.a.c cVar2 = cVar;
        if (cVar2 == null) {
            return null;
        }
        return new a(cVar2, i);
    }

    public final kotlin.reflect.jvm.internal.impl.utils.g c(kotlin.reflect.jvm.internal.impl.descriptors.a.c annotationDescriptor) {
        p.d(annotationDescriptor, "annotationDescriptor");
        kotlin.reflect.jvm.internal.impl.utils.g d2 = d(annotationDescriptor);
        return d2 != null ? d2 : this.f37759a.f38517b;
    }

    public final kotlin.reflect.jvm.internal.impl.utils.g d(kotlin.reflect.jvm.internal.impl.descriptors.a.c annotationDescriptor) {
        p.d(annotationDescriptor, "annotationDescriptor");
        Map<String, kotlin.reflect.jvm.internal.impl.utils.g> map = this.f37759a.f38519d;
        kotlin.reflect.jvm.internal.impl.c.b b2 = annotationDescriptor.b();
        kotlin.reflect.jvm.internal.impl.utils.g gVar = map.get(b2 == null ? null : b2.a());
        if (gVar != null) {
            return gVar;
        }
        d a2 = kotlin.reflect.jvm.internal.impl.resolve.b.a.a(annotationDescriptor);
        if (a2 == null) {
            return null;
        }
        return a(a2);
    }
}
