package kotlinx.coroutines.internal;

import com.google.api.client.googleapis.notifications.C15291b;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Comparator;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.C18539o;
import kotlin.C18542p;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.C18458a;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18273i;
import kotlin.p520b.C18299a;
import kotlinx.coroutines.AbstractC20138ad;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u001a*\u0010\n\u001a\u0018\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0006j\u0004\u0018\u0001`\u00072\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH\u0002\u001a1\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0006j\u0002`\u00072\u0014\b\u0004\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0006H\u0082\b\u001a!\u0010\u000f\u001a\u0004\u0018\u0001H\u0010\"\b\b��\u0010\u0010*\u00020\u00052\u0006\u0010\u0011\u001a\u0002H\u0010H��¢\u0006\u0002\u0010\u0012\u001a\u001b\u0010\u0013\u001a\u00020\t*\u0006\u0012\u0002\b\u00030\u00042\b\b\u0002\u0010\u0014\u001a\u00020\tH\u0082\u0010\u001a\u0018\u0010\u0015\u001a\u00020\t*\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u0016\u001a\u00020\tH\u0002\"\u000e\u0010��\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��\"4\u0010\u0002\u001a(\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u0004\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0006j\u0002`\u00070\u0003X\u0082\u0004¢\u0006\u0002\n��\"\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��*(\b\u0002\u0010\u0017\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00062\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0006¨\u0006\u0018"}, m4298d2 = {"cacheLock", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "exceptionCtors", "Ljava/util/WeakHashMap;", "Ljava/lang/Class;", "", "Lkotlin/Function1;", "Lkotlinx/coroutines/internal/Ctor;", "throwableFields", "", "createConstructor", "constructor", "Ljava/lang/reflect/Constructor;", "safeCtor", "block", "tryCopyException", "E", "exception", "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "fieldsCount", "accumulator", "fieldsCountOrDefault", "defaultValue", "Ctor", "kotlinx-coroutines-core"}, m4297k = 2, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.internal.g */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/g.class */
public final class C20271g {

    /* renamed from: a */
    private static final int f66735a = m872a(Throwable.class, -1);

    /* renamed from: b */
    private static final ReentrantReadWriteLock f66736b = new ReentrantReadWriteLock();

    /* renamed from: c */
    private static final WeakHashMap<Class<? extends Throwable>, Function1<Throwable, Throwable>> f66737c = new WeakHashMap<>();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0010\u0003\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003¨\u0006\u0004"}, m4298d2 = {"<anonymous>", "", "e", "invoke", "kotlinx/coroutines/internal/ExceptionsConstuctorKt$safeCtor$1"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.internal.g$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/g$a.class */
    public static final class C20272a extends AbstractC18526r implements Function1<Throwable, Throwable> {

        /* renamed from: a */
        final /* synthetic */ Constructor f66738a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20272a(Constructor constructor) {
            super(1);
            this.f66738a = constructor;
        }

        /* renamed from: a */
        public Throwable invoke(Throwable th) {
            Object obj;
            Object newInstance;
            try {
                C18539o.C18540a c18540a = C18539o.f63626a;
                newInstance = this.f66738a.newInstance(th.getMessage(), th);
            } catch (Throwable th2) {
                C18539o.C18540a c18540a2 = C18539o.f63626a;
                obj = C18539o.m3836d(C18542p.m3834a(th2));
            }
            if (newInstance != null) {
                obj = C18539o.m3836d((Throwable) newInstance);
                Object obj2 = obj;
                if (C18539o.m3838b(obj)) {
                    obj2 = null;
                }
                return (Throwable) obj2;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0010\u0003\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003¨\u0006\u0004"}, m4298d2 = {"<anonymous>", "", "e", "invoke", "kotlinx/coroutines/internal/ExceptionsConstuctorKt$safeCtor$1"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.internal.g$b */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/g$b.class */
    public static final class C20273b extends AbstractC18526r implements Function1<Throwable, Throwable> {

        /* renamed from: a */
        final /* synthetic */ Constructor f66739a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20273b(Constructor constructor) {
            super(1);
            this.f66739a = constructor;
        }

        /* renamed from: a */
        public Throwable invoke(Throwable th) {
            Object obj;
            Object newInstance;
            try {
                C18539o.C18540a c18540a = C18539o.f63626a;
                newInstance = this.f66739a.newInstance(th);
            } catch (Throwable th2) {
                C18539o.C18540a c18540a2 = C18539o.f63626a;
                obj = C18539o.m3836d(C18542p.m3834a(th2));
            }
            if (newInstance != null) {
                obj = C18539o.m3836d((Throwable) newInstance);
                Object obj2 = obj;
                if (C18539o.m3838b(obj)) {
                    obj2 = null;
                }
                return (Throwable) obj2;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0010\u0003\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003¨\u0006\u0004"}, m4298d2 = {"<anonymous>", "", "e", "invoke", "kotlinx/coroutines/internal/ExceptionsConstuctorKt$safeCtor$1"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.internal.g$c */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/g$c.class */
    public static final class C20274c extends AbstractC18526r implements Function1<Throwable, Throwable> {

        /* renamed from: a */
        final /* synthetic */ Constructor f66740a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20274c(Constructor constructor) {
            super(1);
            this.f66740a = constructor;
        }

        /* renamed from: a */
        public Throwable invoke(Throwable th) {
            Object obj;
            Object newInstance;
            try {
                C18539o.C18540a c18540a = C18539o.f63626a;
                newInstance = this.f66740a.newInstance(th.getMessage());
            } catch (Throwable th2) {
                C18539o.C18540a c18540a2 = C18539o.f63626a;
                obj = C18539o.m3836d(C18542p.m3834a(th2));
            }
            if (newInstance != null) {
                Throwable th3 = (Throwable) newInstance;
                th3.initCause(th);
                obj = C18539o.m3836d(th3);
                Object obj2 = obj;
                if (C18539o.m3838b(obj)) {
                    obj2 = null;
                }
                return (Throwable) obj2;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0010\u0003\n\u0002\b\u0003\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0003¨\u0006\u0004"}, m4298d2 = {"<anonymous>", "", "e", "invoke", "kotlinx/coroutines/internal/ExceptionsConstuctorKt$safeCtor$1"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.internal.g$d */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/g$d.class */
    public static final class C20275d extends AbstractC18526r implements Function1<Throwable, Throwable> {

        /* renamed from: a */
        final /* synthetic */ Constructor f66741a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20275d(Constructor constructor) {
            super(1);
            this.f66741a = constructor;
        }

        /* renamed from: a */
        public Throwable invoke(Throwable th) {
            Object obj;
            Object newInstance;
            try {
                C18539o.C18540a c18540a = C18539o.f63626a;
                newInstance = this.f66741a.newInstance(new Object[0]);
            } catch (Throwable th2) {
                C18539o.C18540a c18540a2 = C18539o.f63626a;
                obj = C18539o.m3836d(C18542p.m3834a(th2));
            }
            if (newInstance != null) {
                Throwable th3 = (Throwable) newInstance;
                th3.initCause(th);
                obj = C18539o.m3836d(th3);
                Object obj2 = obj;
                if (C18539o.m3838b(obj)) {
                    obj2 = null;
                }
                return (Throwable) obj2;
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Throwable");
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0010\b\n\u0002\b\u0007\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, m4298d2 = {"<anonymous>", "", "T", "a", "kotlin.jvm.PlatformType", C15291b.f55271a, "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.internal.g$e */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/g$e.class */
    public static final class C20276e<T> implements Comparator<T> {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return C18299a.m4103a(Integer.valueOf(((Constructor) t2).getParameterTypes().length), Integer.valueOf(((Constructor) t).getParameterTypes().length));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u0001\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\b\b��\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "E", "", "it", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.internal.g$f */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/g$f.class */
    public static final class C20277f extends AbstractC18526r implements Function1 {

        /* renamed from: a */
        public static final C20277f f66742a = new C20277f();

        C20277f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u0001\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\b\b��\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "E", "", "it", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.internal.g$g */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/internal/g$g.class */
    public static final class C20278g extends AbstractC18526r implements Function1 {

        /* renamed from: a */
        public static final C20278g f66743a = new C20278g();

        C20278g() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return null;
        }
    }

    /* renamed from: a */
    private static final int m872a(Class<?> cls, int i) {
        Object obj;
        Field[] declaredFields;
        int i2;
        int i3;
        Class<? super Object> superclass;
        C18458a.m3895a(cls);
        try {
            C18539o.C18540a c18540a = C18539o.f63626a;
            int i4 = 0;
            do {
                int length = cls.getDeclaredFields().length;
                int i5 = 0;
                int i6 = 0;
                while (true) {
                    i2 = i6;
                    if (i5 >= length) {
                        break;
                    }
                    int i7 = i2;
                    if (!Modifier.isStatic(declaredFields[i5].getModifiers())) {
                        i7 = i2 + 1;
                    }
                    i5++;
                    i6 = i7;
                }
                i3 = i4 + i2;
                superclass = cls.getSuperclass();
                i4 = i3;
                cls = superclass;
            } while (superclass != null);
            obj = C18539o.m3836d(Integer.valueOf(i3));
        } catch (Throwable th) {
            C18539o.C18540a c18540a2 = C18539o.f63626a;
            obj = C18539o.m3836d(C18542p.m3834a(th));
        }
        Integer num = obj;
        if (C18539o.m3838b(obj)) {
            num = Integer.valueOf(i);
        }
        return ((Number) num).intValue();
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static final <E extends Throwable> E m871a(E e) {
        Object obj;
        C20272a c20272a;
        if (e instanceof AbstractC20138ad) {
            try {
                C18539o.C18540a c18540a = C18539o.f63626a;
                obj = C18539o.m3836d(((AbstractC20138ad) e).mo1095a());
            } catch (Throwable th) {
                C18539o.C18540a c18540a2 = C18539o.f63626a;
                obj = C18539o.m3836d(C18542p.m3834a(th));
            }
            if (C18539o.m3838b(obj)) {
                obj = null;
            }
            return (E) obj;
        }
        ReentrantReadWriteLock reentrantReadWriteLock = f66736b;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        readLock.lock();
        try {
            Function1<Throwable, Throwable> function1 = f66737c.get(e.getClass());
            if (function1 != null) {
                return (E) function1.invoke(e);
            }
            if (f66735a != m872a(e.getClass(), 0)) {
                ReentrantReadWriteLock.ReadLock readLock2 = reentrantReadWriteLock.readLock();
                int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
                for (int i = 0; i < readHoldCount; i++) {
                    readLock2.unlock();
                }
                ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
                writeLock.lock();
                try {
                    f66737c.put(e.getClass(), C20277f.f66742a);
                    C20128v c20128v = C20128v.f66529a;
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
            }
            Iterator it2 = C18273i.m4190b((Object[]) e.getClass().getConstructors(), (Comparator) new C20276e()).iterator();
            C20278g c20278g = null;
            do {
                c20272a = c20278g;
                if (!it2.hasNext()) {
                    break;
                }
                Constructor constructor = (Constructor) it2.next();
                Class<?>[] parameterTypes = constructor.getParameterTypes();
                int length = parameterTypes.length;
                if (length == 0) {
                    c20272a = new C20275d(constructor);
                } else if (length != 1) {
                    if (length == 2 && C18524p.m3850a(parameterTypes[0], String.class) && C18524p.m3850a(parameterTypes[1], Throwable.class)) {
                        c20272a = new C20272a(constructor);
                    }
                    c20272a = null;
                } else {
                    Class<?> cls = parameterTypes[0];
                    if (C18524p.m3850a(cls, Throwable.class)) {
                        c20272a = new C20273b(constructor);
                    } else {
                        if (C18524p.m3850a(cls, String.class)) {
                            c20272a = new C20274c(constructor);
                        }
                        c20272a = null;
                    }
                }
                c20278g = c20272a;
            } while (c20272a == null);
            ReentrantReadWriteLock reentrantReadWriteLock2 = f66736b;
            ReentrantReadWriteLock.ReadLock readLock3 = reentrantReadWriteLock2.readLock();
            int readHoldCount2 = reentrantReadWriteLock2.getWriteHoldCount() == 0 ? reentrantReadWriteLock2.getReadHoldCount() : 0;
            for (int i4 = 0; i4 < readHoldCount2; i4++) {
                readLock3.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock2 = reentrantReadWriteLock2.writeLock();
            writeLock2.lock();
            try {
                f66737c.put(e.getClass(), c20272a == null ? C20278g.f66743a : c20272a);
                C20128v c20128v2 = C20128v.f66529a;
                for (int i5 = 0; i5 < readHoldCount2; i5++) {
                    readLock3.lock();
                }
                writeLock2.unlock();
                if (c20272a == null) {
                    return null;
                }
                return (E) c20272a.invoke(e);
            } catch (Throwable th3) {
                for (int i6 = 0; i6 < readHoldCount2; i6++) {
                    readLock3.lock();
                }
                writeLock2.unlock();
                throw th3;
            }
        } finally {
            readLock.unlock();
        }
    }
}
