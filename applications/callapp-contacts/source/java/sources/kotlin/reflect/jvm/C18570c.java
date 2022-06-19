package kotlin.reflect.jvm;

import kotlin.AbstractC18342d;
import kotlin.C18538n;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18521m;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.jvm.internal.C18635aj;
import kotlin.reflect.jvm.internal.C18637b;
import kotlin.reflect.jvm.internal.C20042l;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19025as;
import kotlin.reflect.jvm.internal.impl.p539b.C18702a;
import kotlin.reflect.jvm.internal.impl.p539b.p541b.C18818g;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18854f;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18856g;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18859h;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19963t;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a\u001e\u0010��\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003¨\u0006\u0004"}, m4298d2 = {"reflect", "Lkotlin/reflect/KFunction;", "R", "Lkotlin/Function;", "kotlin-reflection"}, m4297k = 2, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.jvm.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/c.class */
public final class C18570c {

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\b\u0007"}, m4298d2 = {"<anonymous>", "Lkotlin/reflect/jvm/internal/impl/descriptors/SimpleFunctionDescriptor;", "R", "p1", "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/MemberDeserializer;", "p2", "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.reflect.jvm.c$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/c$a.class */
    public static final /* synthetic */ class C18571a extends C18521m implements Function2<C19963t, C18702a.C18741h, AbstractC19025as> {

        /* renamed from: a */
        public static final C18571a f63643a = new C18571a();

        C18571a() {
            super(2);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
        public final String getName() {
            return "loadFunction";
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final KDeclarationContainer getOwner() {
            return C18496ac.m3882b(C19963t.class);
        }

        @Override // kotlin.jvm.internal.AbstractC18511e
        public final String getSignature() {
            return "loadFunction(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Function;)Lorg/jetbrains/kotlin/descriptors/SimpleFunctionDescriptor;";
        }

        @Override // kotlin.jvm.functions.Function2
        public final /* synthetic */ AbstractC19025as invoke(C19963t c19963t, C18702a.C18741h c18741h) {
            C19963t p1 = c19963t;
            C18702a.C18741h p2 = c18741h;
            C18524p.m3840d(p1, "p1");
            C18524p.m3840d(p2, "p2");
            return p1.m1244a(p2);
        }
    }

    /* renamed from: a */
    public static final <R> KFunction<R> m3824a(AbstractC18342d<? extends R> reflect) {
        C18524p.m3840d(reflect, "$this$reflect");
        Metadata metadata = (Metadata) reflect.getClass().getAnnotation(Metadata.class);
        if (metadata == null) {
            return null;
        }
        String[] m4299d1 = metadata.m4299d1();
        boolean z = true;
        if (m4299d1.length == 0) {
            m4299d1 = null;
        }
        if (m4299d1 == null) {
            return null;
        }
        C18538n<C18856g, C18702a.C18741h> m2914c = C18859h.m2914c(m4299d1, metadata.m4298d2());
        C18856g c18856g = m2914c.f63624a;
        C18702a.C18741h c18741h = m2914c.f63625b;
        int[] m4296mv = metadata.m4296mv();
        if ((metadata.m4294xi() & 8) == 0) {
            z = false;
        }
        C18854f c18854f = new C18854f(m4296mv, z);
        Class<?> cls = reflect.getClass();
        C18702a.C18741h c18741h2 = c18741h;
        C18856g c18856g2 = c18856g;
        C18702a.C18784s c18784s = c18741h.f63981k;
        C18524p.m3843b(c18784s, "proto.typeTable");
        AbstractC19025as abstractC19025as = (AbstractC19025as) C18635aj.m3767a(cls, c18741h2, c18856g2, new C18818g(c18784s), c18854f, C18571a.f63643a);
        if (abstractC19025as != null) {
            return new C20042l(C18637b.f63708a, abstractC19025as);
        }
        return null;
    }
}
