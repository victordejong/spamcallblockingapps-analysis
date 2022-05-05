package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Comparator;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.Metadata;
import kotlinx.coroutines.CopyableThrowable;
import p626l.C14979k;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p632u.C15013i;
import p626l.p633v.C15036a;
import p626l.p641z.C15105a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\u001a*\u0010\n\u001a\u0018\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0006j\u0004\u0018\u0001`\u00072\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH\u0002\u001a1\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0006j\u0002`\u00072\u0014\b\u0004\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0006H\u0082\b\u001a!\u0010\u000f\u001a\u0004\u0018\u0001H\u0010\"\b\b��\u0010\u0010*\u00020\u00052\u0006\u0010\u0011\u001a\u0002H\u0010H��¢\u0006\u0002\u0010\u0012\u001a\u001b\u0010\u0013\u001a\u00020\t*\u0006\u0012\u0002\b\u00030\u00042\b\b\u0002\u0010\u0014\u001a\u00020\tH\u0082\u0010\u001a\u0018\u0010\u0015\u001a\u00020\t*\u0006\u0012\u0002\b\u00030\u00042\u0006\u0010\u0016\u001a\u00020\tH\u0002\"\u000e\u0010��\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��\"4\u0010\u0002\u001a(\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u0004\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0006j\u0002`\u00070\u0003X\u0082\u0004¢\u0006\u0002\n��\"\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��*(\b\u0002\u0010\u0017\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00062\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0006¨\u0006\u0018"}, m815d2 = {"cacheLock", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "exceptionCtors", "Ljava/util/WeakHashMap;", "Ljava/lang/Class;", "", "Lkotlin/Function1;", "Lkotlinx/coroutines/internal/Ctor;", "throwableFields", "", "createConstructor", "constructor", "Ljava/lang/reflect/Constructor;", "safeCtor", "block", "tryCopyException", ExifInterface.LONGITUDE_EAST, "exception", "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "fieldsCount", "accumulator", "fieldsCountOrDefault", "defaultValue", "Ctor", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/ExceptionsConstuctorKt.class */
public final class ExceptionsConstuctorKt {
    public static final int throwableFields = fieldsCountOrDefault(Throwable.class, -1);
    public static final ReentrantReadWriteLock cacheLock = new ReentrantReadWriteLock();
    public static final WeakHashMap<Class<? extends Throwable>, AbstractC15118l<Throwable, Throwable>> exceptionCtors = new WeakHashMap<>();

    public static final AbstractC15118l<Throwable, Throwable> createConstructor(Constructor<?> constructor) {
        AbstractC15118l<Throwable, Throwable> lVar;
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        int length = parameterTypes.length;
        if (length == 0) {
            lVar = new ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$4(constructor);
        } else if (length == 1) {
            Class<?> cls = parameterTypes[0];
            if (C15149k.m384a(cls, Throwable.class)) {
                lVar = new ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$2(constructor);
            } else {
                lVar = null;
                if (C15149k.m384a(cls, String.class)) {
                    lVar = new ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$3(constructor);
                }
            }
        } else if (length != 2) {
            lVar = null;
        } else {
            lVar = null;
            if (C15149k.m384a(parameterTypes[0], String.class)) {
                lVar = null;
                if (C15149k.m384a(parameterTypes[1], Throwable.class)) {
                    lVar = new ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$1(constructor);
                }
            }
        }
        return lVar;
    }

    public static final int fieldsCount(Class<?> cls, int i) {
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

    public static /* synthetic */ int fieldsCount$default(Class cls, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return fieldsCount(cls, i);
    }

    public static final int fieldsCountOrDefault(Class<?> cls, int i) {
        Object obj;
        C15105a.m426a((Class) cls);
        try {
            C14979k.C14980a aVar = C14979k.f33013a;
            obj = Integer.valueOf(fieldsCount$default(cls, 0, 1, null));
            C14979k.m657a(obj);
        } catch (Throwable th) {
            C14979k.C14980a aVar2 = C14979k.f33013a;
            obj = C14982l.m652a(th);
            C14979k.m657a(obj);
        }
        Object obj2 = obj;
        if (C14979k.m655c(obj)) {
            obj2 = Integer.valueOf(i);
        }
        return ((Number) obj2).intValue();
    }

    public static final AbstractC15118l<Throwable, Throwable> safeCtor(AbstractC15118l<? super Throwable, ? extends Throwable> lVar) {
        return new ExceptionsConstuctorKt$safeCtor$1(lVar);
    }

    /* JADX WARN: Finally extract failed */
    public static final <E extends Throwable> E tryCopyException(E e) {
        Object obj;
        E e2 = null;
        if (e instanceof CopyableThrowable) {
            try {
                C14979k.C14980a aVar = C14979k.f33013a;
                obj = ((CopyableThrowable) e).createCopy();
                C14979k.m657a(obj);
            } catch (Throwable th) {
                C14979k.C14980a aVar2 = C14979k.f33013a;
                obj = C14982l.m652a(th);
                C14979k.m657a(obj);
            }
            Object obj2 = obj;
            if (C14979k.m655c(obj)) {
                obj2 = null;
            }
            return (E) ((Throwable) obj2);
        }
        ReentrantReadWriteLock.ReadLock readLock = cacheLock.readLock();
        readLock.lock();
        try {
            AbstractC15118l<Throwable, Throwable> lVar = exceptionCtors.get(e.getClass());
            if (lVar != null) {
                return (E) lVar.invoke(e);
            }
            if (throwableFields != fieldsCountOrDefault(e.getClass(), 0)) {
                ReentrantReadWriteLock reentrantReadWriteLock = cacheLock;
                ReentrantReadWriteLock.ReadLock readLock2 = reentrantReadWriteLock.readLock();
                int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
                for (int i = 0; i < readHoldCount; i++) {
                    readLock2.unlock();
                }
                ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
                writeLock.lock();
                try {
                    exceptionCtors.put(e.getClass(), ExceptionsConstuctorKt$tryCopyException$4$1.INSTANCE);
                    C14989s sVar = C14989s.f33022a;
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
                Iterator it = C15013i.m576c((Object[]) e.getClass().getConstructors(), (Comparator) new Comparator<T>() { // from class: kotlinx.coroutines.internal.ExceptionsConstuctorKt$tryCopyException$$inlined$sortedByDescending$1
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return C15036a.m498a(Integer.valueOf(((Constructor) t2).getParameterTypes().length), Integer.valueOf(((Constructor) t).getParameterTypes().length));
                    }
                }).iterator();
                AbstractC15118l<Throwable, Throwable> lVar2 = null;
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    AbstractC15118l<Throwable, Throwable> createConstructor = createConstructor((Constructor) it.next());
                    lVar2 = createConstructor;
                    if (createConstructor != null) {
                        lVar2 = createConstructor;
                        break;
                    }
                }
                ReentrantReadWriteLock reentrantReadWriteLock2 = cacheLock;
                ReentrantReadWriteLock.ReadLock readLock3 = reentrantReadWriteLock2.readLock();
                int readHoldCount2 = reentrantReadWriteLock2.getWriteHoldCount() == 0 ? reentrantReadWriteLock2.getReadHoldCount() : 0;
                for (int i4 = 0; i4 < readHoldCount2; i4++) {
                    readLock3.unlock();
                }
                ReentrantReadWriteLock.WriteLock writeLock2 = reentrantReadWriteLock2.writeLock();
                writeLock2.lock();
                try {
                    exceptionCtors.put(e.getClass(), lVar2 != null ? lVar2 : ExceptionsConstuctorKt$tryCopyException$5$1.INSTANCE);
                    C14989s sVar2 = C14989s.f33022a;
                    for (int i5 = 0; i5 < readHoldCount2; i5++) {
                        readLock3.lock();
                    }
                    writeLock2.unlock();
                    if (lVar2 != null) {
                        e2 = (E) lVar2.invoke(e);
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
