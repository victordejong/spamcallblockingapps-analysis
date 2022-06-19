package kotlin.reflect.jvm.internal.impl.p554f;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: kotlin.reflect.jvm.internal.impl.f.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/d.class */
public class C19274d implements AbstractC19298k {

    /* renamed from: a */
    private final Lock f65118a;

    public C19274d() {
        this(null, 1, null);
    }

    public C19274d(Lock lock) {
        C18524p.m3840d(lock, "lock");
        this.f65118a = lock;
    }

    public /* synthetic */ C19274d(Lock lock, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new ReentrantLock() : lock);
    }

    @Override // kotlin.reflect.jvm.internal.impl.p554f.AbstractC19298k
    /* renamed from: a */
    public void mo2320a() {
        this.f65118a.lock();
    }

    /* renamed from: b */
    public final Lock m2349b() {
        return this.f65118a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.p554f.AbstractC19298k
    /* renamed from: c */
    public final void mo2319c() {
        this.f65118a.unlock();
    }
}
