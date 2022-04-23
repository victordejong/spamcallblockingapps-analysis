package kotlinx.coroutines;

import java.util.Objects;
import kotlin.Metadata;
import kotlin.c.b;
import kotlin.c.d;
import kotlin.c.e;
import kotlin.c.f;
import kotlin.c.g;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\b&\u0018�� \u00172\u00020\u00012\u00020\u0002:\u0001\u0017B\u0005¢\u0006\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0010\b\u001a\u00060\tj\u0002`\nH&J\u001c\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0010\b\u001a\u00060\tj\u0002`\nH\u0017J \u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u000e0\r\"\u0004\b��\u0010\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u000e0\rJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0011\u0010\u0012\u001a\u00020��2\u0006\u0010\u0013\u001a\u00020��H\u0087\u0002J\u0014\u0010\u0014\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\rH\u0017J\b\u0010\u0015\u001a\u00020\u0016H\u0016¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/CoroutineDispatcher;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlin/coroutines/ContinuationInterceptor;", "()V", "dispatch", "", "context", "Lkotlin/coroutines/CoroutineContext;", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "dispatchYield", "interceptContinuation", "Lkotlin/coroutines/Continuation;", "T", "continuation", "isDispatchNeeded", "", "plus", "other", "releaseInterceptedContinuation", "toString", "", "Key", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/af.class */
public abstract class af extends kotlin.c.a implements e {

    /* renamed from: c  reason: collision with root package name */
    public static final a f38668c = new a(null);

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\u0003\u0018��2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/CoroutineDispatcher$Key;", "Lkotlin/coroutines/AbstractCoroutineContextKey;", "Lkotlin/coroutines/ContinuationInterceptor;", "Lkotlinx/coroutines/CoroutineDispatcher;", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/af$a.class */
    public static final class a extends b<e, af> {

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/CoroutineDispatcher;", "it", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, k = 3, mv = {1, 4, 2})
        /* renamed from: kotlinx.coroutines.af$a$1  reason: invalid class name */
        /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/af$a$1.class */
        static final class AnonymousClass1 extends r implements Function1<f.b, af> {

            /* renamed from: a  reason: collision with root package name */
            public static final AnonymousClass1 f38669a = new AnonymousClass1();

            AnonymousClass1() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* bridge */ /* synthetic */ af invoke(f.b bVar) {
                f.b bVar2 = bVar;
                f.b bVar3 = bVar2;
                if (!(bVar2 instanceof af)) {
                    bVar3 = null;
                }
                return (af) bVar3;
            }
        }

        private a() {
            super(e.f36647a, AnonymousClass1.f38669a);
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public af() {
        super(e.f36647a);
    }

    @Override // kotlin.c.e
    public final <T> d<T> a(d<? super T> dVar) {
        return new kotlinx.coroutines.internal.e(this, dVar);
    }

    public abstract void a(f fVar, Runnable runnable);

    @Override // kotlin.c.e
    public final void b(d<?> dVar) {
        Objects.requireNonNull(dVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        Object obj = ((kotlinx.coroutines.internal.e) dVar)._reusableCancellableContinuation;
        Object obj2 = obj;
        if (!(obj instanceof o)) {
            obj2 = null;
        }
        o oVar = (o) obj2;
        if (oVar != null) {
            oVar.i();
        }
    }

    public boolean b() {
        return true;
    }

    @Override // kotlin.c.a, kotlin.c.f.b, kotlin.c.f
    public <E extends f.b> E get(f.c<E> key) {
        p.d(key, "key");
        if (key instanceof b) {
            b bVar = (b) key;
            E e = null;
            if (bVar.a(getKey())) {
                e = (E) bVar.a(this);
                if (!(e instanceof f.b)) {
                    e = null;
                }
            }
            return e;
        } else if (e.f36647a == key) {
            return this;
        } else {
            return null;
        }
    }

    @Override // kotlin.c.a, kotlin.c.f
    public f minusKey(f.c<?> key) {
        p.d(key, "key");
        if (!(key instanceof b)) {
            return e.f36647a == key ? g.f36650a : this;
        }
        b bVar = (b) key;
        return (!bVar.a(getKey()) || bVar.a(this) == null) ? this : g.f36650a;
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + Integer.toHexString(System.identityHashCode(this));
    }
}
