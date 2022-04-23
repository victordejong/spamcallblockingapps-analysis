package p660rx.internal.util;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
import p660rx.exceptions.CompositeException;
/* renamed from: rx.internal.util.ExceptionsUtils */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/ExceptionsUtils.class */
public enum ExceptionsUtils {
    ;
    
    public static final Throwable TERMINATED = new Throwable("Terminated");

    public static boolean addThrowable(AtomicReference<Throwable> atomicReference, Throwable th) {
        Throwable th2;
        Throwable th3;
        do {
            th2 = atomicReference.get();
            if (th2 == TERMINATED) {
                return false;
            }
            if (th2 == null) {
                th3 = th;
            } else if (th2 instanceof CompositeException) {
                ArrayList arrayList = new ArrayList(((CompositeException) th2).getExceptions());
                arrayList.add(th);
                th3 = new CompositeException(arrayList);
            } else {
                th3 = new CompositeException(th2, th);
            }
        } while (!atomicReference.compareAndSet(th2, th3));
        return true;
    }

    public static boolean isTerminated(Throwable th) {
        return th == TERMINATED;
    }

    public static Throwable terminate(AtomicReference<Throwable> atomicReference) {
        Throwable th = atomicReference.get();
        Throwable th2 = TERMINATED;
        Throwable th3 = th;
        if (th != th2) {
            th3 = atomicReference.getAndSet(th2);
        }
        return th3;
    }
}
