package com.google.common.util.concurrent;

import com.google.common.base.m;
import com.google.common.collect.ad;
import com.google.common.collect.ae;
import com.google.common.collect.i;
import com.google.common.collect.z;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Logger;
/* loaded from: classes4-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory.class */
public class CycleDetectingLockFactory {

    /* renamed from: b  reason: collision with root package name */
    private static final ConcurrentMap<Class<? extends Enum>, Map<? extends Enum, b>> f32159b = new ad().a(ae.n.WEAK).e();

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f32160c = Logger.getLogger(CycleDetectingLockFactory.class.getName());

    /* renamed from: d  reason: collision with root package name */
    private static final ThreadLocal<ArrayList<b>> f32161d = new ThreadLocal<ArrayList<b>>() { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.1
        @Override // java.lang.ThreadLocal
        protected final /* synthetic */ ArrayList<b> initialValue() {
            i.a(3, "initialArraySize");
            return new ArrayList<>(3);
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final c f32162a;

    /* loaded from: classes4-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException.class */
    public static final class PotentialDeadlockException extends a {

        /* renamed from: c  reason: collision with root package name */
        private final a f32163c;

        private PotentialDeadlockException(b bVar, b bVar2, a aVar) {
            super(bVar, bVar2);
            this.f32163c = aVar;
            initCause(aVar);
        }

        @Override // java.lang.Throwable
        public final String getMessage() {
            StringBuilder sb = new StringBuilder(super.getMessage());
            for (Throwable th = this.f32163c; th != null; th = th.getCause()) {
                sb.append(", ");
                sb.append(th.getMessage());
            }
            return sb.toString();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$a.class */
    static class a extends IllegalStateException {

        /* renamed from: a  reason: collision with root package name */
        static final StackTraceElement[] f32164a = new StackTraceElement[0];

        /* renamed from: b  reason: collision with root package name */
        static final z<String> f32165b = z.a(CycleDetectingLockFactory.class.getName(), a.class.getName(), b.class.getName());

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        a(com.google.common.util.concurrent.CycleDetectingLockFactory.b r6, com.google.common.util.concurrent.CycleDetectingLockFactory.b r7) {
            /*
                r5 = this;
                r0 = r6
                java.lang.String r0 = r0.f32168c
                r6 = r0
                r0 = r7
                java.lang.String r0 = r0.f32168c
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
            L_0x004a:
                r0 = r10
                r1 = r9
                if (r0 >= r1) goto L_0x0091
                java.lang.Class<com.google.common.util.concurrent.CycleDetectingLockFactory$d> r0 = com.google.common.util.concurrent.CycleDetectingLockFactory.d.class
                java.lang.String r0 = r0.getName()
                r1 = r6
                r2 = r10
                r1 = r1[r2]
                java.lang.String r1 = r1.getClassName()
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L_0x006b
                r0 = r5
                java.lang.StackTraceElement[] r1 = com.google.common.util.concurrent.CycleDetectingLockFactory.a.f32164a
                r0.setStackTrace(r1)
                return
            L_0x006b:
                com.google.common.collect.z<java.lang.String> r0 = com.google.common.util.concurrent.CycleDetectingLockFactory.a.f32165b
                r1 = r6
                r2 = r10
                r1 = r1[r2]
                java.lang.String r1 = r1.getClassName()
                boolean r0 = r0.contains(r1)
                if (r0 != 0) goto L_0x008b
                r0 = r5
                r1 = r6
                r2 = r10
                r3 = r9
                java.lang.Object[] r1 = java.util.Arrays.copyOfRange(r1, r2, r3)
                java.lang.StackTraceElement[] r1 = (java.lang.StackTraceElement[]) r1
                r0.setStackTrace(r1)
                return
            L_0x008b:
                int r10 = r10 + 1
                goto L_0x004a
            L_0x0091:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.CycleDetectingLockFactory.a.<init>(com.google.common.util.concurrent.CycleDetectingLockFactory$b, com.google.common.util.concurrent.CycleDetectingLockFactory$b):void");
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$b.class */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        final Map<b, a> f32166a = new ad().a(ae.n.WEAK).e();

        /* renamed from: b  reason: collision with root package name */
        final Map<b, PotentialDeadlockException> f32167b = new ad().a(ae.n.WEAK).e();

        /* renamed from: c  reason: collision with root package name */
        final String f32168c;

        b(String str) {
            this.f32168c = (String) m.a(str);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$c.class */
    public interface c {
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/util/concurrent/CycleDetectingLockFactory$d.class */
    public static final class d<E extends Enum<E>> extends CycleDetectingLockFactory {

        /* renamed from: b  reason: collision with root package name */
        private final Map<E, b> f32169b;

        d(c cVar, Map<E, b> map) {
            super(cVar);
            this.f32169b = map;
        }
    }

    private CycleDetectingLockFactory(c cVar) {
        this.f32162a = (c) m.a(cVar);
    }
}
