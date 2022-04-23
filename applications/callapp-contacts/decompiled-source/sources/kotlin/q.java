package kotlin;

import com.appsflyer.share.Constants;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018�� \u0013*\u0006\b��\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004:\u0001\u0013B\u0013\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\tH\u0002R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028��\u0018\u00010\u0006X\u0088\u000e¢\u0006\u0002\n��R\u0014\u0010\u000b\u001a\u00028��8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0014"}, d2 = {"Lkotlin/SafePublicationLazyImpl;", "T", "Lkotlin/Lazy;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "initializer", "Lkotlin/Function0;", "(Lkotlin/jvm/functions/Function0;)V", "_value", "", "final", "value", "getValue", "()Ljava/lang/Object;", "isInitialized", "", "toString", "", "writeReplace", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/q.class */
public final class q<T> implements Serializable, Lazy<T> {

    /* renamed from: a  reason: collision with root package name */
    public static final a f36816a = new a(null);
    private static final AtomicReferenceFieldUpdater<q<?>, Object> e = AtomicReferenceFieldUpdater.newUpdater(q.class, Object.class, Constants.URL_CAMPAIGN);

    /* renamed from: b  reason: collision with root package name */
    private volatile Function0<? extends T> f36817b;

    /* renamed from: c  reason: collision with root package name */
    private volatile Object f36818c = u.f38653a;

    /* renamed from: d  reason: collision with root package name */
    private final Object f36819d = u.f38653a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R^\u0010\u0003\u001aR\u0012\u0014\u0012\u0012\u0012\u0002\b\u0003 \u0006*\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0005\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00010\u0001 \u0006*(\u0012\u0014\u0012\u0012\u0012\u0002\b\u0003 \u0006*\b\u0012\u0002\b\u0003\u0018\u00010\u00050\u0005\u0012\f\u0012\n \u0006*\u0004\u0018\u00010\u00010\u0001\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0007"}, d2 = {"Lkotlin/SafePublicationLazyImpl$Companion;", "", "()V", "valueUpdater", "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;", "Lkotlin/SafePublicationLazyImpl;", "kotlin.jvm.PlatformType", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:kotlin/q$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public q(Function0<? extends T> initializer) {
        p.d(initializer, "initializer");
        this.f36817b = initializer;
    }

    private final Object writeReplace() {
        return new e(a());
    }

    @Override // kotlin.Lazy
    public final T a() {
        T t = (T) this.f36818c;
        if (t != u.f38653a) {
            return t;
        }
        Function0<? extends T> function0 = this.f36817b;
        if (function0 != null) {
            T t2 = (T) function0.invoke();
            if (e.compareAndSet(this, u.f38653a, t2)) {
                this.f36817b = null;
                return t2;
            }
        }
        return (T) this.f36818c;
    }

    public final String toString() {
        return this.f36818c != u.f38653a ? String.valueOf(a()) : "Lazy value not initialized yet.";
    }
}
