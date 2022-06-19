package com.google.common.util.concurrent;

import com.google.common.collect.C8813k;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.MapMaker;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory.class */
public class CycleDetectingLockFactory {

    /* renamed from: a */
    private static final ConcurrentMap<Class<? extends Enum>, Map<? extends Enum, C8830b>> f38744a = new MapMaker().m2707l().m2710i();

    /* renamed from: b */
    private static final Logger f38745b = Logger.getLogger(CycleDetectingLockFactory.class.getName());

    /* renamed from: c */
    private static final ThreadLocal<ArrayList<C8830b>> f38746c = new C8829a();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace.class */
    public static class ExampleStackTrace extends IllegalStateException {

        /* renamed from: d */
        static final StackTraceElement[] f38747d = new StackTraceElement[0];

        /* renamed from: e */
        static final ImmutableSet<String> f38748e = ImmutableSet.m2727of(CycleDetectingLockFactory.class.getName(), ExampleStackTrace.class.getName(), C8830b.class.getName());

        ExampleStackTrace(C8830b c8830b, C8830b c8830b2) {
            super(c8830b.m2575a() + " -> " + c8830b2.m2575a());
            StackTraceElement[] stackTrace = getStackTrace();
            int length = stackTrace.length;
            for (int i = 0; i < length; i++) {
                if (C8831c.class.getName().equals(stackTrace[i].getClassName())) {
                    setStackTrace(f38747d);
                    return;
                } else if (!f38748e.contains(stackTrace[i].getClassName())) {
                    setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i, length));
                    return;
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException.class */
    public static final class PotentialDeadlockException extends ExampleStackTrace {
        private final ExampleStackTrace conflictingStackTrace;

        private PotentialDeadlockException(C8830b c8830b, C8830b c8830b2, ExampleStackTrace exampleStackTrace) {
            super(c8830b, c8830b2);
            this.conflictingStackTrace = exampleStackTrace;
            initCause(exampleStackTrace);
        }

        /* synthetic */ PotentialDeadlockException(C8830b c8830b, C8830b c8830b2, ExampleStackTrace exampleStackTrace, C8829a c8829a) {
            this(c8830b, c8830b2, exampleStackTrace);
        }

        public ExampleStackTrace getConflictingStackTrace() {
            return this.conflictingStackTrace;
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            StringBuilder sb = new StringBuilder(super.getMessage());
            Throwable th = this.conflictingStackTrace;
            while (true) {
                Throwable th2 = th;
                if (th2 != null) {
                    sb.append(", ");
                    sb.append(th2.getMessage());
                    th = th2.getCause();
                } else {
                    return sb.toString();
                }
            }
        }
    }

    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$a.class */
    static final class C8829a extends ThreadLocal<ArrayList<C8830b>> {
        C8829a() {
        }

        /* renamed from: a */
        public ArrayList<C8830b> initialValue() {
            return C8813k.m2618h(3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$b.class */
    public static class C8830b {

        /* renamed from: a */
        final String f38749a;

        /* renamed from: a */
        String m2575a() {
            return this.f38749a;
        }
    }

    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$c.class */
    public static final class C8831c<E extends Enum<E>> extends CycleDetectingLockFactory {
    }
}
