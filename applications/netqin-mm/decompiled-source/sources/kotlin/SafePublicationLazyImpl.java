package kotlin;

import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p573f.AbstractC9907c;
import p573f.C9941m;
import p573f.p590w.p591b.AbstractC10020a;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/SafePublicationLazyImpl.class */
public final class SafePublicationLazyImpl<T> implements AbstractC9907c<T>, Serializable {
    public static final C10474a Companion = new C10474a(null);
    public static final AtomicReferenceFieldUpdater<SafePublicationLazyImpl<?>, Object> valueUpdater = AtomicReferenceFieldUpdater.newUpdater(SafePublicationLazyImpl.class, Object.class, "_value");
    public volatile Object _value = C9941m.f37133a;

    /* renamed from: final  reason: not valid java name */
    public final Object f38772final = C9941m.f37133a;
    public volatile AbstractC10020a<? extends T> initializer;

    /* renamed from: kotlin.SafePublicationLazyImpl$a */
    /* loaded from: classes2-dex2jar.jar:kotlin/SafePublicationLazyImpl$a.class */
    public static final class C10474a {
        public C10474a() {
        }

        public /* synthetic */ C10474a(C10057o oVar) {
            this();
        }
    }

    public SafePublicationLazyImpl(AbstractC10020a<? extends T> aVar) {
        C10059q.m1637b(aVar, "initializer");
        this.initializer = aVar;
    }

    private final Object writeReplace() {
        return new InitializedLazyImpl(getValue());
    }

    @Override // p573f.AbstractC9907c
    public T getValue() {
        T t = (T) this._value;
        if (t != C9941m.f37133a) {
            return t;
        }
        AbstractC10020a<? extends T> aVar = this.initializer;
        if (aVar != null) {
            T t2 = (T) aVar.invoke();
            if (valueUpdater.compareAndSet(this, C9941m.f37133a, t2)) {
                this.initializer = null;
                return t2;
            }
        }
        return (T) this._value;
    }

    public boolean isInitialized() {
        return this._value != C9941m.f37133a;
    }

    public String toString() {
        return isInitialized() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
