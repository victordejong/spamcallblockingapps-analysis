package kotlin.p521c;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.AbstractC18335f;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\bÇ\u0002\u0018��2\u00020\u00012\u00060\u0002j\u0002`\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0004J5\u0010\u0007\u001a\u0002H\b\"\u0004\b��\u0010\b2\u0006\u0010\t\u001a\u0002H\b2\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u0002H\b0\u000bH\u0016¢\u0006\u0002\u0010\rJ(\u0010\u000e\u001a\u0004\u0018\u0001H\u000f\"\b\b��\u0010\u000f*\u00020\f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u0011H\u0096\u0002¢\u0006\u0002\u0010\u0012J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0014\u0010\u0015\u001a\u00020\u00012\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u0011H\u0016J\u0011\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0096\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��¨\u0006\u001c"}, m4298d2 = {"Lkotlin/coroutines/EmptyCoroutineContext;", "Lkotlin/coroutines/CoroutineContext;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "()V", "serialVersionUID", "", "fold", "R", "initial", "operation", "Lkotlin/Function2;", "Lkotlin/coroutines/CoroutineContext$Element;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "get", "E", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "hashCode", "", "minusKey", "plus", "context", "readResolve", "", "toString", "", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.c.g */
/* loaded from: classes5-dex2jar.jar:kotlin/c/g.class */
public final class C18341g implements Serializable, AbstractC18335f {

    /* renamed from: a */
    public static final C18341g f63443a = new C18341g();

    private C18341g() {
    }

    private final Object readResolve() {
        return f63443a;
    }

    @Override // kotlin.p521c.AbstractC18335f
    public final <R> R fold(R r, Function2<? super R, ? super AbstractC18335f.AbstractC18338b, ? extends R> operation) {
        C18524p.m3840d(operation, "operation");
        return r;
    }

    @Override // kotlin.p521c.AbstractC18335f
    public final <E extends AbstractC18335f.AbstractC18338b> E get(AbstractC18335f.AbstractC18340c<E> key) {
        C18524p.m3840d(key, "key");
        return null;
    }

    public final int hashCode() {
        return 0;
    }

    @Override // kotlin.p521c.AbstractC18335f
    public final AbstractC18335f minusKey(AbstractC18335f.AbstractC18340c<?> key) {
        C18524p.m3840d(key, "key");
        return this;
    }

    @Override // kotlin.p521c.AbstractC18335f
    public final AbstractC18335f plus(AbstractC18335f context) {
        C18524p.m3840d(context, "context");
        return context;
    }

    public final String toString() {
        return "EmptyCoroutineContext";
    }
}
