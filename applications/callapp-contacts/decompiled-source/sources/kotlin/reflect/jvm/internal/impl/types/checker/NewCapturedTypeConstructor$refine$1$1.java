package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.List;
import kotlin.a.n;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor$refine$1$1.class */
public final class NewCapturedTypeConstructor$refine$1$1 extends r implements Function0<List<? extends UnwrappedType>> {
    final /* synthetic */ KotlinTypeRefiner $kotlinTypeRefiner;
    final /* synthetic */ NewCapturedTypeConstructor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NewCapturedTypeConstructor$refine$1$1(NewCapturedTypeConstructor newCapturedTypeConstructor, KotlinTypeRefiner kotlinTypeRefiner) {
        super(0);
        this.this$0 = newCapturedTypeConstructor;
        this.$kotlinTypeRefiner = kotlinTypeRefiner;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends UnwrappedType> invoke() {
        List<UnwrappedType> supertypes = this.this$0.mo7371getSupertypes();
        KotlinTypeRefiner kotlinTypeRefiner = this.$kotlinTypeRefiner;
        ArrayList arrayList = new ArrayList(n.a((Iterable) supertypes, 10));
        for (UnwrappedType unwrappedType : supertypes) {
            arrayList.add(unwrappedType.refine(kotlinTypeRefiner));
        }
        return arrayList;
    }
}
