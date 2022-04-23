package kotlin.reflect.jvm;

import kotlin.Metadata;
import kotlin.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.p;
import kotlin.n;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.jvm.internal.aj;
import kotlin.reflect.jvm.internal.b;
import kotlin.reflect.jvm.internal.impl.b.a;
import kotlin.reflect.jvm.internal.impl.b.c.a.f;
import kotlin.reflect.jvm.internal.impl.b.c.a.g;
import kotlin.reflect.jvm.internal.impl.b.c.a.h;
import kotlin.reflect.jvm.internal.impl.descriptors.as;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.t;
import kotlin.reflect.jvm.internal.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a\u001e\u0010��\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003¨\u0006\u0004"}, d2 = {"reflect", "Lkotlin/reflect/KFunction;", "R", "Lkotlin/Function;", "kotlin-reflection"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/c.class */
public final class c {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/SimpleFunctionDescriptor;", "R", "p1", "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;", "p2", "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;", "invoke"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/c$a.class */
    static final /* synthetic */ class a extends m implements Function2<t, a.h, as> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f36828a = new a();

        a() {
            super(2);
        }

        @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
        public final String getName() {
            return "loadFunction";
        }

        @Override // kotlin.jvm.internal.e
        public final KDeclarationContainer getOwner() {
            return ac.b(t.class);
        }

        @Override // kotlin.jvm.internal.e
        public final String getSignature() {
            return "loadFunction(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Function;)Lorg/jetbrains/kotlin/descriptors/SimpleFunctionDescriptor;";
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* synthetic */ as invoke(t tVar, a.h hVar) {
            t p1 = tVar;
            a.h p2 = hVar;
            p.d(p1, "p1");
            p.d(p2, "p2");
            return p1.a(p2);
        }
    }

    public static final <R> KFunction<R> a(d<? extends R> reflect) {
        p.d(reflect, "$this$reflect");
        Metadata metadata = (Metadata) reflect.getClass().getAnnotation(Metadata.class);
        if (metadata == null) {
            return null;
        }
        String[] d1 = metadata.d1();
        boolean z = true;
        if (d1.length == 0) {
            d1 = null;
        }
        if (d1 == null) {
            return null;
        }
        n<g, a.h> c2 = h.c(d1, metadata.d2());
        g gVar = c2.f36810a;
        a.h hVar = c2.f36811b;
        int[] mv = metadata.mv();
        if ((metadata.xi() & 8) == 0) {
            z = false;
        }
        f fVar = new f(mv, z);
        Class<?> cls = reflect.getClass();
        a.h hVar2 = hVar;
        g gVar2 = gVar;
        a.s sVar = hVar.k;
        p.b(sVar, "proto.typeTable");
        as asVar = (as) aj.a(cls, hVar2, gVar2, new kotlin.reflect.jvm.internal.impl.b.b.g(sVar), fVar, a.f36828a);
        if (asVar == null) {
            return null;
        }
        return new l(b.f36886a, asVar);
    }
}
