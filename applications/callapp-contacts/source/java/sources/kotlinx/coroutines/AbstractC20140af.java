package kotlinx.coroutines;

import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p521c.AbstractC18306a;
import kotlin.p521c.AbstractC18315b;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.AbstractC18333e;
import kotlin.p521c.AbstractC18335f;
import kotlin.p521c.C18341g;
import kotlinx.coroutines.internal.C20269e;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\b&\u0018�� \u00172\u00020\u00012\u00020\u0002:\u0001\u0017B\u0005¢\u0006\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0010\b\u001a\u00060\tj\u0002`\nH&J\u001c\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0010\b\u001a\u00060\tj\u0002`\nH\u0017J \u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u000e0\r\"\u0004\b��\u0010\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u000e0\rJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0011\u0010\u0012\u001a\u00020��2\u0006\u0010\u0013\u001a\u00020��H\u0087\u0002J\u0014\u0010\u0014\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\rH\u0017J\b\u0010\u0015\u001a\u00020\u0016H\u0016¨\u0006\u0018"}, m4298d2 = {"Lkotlinx/coroutines/CoroutineDispatcher;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlin/coroutines/ContinuationInterceptor;", "()V", "dispatch", "", "context", "Lkotlin/coroutines/CoroutineContext;", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "dispatchYield", "interceptContinuation", "Lkotlin/coroutines/Continuation;", "T", "continuation", "isDispatchNeeded", "", "plus", "other", "releaseInterceptedContinuation", "toString", "", "Key", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.af */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/af.class */
public abstract class AbstractC20140af extends AbstractC18306a implements AbstractC18333e {

    /* renamed from: c */
    public static final C20141a f66543c = new C20141a(null);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\u0003\u0018��2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m4298d2 = {"Lkotlinx/coroutines/CoroutineDispatcher$Key;", "Lkotlin/coroutines/AbstractCoroutineContextKey;", "Lkotlin/coroutines/ContinuationInterceptor;", "Lkotlinx/coroutines/CoroutineDispatcher;", "()V", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.af$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/af$a.class */
    public static final class C20141a extends AbstractC18315b<AbstractC18333e, AbstractC20140af> {

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m4298d2 = {"<anonymous>", "Lkotlinx/coroutines/CoroutineDispatcher;", "it", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: kotlinx.coroutines.af$a$1 */
        /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/af$a$1.class */
        public static final class C201421 extends AbstractC18526r implements Function1<AbstractC18335f.AbstractC18338b, AbstractC20140af> {

            /* renamed from: a */
            public static final C201421 f66544a = new C201421();

            C201421() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final /* bridge */ /* synthetic */ AbstractC20140af invoke(AbstractC18335f.AbstractC18338b abstractC18338b) {
                AbstractC18335f.AbstractC18338b abstractC18338b2 = abstractC18338b;
                AbstractC18335f.AbstractC18338b abstractC18338b3 = abstractC18338b2;
                if (!(abstractC18338b2 instanceof AbstractC20140af)) {
                    abstractC18338b3 = null;
                }
                return (AbstractC20140af) abstractC18338b3;
            }
        }

        private C20141a() {
            super(AbstractC18333e.f63440a, C201421.f66544a);
        }

        public /* synthetic */ C20141a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public AbstractC20140af() {
        super(AbstractC18333e.f63440a);
    }

    @Override // kotlin.p521c.AbstractC18333e
    /* renamed from: a */
    public final <T> AbstractC18332d<T> mo1090a(AbstractC18332d<? super T> abstractC18332d) {
        return new C20269e(this, abstractC18332d);
    }

    /* renamed from: a */
    public abstract void mo763a(AbstractC18335f abstractC18335f, Runnable runnable);

    @Override // kotlin.p521c.AbstractC18333e
    /* renamed from: b */
    public final void mo1089b(AbstractC18332d<?> abstractC18332d) {
        Objects.requireNonNull(abstractC18332d, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        Object obj = ((C20269e) abstractC18332d)._reusableCancellableContinuation;
        Object obj2 = obj;
        if (!(obj instanceof C20309o)) {
            obj2 = null;
        }
        C20309o c20309o = (C20309o) obj2;
        if (c20309o != null) {
            c20309o.m776i();
        }
    }

    /* renamed from: b */
    public boolean mo824b() {
        return true;
    }

    @Override // kotlin.p521c.AbstractC18306a, kotlin.p521c.AbstractC18335f.AbstractC18338b, kotlin.p521c.AbstractC18335f
    public <E extends AbstractC18335f.AbstractC18338b> E get(AbstractC18335f.AbstractC18340c<E> key) {
        C18524p.m3840d(key, "key");
        if (!(key instanceof AbstractC18315b)) {
            if (AbstractC18333e.f63440a != key) {
                return null;
            }
            return this;
        }
        AbstractC18315b abstractC18315b = (AbstractC18315b) key;
        E e = null;
        if (abstractC18315b.m4096a(getKey())) {
            e = abstractC18315b.m4097a(this);
            if (!(e instanceof AbstractC18335f.AbstractC18338b)) {
                e = null;
            }
        }
        return e;
    }

    @Override // kotlin.p521c.AbstractC18306a, kotlin.p521c.AbstractC18335f
    public AbstractC18335f minusKey(AbstractC18335f.AbstractC18340c<?> key) {
        C18524p.m3840d(key, "key");
        if (!(key instanceof AbstractC18315b)) {
            return AbstractC18333e.f63440a == key ? C18341g.f63443a : this;
        }
        AbstractC18315b abstractC18315b = (AbstractC18315b) key;
        return (!abstractC18315b.m4096a(getKey()) || abstractC18315b.m4097a(this) == null) ? this : C18341g.f63443a;
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + Integer.toHexString(System.identityHashCode(this));
    }
}
