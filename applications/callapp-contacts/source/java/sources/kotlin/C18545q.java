package kotlin;

import com.appsflyer.share.Constants;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018�� \u0013*\u0006\b��\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004:\u0001\u0013B\u0013\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\tH\u0002R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u0006X\u0088\u000e¢\u0006\u0002\n��R\u0014\u0010\u000b\u001a\u00028��8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0014"}, m4298d2 = {"Lkotlin/SafePublicationLazyImpl;", "T", "Lkotlin/Lazy;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "initializer", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)V", "_value", "", "final", "value", "getValue", "()Ljava/lang/Object;", "isInitialized", "", "toString", "", "writeReplace", "Companion", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.q */
/* loaded from: classes5-dex2jar.jar:kotlin/q.class */
public final class C18545q<T> implements Serializable, Lazy<T> {

    /* renamed from: a */
    public static final C18546a f63630a = new C18546a(null);

    /* renamed from: e */
    private static final AtomicReferenceFieldUpdater<C18545q<?>, Object> f63631e = AtomicReferenceFieldUpdater.newUpdater(C18545q.class, Object.class, Constants.URL_CAMPAIGN);

    /* renamed from: b */
    private volatile Function0<? extends T> f63632b;

    /* renamed from: c */
    private volatile Object f63633c = C20127u.f66528a;

    /* renamed from: d */
    private final Object f63634d = C20127u.f66528a;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R^\u0010\u0003\u001aR\u0012\u0014\u0012\u0012\u0012\u0002\b\u0003 \u0006*\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0005\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00010\u0001 \u0006*(\u0012\u0014\u0012\u0012\u0012\u0002\b\u0003 \u0006*\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0005\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00010\u0001\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0007"}, m4298d2 = {"Lkotlin/SafePublicationLazyImpl$Companion;", "", "()V", "valueUpdater", "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;", "Lkotlin/SafePublicationLazyImpl;", "kotlin.jvm.PlatformType", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.q$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/q$a.class */
    public static final class C18546a {
        private C18546a() {
        }

        public /* synthetic */ C18546a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public C18545q(Function0<? extends T> initializer) {
        C18524p.m3840d(initializer, "initializer");
        this.f63632b = initializer;
    }

    private final Object writeReplace() {
        return new C18349e(mo1102a());
    }

    @Override // kotlin.Lazy
    /* renamed from: a */
    public final T mo1102a() {
        T t = (T) this.f63633c;
        if (t != C20127u.f66528a) {
            return t;
        }
        Function0<? extends T> function0 = this.f63632b;
        if (function0 != null) {
            T invoke = function0.invoke();
            if (f63631e.compareAndSet(this, C20127u.f66528a, invoke)) {
                this.f63632b = null;
                return invoke;
            }
        }
        return (T) this.f63633c;
    }

    public final String toString() {
        return this.f63633c != C20127u.f66528a ? String.valueOf(mo1102a()) : "Lazy value not initialized yet.";
    }
}
