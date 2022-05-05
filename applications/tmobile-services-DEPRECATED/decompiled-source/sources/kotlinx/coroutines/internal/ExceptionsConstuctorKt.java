package kotlinx.coroutines.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CopyableThrowable;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a1\u0010\u0005\u001a\u0018\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0002j\u0004\u0018\u0001`\u00042\n\u0010\u0001\u001a\u0006\u0012\u0002\b\u00030��H\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001a8\u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002j\u0002`\u00042\u0014\b\u0004\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002H\u0082\b¢\u0006\u0004\b\b\u0010\t\u001a#\u0010\f\u001a\u0004\u0018\u00018��\"\b\b��\u0010\n*\u00020\u00032\u0006\u0010\u000b\u001a\u00028��H��¢\u0006\u0004\b\f\u0010\r\u001a\"\u0010\u0011\u001a\u00020\u000f*\u0006\u0012\u0002\b\u00030\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u000fH\u0082\u0010¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u001f\u0010\u0014\u001a\u00020\u000f*\u0006\u0012\u0002\b\u00030\u000e2\u0006\u0010\u0013\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0014\u0010\u0012\"\u0016\u0010\u0016\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017\"<\u0010\u0019\u001a(\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u000e\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002j\u0002`\u00040\u00188\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a\"\u0016\u0010\u001b\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c*(\b\u0002\u0010\u001d\"\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002¨\u0006\u001e"}, d2 = {"Ljava/lang/reflect/Constructor;", "constructor", "Lkotlin/Function1;", "", "Lkotlinx/coroutines/internal/Ctor;", "createConstructor", "(Ljava/lang/reflect/Constructor;)Lkotlin/Function1;", "block", "safeCtor", "(Lkotlin/Function1;)Lkotlin/Function1;", "E", "exception", "tryCopyException", "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "Ljava/lang/Class;", "", "accumulator", "fieldsCount", "(Ljava/lang/Class;I)I", "defaultValue", "fieldsCountOrDefault", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "cacheLock", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "Ljava/util/WeakHashMap;", "exceptionCtors", "Ljava/util/WeakHashMap;", "throwableFields", "I", "Ctor", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/ExceptionsConstuctorKt.class */
public final class ExceptionsConstuctorKt {

    /* renamed from: a */
    private static final int f23897a = m563d(Throwable.class, -1);

    /* renamed from: b */
    private static final ReentrantReadWriteLock f23898b = new ReentrantReadWriteLock();

    /* renamed from: c */
    private static final WeakHashMap<Class<? extends Throwable>, Function1<Throwable, Throwable>> f23899c = new WeakHashMap<>();

    /* renamed from: a */
    private static final Function1<Throwable, Throwable> m566a(Constructor<?> constructor) {
        Function1<Throwable, Throwable> function1;
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        int length = parameterTypes.length;
        if (length == 0) {
            function1 = new ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$4(constructor);
        } else if (length == 1) {
            Class<?> cls = parameterTypes[0];
            if (Intrinsics.m1834a(cls, Throwable.class)) {
                function1 = new ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$2(constructor);
            } else {
                function1 = null;
                if (Intrinsics.m1834a(cls, String.class)) {
                    function1 = new ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$3(constructor);
                }
            }
        } else if (length != 2) {
            function1 = null;
        } else {
            function1 = null;
            if (Intrinsics.m1834a(parameterTypes[0], String.class)) {
                function1 = null;
                if (Intrinsics.m1834a(parameterTypes[1], Throwable.class)) {
                    function1 = new ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$1(constructor);
                }
            }
        }
        return function1;
    }

    /* renamed from: b */
    private static final int m565b(Class<?> cls, int i) {
        do {
            int i2 = 0;
            for (Field field : cls.getDeclaredFields()) {
                i2 = i2;
                if (!Modifier.isStatic(field.getModifiers())) {
                    i2++;
                }
            }
            i += i2;
            cls = cls.getSuperclass();
        } while (cls != null);
        return i;
    }

