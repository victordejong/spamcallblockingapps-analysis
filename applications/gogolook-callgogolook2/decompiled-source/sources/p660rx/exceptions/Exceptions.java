package p660rx.exceptions;

import java.util.HashSet;
import java.util.List;
import p660rx.Observer;
/* renamed from: rx.exceptions.Exceptions */
/* loaded from: classes3-dex2jar.jar:rx/exceptions/Exceptions.class */
public final class Exceptions {
    public static void addCause(Throwable th, Throwable th2) {
        Throwable th3;
        HashSet hashSet = new HashSet();
        int i = 0;
        while (true) {
            th3 = th;
            if (th.getCause() != null) {
                if (i < 25) {
                    th = th.getCause();
                    if (hashSet.contains(th.getCause())) {
                        th3 = th;
                        break;
                    } else {
                        hashSet.add(th.getCause());
                        i++;
                    }
                } else {
                    return;
                }
            }
        }
        try {
            th3.initCause(th2);
        } catch (Throwable th4) {
        }
    }

    public static Throwable getFinalCause(Throwable th) {
        int i = 0;
        while (th.getCause() != null) {
            if (i >= 25) {
                return new RuntimeException("Stack too deep to get final cause");
            }
            th = th.getCause();
            i++;
        }
        return th;
    }

    public static RuntimeException propagate(Throwable th) {
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        } else if (th instanceof Error) {
            throw ((Error) th);
        } else {
            throw new RuntimeException(th);
        }
    }

    public static void throwIfAny(List<? extends Throwable> list) {
        if (list != null && !list.isEmpty()) {
            if (list.size() == 1) {
                Throwable th = (Throwable) list.get(0);
                if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                } else if (th instanceof Error) {
                    throw ((Error) th);
                } else {
                    throw new RuntimeException(th);
                }
            } else {
                throw new CompositeException(list);
            }
        }
    }

    public static void throwIfFatal(Throwable th) {
        if (th instanceof OnErrorNotImplementedException) {
            throw ((OnErrorNotImplementedException) th);
        } else if (th instanceof OnErrorFailedException) {
            throw ((OnErrorFailedException) th);
        } else if (th instanceof OnCompletedFailedException) {
            throw ((OnCompletedFailedException) th);
        } else if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        } else if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        } else if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }

    public static void throwOrReport(Throwable th, Observer<?> observer) {
        throwIfFatal(th);
        observer.onError(th);
    }

    public static void throwOrReport(Throwable th, Observer<?> observer, Object obj) {
        throwIfFatal(th);
        observer.onError(OnErrorThrowable.addValueAsLastCause(th, obj));
    }
}
