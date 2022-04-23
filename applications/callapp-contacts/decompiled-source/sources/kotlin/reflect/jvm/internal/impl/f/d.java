package kotlin.reflect.jvm.internal.impl.f;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/d.class */
public class d implements k {

    /* renamed from: a  reason: collision with root package name */
    private final Lock f37638a;

    public d() {
        this(null, 1, null);
    }

    public d(Lock lock) {
        p.d(lock, "lock");
        this.f37638a = lock;
    }

    public /* synthetic */ d(ReentrantLock reentrantLock, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ReentrantLock() : reentrantLock);
    }

    @Override // kotlin.reflect.jvm.internal.impl.f.k
    public void a() {
        this.f37638a.lock();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Lock b() {
        return this.f37638a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.f.k
    public final void c() {
        this.f37638a.unlock();
    }
}