    /* renamed from: c */
    static /* synthetic */ int m564c(Class cls, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return m565b(cls, i);
    }

    /* renamed from: d */
    private static final int m563d(Class<?> cls, int i) {
        Object obj;
        JvmClassMappingKt.m1864c(cls);
        try {
            Result.Companion companion = Result.f20418g;
            obj = Integer.valueOf(m564c(cls, 0, 1, null));
            Result.m2481b(obj);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.f20418g;
            obj = ResultKt.m2473a(th);
            Result.m2481b(obj);
        }
        Object obj2 = obj;
        if (Result.m2477f(obj)) {
            obj2 = Integer.valueOf(i);
        }
        return ((Number) obj2).intValue();
    }

    /* JADX WARN: Finally extract failed */
    @Nullable
    /* renamed from: e */
    public static final <E extends Throwable> E m562e(@NotNull E e) {
        List Q;
        boolean z = e instanceof CopyableThrowable;
        E e2 = null;
        Object obj = null;
        if (z) {
            try {
                Result.Companion companion = Result.f20418g;
                obj = ((CopyableThrowable) e).mo1092a();
                Result.m2481b(obj);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.f20418g;
                obj = ResultKt.m2473a(th);
                Result.m2481b(obj);
            }
            if (Result.m2477f(obj)) {
            }
            return (E) ((Throwable) obj);
        }
        ReentrantReadWriteLock.ReadLock readLock = f23898b.readLock();
        readLock.lock();
        try {
            Function1<Throwable, Throwable> function1 = f23899c.get(e.getClass());
            if (function1 != null) {
                return (E) function1.invoke(e);
            }
            if (f23897a != m563d(e.getClass(), 0)) {
                ReentrantReadWriteLock reentrantReadWriteLock = f23898b;
                ReentrantReadWriteLock.ReadLock readLock2 = reentrantReadWriteLock.readLock();
                int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
                for (int i = 0; i < readHoldCount; i++) {
                    readLock2.unlock();
                }
                ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
                writeLock.lock();
                try {
                    f23899c.put(e.getClass(), ExceptionsConstuctorKt$tryCopyException$4$1.f23905f);
                    Unit unit = Unit.f20447a;
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
                Q = ArraysKt___ArraysKt.m2244Q(e.getClass().getConstructors(), new Comparator<T>() { // from class: kotlinx.coroutines.internal.ExceptionsConstuctorKt$tryCopyException$$inlined$sortedByDescending$1
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        int b;
                        b = ComparisonsKt__ComparisonsKt.m1949b(Integer.valueOf(((Constructor) t2).getParameterTypes().length), Integer.valueOf(((Constructor) t).getParameterTypes().length));
                        return b;
                    }
                });
                Iterator it = Q.iterator();
                Function1<Throwable, Throwable> function12 = null;
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Function1<Throwable, Throwable> a = m566a((Constructor) it.next());
                    function12 = a;
                    if (a != null) {
                        function12 = a;
                        break;
                    }
                }
                ReentrantReadWriteLock reentrantReadWriteLock2 = f23898b;
                ReentrantReadWriteLock.ReadLock readLock3 = reentrantReadWriteLock2.readLock();
                int readHoldCount2 = reentrantReadWriteLock2.getWriteHoldCount() == 0 ? reentrantReadWriteLock2.getReadHoldCount() : 0;
                for (int i4 = 0; i4 < readHoldCount2; i4++) {
                    readLock3.unlock();
                }
                ReentrantReadWriteLock.WriteLock writeLock2 = reentrantReadWriteLock2.writeLock();
                writeLock2.lock();
                try {
                    f23899c.put(e.getClass(), function12 != null ? function12 : ExceptionsConstuctorKt$tryCopyException$5$1.f23906f);
                    Unit unit2 = Unit.f20447a;
                    for (int i5 = 0; i5 < readHoldCount2; i5++) {
                        readLock3.lock();
                    }
                    writeLock2.unlock();
                    if (function12 != null) {
                        e2 = (E) function12.invoke(e);
                    }
                    return e2;
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
