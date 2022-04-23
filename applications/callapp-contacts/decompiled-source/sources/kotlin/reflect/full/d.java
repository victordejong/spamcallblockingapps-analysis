package kotlin.reflect.full;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.utils.b;
@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/full/d.class */
final class d implements b.c {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Function1 f36826a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Function1 function1) {
        this.f36826a = function1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.utils.b.c
    public final /* synthetic */ Iterable getNeighbors(Object obj) {
        return (Iterable) this.f36826a.invoke(obj);
    }
}
