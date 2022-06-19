package com.google.common.util.concurrent;

import com.google.common.base.C15391m;
import com.google.common.collect.AbstractC15566z;
import com.google.common.collect.C15408ad;
import com.google.common.collect.C15524i;
import com.google.common.collect.ConcurrentMapC15409ae;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Logger;
/* loaded from: classes4-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory.class */
public class CycleDetectingLockFactory {

    /* renamed from: b */
    private static final ConcurrentMap<Class<? extends Enum>, Map<? extends Enum, C15576b>> f55904b = new C15408ad().m8908a(ConcurrentMapC15409ae.EnumC15426n.WEAK).m8904e();

    /* renamed from: c */
    private static final Logger f55905c = Logger.getLogger(CycleDetectingLockFactory.class.getName());

    /* renamed from: d */
    private static final ThreadLocal<ArrayList<C15576b>> f55906d = new ThreadLocal<ArrayList<C15576b>>() { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.1
        @Override // java.lang.ThreadLocal
        protected final /* synthetic */ ArrayList<C15576b> initialValue() {
            C15524i.m8781a(3, "initialArraySize");
            return new ArrayList<>(3);
        }
    };

    /* renamed from: a */
    final AbstractC15577c f55907a;

    /* loaded from: classes4-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException.class */
    public static final class PotentialDeadlockException extends C15575a {

        /* renamed from: c */
        private final C15575a f55908c;

        private PotentialDeadlockException(C15576b c15576b, C15576b c15576b2, C15575a c15575a) {
            super(c15576b, c15576b2);
            this.f55908c = c15575a;
            initCause(c15575a);
        }

        @Override // java.lang.Throwable
        public final String getMessage() {
            StringBuilder sb = new StringBuilder(super.getMessage());
            Throwable th = this.f55908c;
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
    /* loaded from: classes4-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$a.class */
    static class C15575a extends IllegalStateException {

        /* renamed from: a */
        static final StackTraceElement[] f55909a = new StackTraceElement[0];

        /* renamed from: b */
        static final AbstractC15566z<String> f55910b = AbstractC15566z.m8659a(CycleDetectingLockFactory.class.getName(), C15575a.class.getName(), C15576b.class.getName());

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        C15575a(com.google.common.util.concurrent.CycleDetectingLockFactory.C15576b r6, com.google.common.util.concurrent.CycleDetectingLockFactory.C15576b r7) {
            /*
                r5 = this;
                r0 = r6
                java.lang.String r0 = r0.f55913c
                r6 = r0
                r0 = r7
                java.lang.String r0 = r0.f55913c
                r7 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = r6
                java.lang.String r2 = java.lang.String.valueOf(r2)
                int r2 = r2.length()
                r3 = 4
                int r2 = r2 + r3
                r3 = r7
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r3 = r3.length()
                int r2 = r2 + r3
                r1.<init>(r2)
                r8 = r0
                r0 = r8
                r1 = r6
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                java.lang.String r1 = " -> "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                r1 = r7
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r8
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                r0 = r5
                java.lang.StackTraceElement[] r0 = r0.getStackTrace()
                r6 = r0
                r0 = r6
                int r0 = r0.length
                r9 = r0
                r0 = 0
                r10 = r0
            L4a:
                r0 = r10
                r1 = r9
                if (r0 >= r1) goto L91
                java.lang.Class<com.google.common.util.concurrent.CycleDetectingLockFactory$d> r0 = com.google.common.util.concurrent.CycleDetectingLockFactory.C15578d.class
                java.lang.String r0 = r0.getName()
                r1 = r6
                r2 = r10
                r1 = r1[r2]
                java.lang.String r1 = r1.getClassName()
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L6b
                r0 = r5
                java.lang.StackTraceElement[] r1 = com.google.common.util.concurrent.CycleDetectingLockFactory.C15575a.f55909a
                r0.setStackTrace(r1)
                return
            L6b:
                com.google.common.collect.z<java.lang.String> r0 = com.google.common.util.concurrent.CycleDetectingLockFactory.C15575a.f55910b
                r1 = r6
                r2 = r10
                r1 = r1[r2]
                java.lang.String r1 = r1.getClassName()
                boolean r0 = r0.contains(r1)
                if (r0 != 0) goto L8b
                r0 = r5
                r1 = r6
                r2 = r10
                r3 = r9
                java.lang.Object[] r1 = java.util.Arrays.copyOfRange(r1, r2, r3)
                java.lang.StackTraceElement[] r1 = (java.lang.StackTraceElement[]) r1
                r0.setStackTrace(r1)
                return
            L8b:
                int r10 = r10 + 1
                goto L4a
            L91:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.CycleDetectingLockFactory.C15575a.<init>(com.google.common.util.concurrent.CycleDetectingLockFactory$b, com.google.common.util.concurrent.CycleDetectingLockFactory$b):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$b */
    /* loaded from: classes4-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$b.class */
    public static class C15576b {

        /* renamed from: a */
        final Map<C15576b, C15575a> f55911a = new C15408ad().m8908a(ConcurrentMapC15409ae.EnumC15426n.WEAK).m8904e();

        /* renamed from: b */
        final Map<C15576b, PotentialDeadlockException> f55912b = new C15408ad().m8908a(ConcurrentMapC15409ae.EnumC15426n.WEAK).m8904e();

        /* renamed from: c */
        final String f55913c;

        C15576b(String str) {
            this.f55913c = (String) C15391m.m8946a(str);
        }
    }

    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$c */
    /* loaded from: classes4-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$c.class */
    public interface AbstractC15577c {
    }

    /* renamed from: com.google.common.util.concurrent.CycleDetectingLockFactory$d */
    /* loaded from: classes4-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$d.class */
    public static final class C15578d<E extends Enum<E>> extends CycleDetectingLockFactory {

        /* renamed from: b */
        private final Map<E, C15576b> f55914b;

        C15578d(AbstractC15577c abstractC15577c, Map<E, C15576b> map) {
            super(abstractC15577c);
            this.f55914b = map;
        }
    }

    private CycleDetectingLockFactory(AbstractC15577c abstractC15577c) {
        this.f55907a = (AbstractC15577c) C15391m.m8946a(abstractC15577c);
    }
}
