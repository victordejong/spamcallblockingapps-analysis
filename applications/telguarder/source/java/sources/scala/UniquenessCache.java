package scala;

import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u000154a!\u0001\u0002\u0002\u0002\t!!aD+oSF,XM\\3tg\u000e\u000b7\r[3\u000b\u0003\r\tQa]2bY\u0006,2!B\t\u001c'\t\u0001a\u0001\u0005\u0002\b\u00115\t!!\u0003\u0002\n\u0005\t1\u0011I\\=SK\u001aDQa\u0003\u0001\u0005\u00025\ta\u0001P5oSRt4\u0001\u0001\u000b\u0002\u001dA!q\u0001A\b\u001b!\t\u0001\u0012\u0003\u0004\u0001\u0005\u000bI\u0001!\u0019A\n\u0003\u0003-\u000b\"\u0001F\f\u0011\u0005\u001d)\u0012B\u0001\f\u0003\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"a\u0002\r\n\u0005e\u0011!aA!osB\u0011\u0001c\u0007\u0003\u00069\u0001\u0011\r!\b\u0002\u0002-F\u0011ad\u0006\t\u0003\u000f}I!\u0001\t\u0002\u0003\t9+H\u000e\u001c\u0005\bE\u0001\u0011\r\u0011\"\u0003$\u0003\r\u0011x\u000f\\\u000b\u0002IA\u0011QEL\u0007\u0002M)\u0011q\u0005K\u0001\u0006Y>\u001c7n\u001d\u0006\u0003S)\n!bY8oGV\u0014(/\u001a8u\u0015\tYC&\u0001\u0003vi&d'\"A\u0017\u0002\t)\fg/Y\u0005\u0003_\u0019\u0012aCU3f]R\u0014\u0018M\u001c;SK\u0006$wK]5uK2{7m\u001b\u0005\u0007c\u0001\u0001\u000b\u0011\u0002\u0013\u0002\tI<H\u000e\t\u0005\bg\u0001\u0011\r\u0011\"\u00035\u0003\u0015\u0011Hn\\2l+\u0005)\u0004C\u0001\u001c:\u001b\u00059$B\u0001\u001d'\u0003Y\u0011V-\u001a8ue\u0006tGOU3bI^\u0013\u0018\u000e^3M_\u000e\\\u0017B\u0001\u001e8\u0005!\u0011V-\u00193M_\u000e\\\u0007B\u0002\u001f\u0001A\u0003%Q'\u0001\u0004sY>\u001c7\u000e\t\u0005\b}\u0001\u0011\r\u0011\"\u0003@\u0003\u00159Hn\\2l+\u0005\u0001\u0005C\u0001\u001cB\u0013\t\u0011uGA\u0005Xe&$X\rT8dW\"1A\t\u0001Q\u0001\n\u0001\u000baa\u001e7pG.\u0004\u0003b\u0002$\u0001\u0005\u0004%IaR\u0001\u0004[\u0006\u0004X#\u0001%\u0011\t%Su\u0002T\u0007\u0002U%\u00111J\u000b\u0002\f/\u0016\f7\u000eS1tQ6\u000b\u0007\u000fE\u0002N%ji\u0011A\u0014\u0006\u0003\u001fB\u000b1A]3g\u0015\t\tF&\u0001\u0003mC:<\u0017BA*O\u000559V-Y6SK\u001a,'/\u001a8dK\"1Q\u000b\u0001Q\u0001\n!\u000bA!\\1qA!)q\u000b\u0001D\t1\u0006aa/\u00197vK\u001a\u0013x.\\&fsR\u0011!$\u0017\u0005\u00065Z\u0003\raD\u0001\u0002W\")A\f\u0001D\t;\u0006a1.Z=Ge>lg+\u00197vKR\u0011a,\u0019\t\u0004\u000f}{\u0011B\u00011\u0003\u0005\u0019y\u0005\u000f^5p]\")!m\u0017a\u00015\u0005\ta\u000fC\u0003e\u0001\u0011\u0005Q-A\u0003baBd\u0017\u0010\u0006\u0002\u001bM\")qm\u0019a\u0001\u001f\u0005!a.Y7f\u0011\u0015I\u0007\u0001\"\u0001k\u0003\u001d)h.\u00199qYf$\"AX6\t\u000b1D\u0007\u0019\u0001\u000e\u0002\u000b=$\b.\u001a:")
/* loaded from: classes3-dex2jar.jar:scala/UniquenessCache.class */
public abstract class UniquenessCache<K, V> {
    private final ReentrantReadWriteLock rwl = new ReentrantReadWriteLock();
    private final ReentrantReadWriteLock.ReadLock rlock = rwl().readLock();
    private final ReentrantReadWriteLock.WriteLock wlock = rwl().writeLock();
    private final WeakHashMap<K, WeakReference<V>> map = new WeakHashMap<>();

    /* JADX WARN: Finally extract failed */
    private final Object cached$1(Object obj) {
        rlock().lock();
        try {
            WeakReference<V> weakReference = map().get(obj);
            V v = weakReference == null ? null : weakReference.get();
            rlock().unlock();
            return v;
        } catch (Throwable th) {
            rlock().unlock();
            throw th;
        }
    }

    private WeakHashMap<K, WeakReference<V>> map() {
        return this.map;
    }

    private ReentrantReadWriteLock.ReadLock rlock() {
        return this.rlock;
    }

    private ReentrantReadWriteLock rwl() {
        return this.rwl;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    private final Object updateCache$1(Object obj) {
        wlock().lock();
        try {
            Object cached$1 = cached$1(obj);
            Object obj2 = cached$1;
            if (cached$1 == null) {
                map().remove(obj);
                obj2 = valueFromKey(obj);
                map().put(obj, new WeakReference<>(obj2));
            }
            wlock().unlock();
            return obj2;
        } catch (Throwable th) {
            wlock().unlock();
            throw th;
        }
    }

    private ReentrantReadWriteLock.WriteLock wlock() {
        return this.wlock;
    }

    public V apply(K k) {
        Object cached$1 = cached$1(k);
        Object obj = cached$1;
        if (cached$1 == null) {
            obj = updateCache$1(k);
        }
        return (V) obj;
    }

    public abstract Option<K> keyFromValue(V v);

    public Option<K> unapply(V v) {
        return keyFromValue(v);
    }

    public abstract V valueFromKey(K k);
}
