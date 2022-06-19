package kotlin.p521c;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.AbstractC18335f;
import kotlin.p521c.AbstractC18335f.AbstractC18338b;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\b'\u0018��*\b\b��\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u0002H\u00012\b\u0012\u0004\u0012\u0002H\u00030\u0004B8\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0004\u0012#\u0010\u0006\u001a\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u0007¢\u0006\u0002\u0010\u000bJ\u0019\u0010\r\u001a\u00020\u000e2\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u0004H��¢\u0006\u0002\b\u0010J\u0019\u0010\u0011\u001a\u0004\u0018\u00018\u00012\u0006\u0010\n\u001a\u00020\u0002H��¢\u0006\u0004\b\u0012\u0010\u0013R+\u0010\u0006\u001a\u001f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0012\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, m4298d2 = {"Lkotlin/coroutines/AbstractCoroutineContextKey;", "B", "Lkotlin/coroutines/CoroutineContext$Element;", "E", "Lkotlin/coroutines/CoroutineContext$Key;", "baseKey", "safeCast", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "element", "(Lkotlin/coroutines/CoroutineContext$Key;Lkotlin/jvm/functions/Function1;)V", "topmostKey", "isSubKey", "", "key", "isSubKey$kotlin_stdlib", "tryCast", "tryCast$kotlin_stdlib", "(Lkotlin/coroutines/CoroutineContext$Element;)Lkotlin/coroutines/CoroutineContext$Element;", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.c.b */
/* loaded from: classes5-dex2jar.jar:kotlin/c/b.class */
public abstract class AbstractC18315b<B extends AbstractC18335f.AbstractC18338b, E extends B> implements AbstractC18335f.AbstractC18340c<E> {

    /* renamed from: a */
    private final AbstractC18335f.AbstractC18340c<?> f63419a;

    /* renamed from: b */
    private final Function1<AbstractC18335f.AbstractC18338b, E> f63420b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [kotlin.jvm.functions.Function1<? super kotlin.c.f$b, ? extends E extends B>, java.lang.Object, kotlin.jvm.functions.Function1<kotlin.c.f$b, E extends B>] */
    public AbstractC18315b(AbstractC18335f.AbstractC18340c<B> baseKey, Function1<? super AbstractC18335f.AbstractC18338b, ? extends E> safeCast) {
        C18524p.m3840d(baseKey, "baseKey");
        C18524p.m3840d(safeCast, "safeCast");
        this.f63420b = safeCast;
        this.f63419a = baseKey instanceof AbstractC18315b ? ((AbstractC18315b) baseKey).f63419a : baseKey;
    }

    /* renamed from: a */
    public final AbstractC18335f.AbstractC18338b m4097a(AbstractC18335f.AbstractC18338b element) {
        C18524p.m3840d(element, "element");
        return (AbstractC18335f.AbstractC18338b) this.f63420b.invoke(element);
    }

    /* renamed from: a */
    public final boolean m4096a(AbstractC18335f.AbstractC18340c<?> key) {
        C18524p.m3840d(key, "key");
        return key == this || this.f63419a == key;
    }
}
