package kotlin.reflect.full;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.utils.C20000b;
@Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 4, 1})
/* renamed from: kotlin.reflect.full.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/full/d.class */
final class C18561d implements C20000b.AbstractC20004c {

    /* renamed from: a */
    private final /* synthetic */ Function1 f63641a;

    public C18561d(Function1 function1) {
        this.f63641a = function1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.utils.C20000b.AbstractC20004c
    public final /* synthetic */ Iterable getNeighbors(Object obj) {
        return (Iterable) this.f63641a.invoke(obj);
    }
}
