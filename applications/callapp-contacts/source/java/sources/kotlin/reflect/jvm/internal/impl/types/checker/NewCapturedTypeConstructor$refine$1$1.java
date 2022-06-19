package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor$refine$1$1.class */
public final class NewCapturedTypeConstructor$refine$1$1 extends AbstractC18526r implements Function0<List<? extends UnwrappedType>> {
    final /* synthetic */ KotlinTypeRefiner $kotlinTypeRefiner;
    final /* synthetic */ NewCapturedTypeConstructor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NewCapturedTypeConstructor$refine$1$1(NewCapturedTypeConstructor newCapturedTypeConstructor, KotlinTypeRefiner kotlinTypeRefiner) {
        super(0);
        this.this$0 = newCapturedTypeConstructor;
        this.$kotlinTypeRefiner = kotlinTypeRefiner;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends UnwrappedType> invoke() {
        List<UnwrappedType> mo53752getSupertypes = this.this$0.mo53752getSupertypes();
        KotlinTypeRefiner kotlinTypeRefiner = this.$kotlinTypeRefiner;
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) mo53752getSupertypes, 10));
        for (UnwrappedType unwrappedType : mo53752getSupertypes) {
            arrayList.add(unwrappedType.refine(kotlinTypeRefiner));
        }
        return arrayList;
    }
}
