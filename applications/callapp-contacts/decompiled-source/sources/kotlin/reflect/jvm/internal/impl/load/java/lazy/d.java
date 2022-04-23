package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.Iterator;
import kotlin.a.n;
import kotlin.g.k;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.descriptors.a.c;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.f.h;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/d.class */
public final class d implements g {

    /* renamed from: b  reason: collision with root package name */
    private final g f37789b;

    /* renamed from: c  reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.load.java.d.d f37790c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f37791d;
    private final h<kotlin.reflect.jvm.internal.impl.load.java.d.a, c> e;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/d$a.class */
    static final class a extends r implements Function1<kotlin.reflect.jvm.internal.impl.load.java.d.a, c> {
        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ c invoke(kotlin.reflect.jvm.internal.impl.load.java.d.a aVar) {
            kotlin.reflect.jvm.internal.impl.load.java.d.a annotation = aVar;
            p.d(annotation, "annotation");
            kotlin.reflect.jvm.internal.impl.load.java.a.c cVar = kotlin.reflect.jvm.internal.impl.load.java.a.c.f37724a;
            return kotlin.reflect.jvm.internal.impl.load.java.a.c.a(annotation, d.this.f37789b, d.this.f37791d);
        }
    }

    public d(g c2, kotlin.reflect.jvm.internal.impl.load.java.d.d annotationOwner, boolean z) {
        p.d(c2, "c");
        p.d(annotationOwner, "annotationOwner");
        this.f37789b = c2;
        this.f37790c = annotationOwner;
        this.f37791d = z;
        this.e = c2.f37882a.f37782a.b(new a());
    }

    public /* synthetic */ d(g gVar, kotlin.reflect.jvm.internal.impl.load.java.d.d dVar, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVar, dVar, (i & 4) != 0 ? false : z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
    public final c a(b fqName) {
        p.d(fqName, "fqName");
        kotlin.reflect.jvm.internal.impl.load.java.d.a a2 = this.f37790c.a(fqName);
        c invoke = a2 == null ? null : this.e.invoke(a2);
        return invoke == null ? kotlin.reflect.jvm.internal.impl.load.java.a.c.f37724a.a(fqName, this.f37790c, this.f37789b) : invoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
    public final boolean a() {
        return this.f37790c.b().isEmpty() && !this.f37790c.c();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.g
    public final boolean b(b bVar) {
        return g.b.b(this, bVar);
    }

    @Override // java.lang.Iterable
    public final Iterator<c> iterator() {
        return k.e(k.a(k.d(n.p(this.f37790c.b()), this.e), kotlin.reflect.jvm.internal.impl.load.java.a.c.f37724a.a(j.a.y, this.f37790c, this.f37789b))).a();
    }
}
