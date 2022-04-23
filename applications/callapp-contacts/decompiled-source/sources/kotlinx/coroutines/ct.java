package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.c.f;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÂ\u0002\u0018��2\u00020\u00012\b\u0012\u0004\u0012\u00020��0\u0002B\u0007\b\u0002¢\u0006\u0002\u0010\u0003R\u0018\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/UndispatchedMarker;", "Lkotlin/coroutines/CoroutineContext$Element;", "Lkotlin/coroutines/CoroutineContext$Key;", "()V", "key", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ct.class */
public final class ct implements f.b, f.c<ct> {

    /* renamed from: a  reason: collision with root package name */
    public static final ct f38788a = new ct();

    private ct() {
    }

    @Override // kotlin.c.f
    public final <R> R fold(R r, Function2<? super R, ? super f.b, ? extends R> function2) {
        return (R) f.b.a.a(this, r, function2);
    }

    @Override // kotlin.c.f.b, kotlin.c.f
    public final <E extends f.b> E get(f.c<E> cVar) {
        return (E) f.b.a.a(this, cVar);
    }

    @Override // kotlin.c.f.b
    public final f.c<?> getKey() {
        return this;
    }

    @Override // kotlin.c.f
    public final f minusKey(f.c<?> cVar) {
        return f.b.a.b(this, cVar);
    }

    @Override // kotlin.c.f
    public final f plus(f fVar) {
        return f.b.a.a(this, fVar);
    }
}
