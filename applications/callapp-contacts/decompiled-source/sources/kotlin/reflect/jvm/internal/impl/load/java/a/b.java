package kotlin.reflect.jvm.internal.impl.load.java.a;

import java.util.Map;
import kotlin.a.ai;
import kotlin.a.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a.c;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.f.m;
import kotlin.reflect.jvm.internal.impl.load.java.b.i;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/b.class */
public class b implements c, i {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f37718a = {ac.a(new aa(ac.b(b.class), "type", "getType()Lorg/jetbrains/kotlin/types/SimpleType;"))};

    /* renamed from: b  reason: collision with root package name */
    final kotlin.reflect.jvm.internal.impl.c.b f37719b;

    /* renamed from: c  reason: collision with root package name */
    final kotlin.reflect.jvm.internal.impl.load.java.d.b f37720c;

    /* renamed from: d  reason: collision with root package name */
    private final at f37721d;
    private final kotlin.reflect.jvm.internal.impl.f.i e;
    private final boolean f;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/b$a.class */
    static final class a extends r implements Function0<SimpleType> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g f37722a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f37723b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(g gVar, b bVar) {
            super(0);
            this.f37722a = gVar;
            this.f37723b = bVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ SimpleType invoke() {
            SimpleType defaultType = this.f37722a.f37882a.o.getBuiltIns().a(this.f37723b.f37719b).getDefaultType();
            p.b(defaultType, "c.module.builtIns.getBuiltInClassByFqName(fqName).defaultType");
            return defaultType;
        }
    }

    public b(g c2, kotlin.reflect.jvm.internal.impl.load.java.d.a aVar, kotlin.reflect.jvm.internal.impl.c.b fqName) {
        kotlin.reflect.jvm.internal.impl.load.java.c.a NO_SOURCE;
        p.d(c2, "c");
        p.d(fqName, "fqName");
        this.f37719b = fqName;
        Boolean bool = null;
        kotlin.reflect.jvm.internal.impl.load.java.c.a a2 = aVar == null ? null : c2.f37882a.j.a(aVar);
        if (a2 == null) {
            NO_SOURCE = at.f37401a;
            p.b(NO_SOURCE, "NO_SOURCE");
        } else {
            NO_SOURCE = a2;
        }
        this.f37721d = NO_SOURCE;
        this.e = c2.f37882a.f37782a.a(new a(c2, this));
        this.f37720c = aVar == null ? null : (kotlin.reflect.jvm.internal.impl.load.java.d.b) n.b((Iterable<? extends Object>) aVar.a());
        if (aVar != null) {
            bool = Boolean.valueOf(aVar.d());
        }
        this.f = p.a(bool, Boolean.TRUE);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final /* bridge */ /* synthetic */ KotlinType a() {
        return (SimpleType) m.a(this.e, f37718a[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final kotlin.reflect.jvm.internal.impl.c.b b() {
        return this.f37719b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public Map<e, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> c() {
        return ai.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final at d() {
        return this.f37721d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.b.i
    public final boolean e() {
        return this.f;
    }
}
