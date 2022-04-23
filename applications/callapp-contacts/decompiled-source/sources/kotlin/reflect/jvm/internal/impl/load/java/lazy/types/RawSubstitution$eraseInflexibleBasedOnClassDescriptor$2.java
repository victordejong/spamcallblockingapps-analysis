package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.n;
import kotlin.reflect.jvm.internal.impl.c.a;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2.class */
public final class RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2 extends r implements Function1<KotlinTypeRefiner, SimpleType> {
    final /* synthetic */ JavaTypeAttributes $attr;
    final /* synthetic */ d $declaration;
    final /* synthetic */ SimpleType $type;
    final /* synthetic */ RawSubstitution this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2(d dVar, RawSubstitution rawSubstitution, SimpleType simpleType, JavaTypeAttributes javaTypeAttributes) {
        super(1);
        this.$declaration = dVar;
        this.this$0 = rawSubstitution;
        this.$type = simpleType;
        this.$attr = javaTypeAttributes;
    }

    public final SimpleType invoke(KotlinTypeRefiner kotlinTypeRefiner) {
        d findClassAcrossModuleDependencies;
        n eraseInflexibleBasedOnClassDescriptor;
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        d dVar = this.$declaration;
        if (!(dVar instanceof d)) {
            dVar = null;
        }
        a a2 = dVar == null ? null : kotlin.reflect.jvm.internal.impl.resolve.b.a.a((g) dVar);
        if (a2 == null || (findClassAcrossModuleDependencies = kotlinTypeRefiner.findClassAcrossModuleDependencies(a2)) == null || p.a(findClassAcrossModuleDependencies, this.$declaration)) {
            return null;
        }
        eraseInflexibleBasedOnClassDescriptor = this.this$0.eraseInflexibleBasedOnClassDescriptor(this.$type, findClassAcrossModuleDependencies, this.$attr);
        return (SimpleType) eraseInflexibleBasedOnClassDescriptor.f36810a;
    }
}
