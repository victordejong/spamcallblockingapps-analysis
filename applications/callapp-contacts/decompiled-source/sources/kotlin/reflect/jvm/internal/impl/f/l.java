package kotlin.reflect.jvm.internal.impl.f;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/f/l.class */
final class l<T> {

    /* renamed from: a  reason: collision with root package name */
    final T f37668a;

    /* renamed from: b  reason: collision with root package name */
    private final Thread f37669b = Thread.currentThread();

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(T t) {
        this.f37668a = t;
    }

    public final boolean a() {
        return this.f37669b == Thread.currentThread();
    }
}
