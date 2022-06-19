package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import kotlin.C18538n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2.class */
public final class RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2 extends AbstractC18526r implements Function1<KotlinTypeRefiner, SimpleType> {
    final /* synthetic */ JavaTypeAttributes $attr;
    final /* synthetic */ AbstractC19070d $declaration;
    final /* synthetic */ SimpleType $type;
    final /* synthetic */ RawSubstitution this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2(AbstractC19070d abstractC19070d, RawSubstitution rawSubstitution, SimpleType simpleType, JavaTypeAttributes javaTypeAttributes) {
        super(1);
        this.$declaration = abstractC19070d;
        this.this$0 = rawSubstitution;
        this.$type = simpleType;
        this.$attr = javaTypeAttributes;
    }

    public final SimpleType invoke(KotlinTypeRefiner kotlinTypeRefiner) {
        AbstractC19070d findClassAcrossModuleDependencies;
        C18538n eraseInflexibleBasedOnClassDescriptor;
        C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
        AbstractC19070d abstractC19070d = this.$declaration;
        if (!(abstractC19070d instanceof AbstractC19070d)) {
            abstractC19070d = null;
        }
        C18960a m1532a = abstractC19070d == null ? null : C19756a.m1532a((AbstractC19129g) abstractC19070d);
        if (m1532a == null || (findClassAcrossModuleDependencies = kotlinTypeRefiner.findClassAcrossModuleDependencies(m1532a)) == null || C18524p.m3850a(findClassAcrossModuleDependencies, this.$declaration)) {
            return null;
        }
        eraseInflexibleBasedOnClassDescriptor = this.this$0.eraseInflexibleBasedOnClassDescriptor(this.$type, findClassAcrossModuleDependencies, this.$attr);
        return (SimpleType) eraseInflexibleBasedOnClassDescriptor.f63624a;
    }
}
