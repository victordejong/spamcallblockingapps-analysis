package kotlin.c;

import kotlin.Metadata;
import kotlin.c.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b'\u0018��2\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004R\u0018\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlin/coroutines/CoroutineContext$Element;", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "(Lkotlin/coroutines/CoroutineContext$Key;)V", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/c/a.class */
public abstract class a implements f.b {
    private final f.c<?> key;

    public a(f.c<?> key) {
        p.d(key, "key");
        this.key = key;
    }

    @Override // kotlin.c.f
    public <R> R fold(R r, Function2<? super R, ? super f.b, ? extends R> operation) {
        p.d(operation, "operation");
        return (R) f.b.a.a(this, r, operation);
    }

    @Override // kotlin.c.f.b, kotlin.c.f
    public <E extends f.b> E get(f.c<E> key) {
        p.d(key, "key");
        return (E) f.b.a.a(this, key);
    }

    @Override // kotlin.c.f.b
    public f.c<?> getKey() {
        return this.key;
    }

    @Override // kotlin.c.f
    public f minusKey(f.c<?> key) {
        p.d(key, "key");
        return f.b.a.b(this, key);
    }

    @Override // kotlin.c.f
    public f plus(f context) {
        p.d(context, "context");
        return f.b.a.a(this, context);
    }
}
