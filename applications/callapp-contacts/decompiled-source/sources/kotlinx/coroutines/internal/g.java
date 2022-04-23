package kotlinx.coroutines.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Comparator;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.Metadata;
import kotlin.a.i;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.o;
import kotlin.p;
import kotlin.v;
import kotlinx.coroutines.ad;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u001a*\u0010\n\u001a\u0018\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0006j\u0004\u0018\u0001`\u00072\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH\u0002\u001a1\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0006j\u0002`\u00072\u0014\b\u0004\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0006H\u0082\b\u001a!\u0010\u000f\u001a\u0004\u0018\u0001H\u0010\"\b\b��\u0010\u0010*\u00020\u00052\u0006\u0010\u0011\u001a\u0002H\u0010H��¢\u0006\u0002\u0010\u0012\u001a\u001b\u0010\u0013\u001a\u00020\t*\u0006\u0012\u0002\b\u00030\u00042\b\b\u0002\u0010\u0014\u001a\u00020\tH\u0082\u0010\u001a\u0018\u0010\u0015\u001a\u00020\t*\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u0016\u001a\u00020\tH\u0002\"\u000e\u0010��\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��\"4\u0010\u0002\u001a(\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u0004\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0006j\u0002`\u00070\u0003X\u0082\u0004¢\u0006\u0002\n��\"\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��*(\b\u0002\u0010\u0017\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00062\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0006¨\u0006\u0018"}, d2 = {"cacheLock", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "exceptionCtors", "Ljava/util/WeakHashMap;", "Ljava/lang/Class;", "", "Lkotlin/Function1;", "Lkotlinx/coroutines/internal/Ctor;", "throwableFields", "", "createConstructor", "constructor", "Ljava/lang/reflect/Constructor;", "safeCtor", "block", "tryCopyException", "E", "exception", "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "fieldsCount", "accumulator", "fieldsCountOrDefault", "defaultValue", "Ctor", "kotlinx-coroutines-core"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static final int f38812a = a(Throwable.class, -1);

    /* renamed from: b  reason: collision with root package name */
    private static final ReentrantReadWriteLock f38813b = new ReentrantReadWriteLock();

    /* renamed from: c  reason: collision with root package name */
    private static final WeakHashMap<Class<? extends Throwable>, Function1<Throwable, Throwable>> f38814c = new WeakHashMap<>();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0003\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003¨\u0006\u0004"}, d2 = {"<anonymous>", "", "e", "invoke", "kotlinx/coroutines/internal/ExceptionsConstuctorKt$safeCtor$1"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/g$a.class */
    public static final class a extends r implements Function1<Throwable, Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Constructor f38815a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Constructor constructor) {
            super(1);
            this.f38815a = constructor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public Throwable invoke(Throwable th) {
            Object obj;
            Object newInstance;
            try {
                o.a aVar = o.f36812a;
                newInstance = this.f38815a.newInstance(th.getMessage(), th);
            } catch (Throwable th2) {
                o.a aVar2 = o.f36812a;
                obj = o.d(p.a(th2));
            }
            if (newInstance != null) {
                obj = o.d((Throwable) newInstance);
                Object obj2 = obj;
                if (o.b(obj)) {
                    obj2 = null;
                }
                return (Throwable) obj2;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0003\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003¨\u0006\u0004"}, d2 = {"<anonymous>", "", "e", "invoke", "kotlinx/coroutines/internal/ExceptionsConstuctorKt$safeCtor$1"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/g$b.class */
    public static final class b extends r implements Function1<Throwable, Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Constructor f38816a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Constructor constructor) {
            super(1);
            this.f38816a = constructor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public Throwable invoke(Throwable th) {
            Object obj;
            Object newInstance;
            try {
                o.a aVar = o.f36812a;
                newInstance = this.f38816a.newInstance(th);
            } catch (Throwable th2) {
                o.a aVar2 = o.f36812a;
                obj = o.d(p.a(th2));
            }
            if (newInstance != null) {
                obj = o.d((Throwable) newInstance);
                Object obj2 = obj;
                if (o.b(obj)) {
                    obj2 = null;
                }
                return (Throwable) obj2;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0003\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003¨\u0006\u0004"}, d2 = {"<anonymous>", "", "e", "invoke", "kotlinx/coroutines/internal/ExceptionsConstuctorKt$safeCtor$1"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/g$c.class */
    public static final class c extends r implements Function1<Throwable, Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Constructor f38817a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Constructor constructor) {
            super(1);
            this.f38817a = constructor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public Throwable invoke(Throwable th) {
            Object obj;
            Object newInstance;
            try {
                o.a aVar = o.f36812a;
                newInstance = this.f38817a.newInstance(th.getMessage());
            } catch (Throwable th2) {
                o.a aVar2 = o.f36812a;
                obj = o.d(p.a(th2));
            }
            if (newInstance != null) {
                Throwable th3 = (Throwable) newInstance;
                th3.initCause(th);
                obj = o.d(th3);
                Object obj2 = obj;
                if (o.b(obj)) {
                    obj2 = null;
                }
                return (Throwable) obj2;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0003\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003¨\u0006\u0004"}, d2 = {"<anonymous>", "", "e", "invoke", "kotlinx/coroutines/internal/ExceptionsConstuctorKt$safeCtor$1"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/g$d.class */
    public static final class d extends r implements Function1<Throwable, Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Constructor f38818a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Constructor constructor) {
            super(1);
            this.f38818a = constructor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public Throwable invoke(Throwable th) {
            Object obj;
            Object newInstance;
            try {
                o.a aVar = o.f36812a;
                newInstance = this.f38818a.newInstance(new Object[0]);
            } catch (Throwable th2) {
                o.a aVar2 = o.f36812a;
                obj = o.d(p.a(th2));
            }
            if (newInstance != null) {
                Throwable th3 = (Throwable) newInstance;
                th3.initCause(th);
                obj = o.d(th3);
                Object obj2 = obj;
                if (o.b(obj)) {
                    obj2 = null;
                }
                return (Throwable) obj2;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\b\n\u0002\b\u0007\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", "T", "a", "kotlin.jvm.PlatformType", com.google.api.client.googleapis.notifications.b.f31754a, "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/g$e.class */
    public static final class e<T> implements Comparator<T> {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return kotlin.b.a.a(Integer.valueOf(((Constructor) t2).getParameterTypes().length), Integer.valueOf(((Constructor) t).getParameterTypes().length));
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0001\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\b\b��\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "E", "", "it", "invoke"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/g$f.class */
    static final class f extends r implements Function1 {

        /* renamed from: a  reason: collision with root package name */
        public static final f f38819a = new f();

        f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return null;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0001\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\b\b��\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "E", "", "it", "invoke"}, k = 3, mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.internal.g$g  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/g$g.class */
    static final class C0727g extends r implements Function1 {

        /* renamed from: a  reason: collision with root package name */
        public static final C0727g f38820a = new C0727g();

        C0727g() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return null;
        }
    }

    private static final int a(Class<?> cls, int i) {
        Object obj;
        int i2;
        Class<? super Object> superclass;
        kotlin.jvm.a.a(cls);
        try {
            o.a aVar = o.f36812a;
            int i3 = 0;
            do {
                int i4 = 0;
                for (Field field : cls.getDeclaredFields()) {
                    i4 = i4;
                    if (!Modifier.isStatic(field.getModifiers())) {
                        i4++;
                    }
                }
                i2 = i3 + i4;
                superclass = cls.getSuperclass();
                i3 = i2;
                cls = superclass;
            } while (superclass != null);
            obj = o.d(Integer.valueOf(i2));
        } catch (Throwable th) {
            o.a aVar2 = o.f36812a;
            obj = o.d(p.a(th));
        }
        Object obj2 = obj;
        if (o.b(obj)) {
            obj2 = Integer.valueOf(i);
        }
        return ((Number) obj2).intValue();
    }

    /* JADX WARN: Finally extract failed */
    public static final <E extends Throwable> E a(E e2) {
        boolean z = e2 instanceof ad;
        Object obj = null;
        if (z) {
            try {
                o.a aVar = o.f36812a;
                obj = o.d(((ad) e2).a());
            } catch (Throwable th) {
                o.a aVar2 = o.f36812a;
                obj = o.d(p.a(th));
            }
            if (o.b(obj)) {
            }
            return (E) ((Throwable) obj);
        }
        ReentrantReadWriteLock reentrantReadWriteLock = f38813b;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        readLock.lock();
        try {
            Function1<Throwable, Throwable> function1 = f38814c.get(e2.getClass());
            if (function1 != null) {
                return (E) function1.invoke(e2);
            }
            if (f38812a != a(e2.getClass(), 0)) {
                ReentrantReadWriteLock.ReadLock readLock2 = reentrantReadWriteLock.readLock();
                int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
                for (int i = 0; i < readHoldCount; i++) {
                    readLock2.unlock();
                }
                ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
                writeLock.lock();
                try {
                    f38814c.put(e2.getClass(), f.f38819a);
                    v vVar = v.f38654a;
                    for (int i2 = 0; i2 < readHoldCount; i2++) {
                        readLock2.lock();
                    }
                    writeLock.unlock();
                    return null;
                } catch (Throwable th2) {
                    for (int i3 = 0; i3 < readHoldCount; i3++) {
                        readLock2.lock();
                    }
                    writeLock.unlock();
                    throw th2;
                }
            } else {
                d dVar = null;
                for (Constructor constructor : i.b((Object[]) e2.getClass().getConstructors(), (Comparator) new e())) {
                    Class<?>[] parameterTypes = constructor.getParameterTypes();
                    int length = parameterTypes.length;
                    if (length == 0) {
                        dVar = new d(constructor);
                    } else if (length != 1) {
                        if (length == 2 && kotlin.jvm.internal.p.a(parameterTypes[0], String.class) && kotlin.jvm.internal.p.a(parameterTypes[1], Throwable.class)) {
                            dVar = new a(constructor);
                        }
                        dVar = null;
                    } else {
                        Class<?> cls = parameterTypes[0];
                        if (kotlin.jvm.internal.p.a(cls, Throwable.class)) {
                            dVar = new b(constructor);
                        } else {
                            if (kotlin.jvm.internal.p.a(cls, String.class)) {
                                dVar = new c(constructor);
                            }
                            dVar = null;
                        }
                    }
                    dVar = dVar;
                    if (dVar != null) {
                        break;
                    }
                }
                ReentrantReadWriteLock reentrantReadWriteLock2 = f38813b;
                ReentrantReadWriteLock.ReadLock readLock3 = reentrantReadWriteLock2.readLock();
                int readHoldCount2 = reentrantReadWriteLock2.getWriteHoldCount() == 0 ? reentrantReadWriteLock2.getReadHoldCount() : 0;
                for (int i4 = 0; i4 < readHoldCount2; i4++) {
                    readLock3.unlock();
                }
                ReentrantReadWriteLock.WriteLock writeLock2 = reentrantReadWriteLock2.writeLock();
                writeLock2.lock();
                try {
                    f38814c.put(e2.getClass(), dVar == null ? C0727g.f38820a : dVar);
                    v vVar2 = v.f38654a;
                    for (int i5 = 0; i5 < readHoldCount2; i5++) {
                        readLock3.lock();
                    }
                    writeLock2.unlock();
                    if (dVar != null) {
                        return (E) ((Throwable) dVar.invoke(e2));
                    }
                    return null;
                } catch (Throwable th3) {
                    for (int i6 = 0; i6 < readHoldCount2; i6++) {
                        readLock3.lock();
                    }
                    writeLock2.unlock();
                    throw th3;
                }
            }
        } finally {
            readLock.unlock();
        }
    }
}
