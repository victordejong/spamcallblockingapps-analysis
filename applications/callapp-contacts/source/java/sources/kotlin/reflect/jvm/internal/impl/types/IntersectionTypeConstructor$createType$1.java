package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$createType$1.class */
public final class IntersectionTypeConstructor$createType$1 extends AbstractC18526r implements Function1<KotlinTypeRefiner, SimpleType> {
    final /* synthetic */ IntersectionTypeConstructor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IntersectionTypeConstructor$createType$1(IntersectionTypeConstructor intersectionTypeConstructor) {
        super(1);
        this.this$0 = intersectionTypeConstructor;
    }

    public final SimpleType invoke(KotlinTypeRefiner kotlinTypeRefiner) {
        C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this.this$0.refine(kotlinTypeRefiner).createType();
    }
}
