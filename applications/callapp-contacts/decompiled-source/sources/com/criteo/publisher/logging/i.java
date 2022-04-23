package com.criteo.publisher.logging;

import com.mopub.common.AdType;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.TypeCastException;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/i.class */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private final String f17456a = "com.criteo.";

    /* renamed from: b  reason: collision with root package name */
    private final List<String> f17457b = n.b((Object[]) new String[]{"java.", "javax.", "sun.", "com.sun.", "com.intellij.", "org.jetbrains.", "kotlin.", "android.", "com.android.", "androidx.", "dalvik.", "libcore.", "com.google", "com.mopub", "org.json", "com.squareup.", "org.junit."});

    /* renamed from: c  reason: collision with root package name */
    private final StackTraceElement f17458c = new StackTraceElement("<private class>", "<private method>", null, 0);

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/i$a.class */
    static final class a extends RuntimeException {

        /* renamed from: com.criteo.publisher.logging.i$a$a  reason: collision with other inner class name */
        /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/i$a$a.class */
        static final class C0348a {
            private C0348a() {
            }

            public /* synthetic */ C0348a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        static {
            new C0348a(null);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Throwable cause) {
            super("Exception occurred while removing publisher code. " + cause.getClass().getSimpleName() + ": " + cause.getMessage());
            p.c(cause, "cause");
            StackTraceElement[] stackTrace = cause.getStackTrace();
            p.a((Object) stackTrace, "cause.stackTrace");
            Object[] copyOf = Arrays.copyOf(stackTrace, Math.min(cause.getStackTrace().length, 5));
            p.a((Object) copyOf, "java.util.Arrays.copyOf(this, newSize)");
            setStackTrace((StackTraceElement[]) copyOf);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/i$b.class */
    public static final class b extends RuntimeException {
        public b() {
            this(AdType.CUSTOM);
        }

        private b(String str) {
            super("A " + str + " exception occurred from publisher's code");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public b(java.lang.Throwable r4) {
            /*
                r3 = this;
                r0 = r4
                java.lang.String r1 = "throwable"
                kotlin.jvm.internal.p.c(r0, r1)
                r0 = r4
                java.lang.Class r0 = r0.getClass()
                java.lang.String r0 = r0.getSimpleName()
                r4 = r0
                r0 = r4
                java.lang.String r1 = "throwable.javaClass.simpleName"
                kotlin.jvm.internal.p.a(r0, r1)
                r0 = r3
                r1 = r4
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.logging.i.b.<init>(java.lang.Throwable):void");
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/i$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public static final c f17459a = new c();

        /* renamed from: b  reason: collision with root package name */
        private static final Field f17460b = a("cause");

        /* renamed from: c  reason: collision with root package name */
        private static final Field f17461c = a("suppressedExceptions");

        /* renamed from: d  reason: collision with root package name */
        private static final Field f17462d = a("detailMessage");

        private c() {
        }

        private static Field a(String str) {
            Field field = Throwable.class.getDeclaredField(str);
            p.a((Object) field, "field");
            field.setAccessible(true);
            return field;
        }

        public static void a(Throwable internalDetailMessage, String str) {
            p.c(internalDetailMessage, "$this$internalDetailMessage");
            f17462d.set(internalDetailMessage, str);
        }

        public static void a(Throwable internalCause, Throwable th) {
            p.c(internalCause, "$this$internalCause");
            f17460b.set(internalCause, th);
        }

        public static void a(Throwable internalSuppressedExceptions, List<? extends Throwable> list) {
            p.c(internalSuppressedExceptions, "$this$internalSuppressedExceptions");
            f17461c.set(internalSuppressedExceptions, list);
        }
    }

    private Throwable a(Throwable original, Map<Throwable, Throwable> visited) {
        p.c(original, "original");
        p.c(visited, "visited");
        Throwable th = visited.get(original);
        if (th != null) {
            return th;
        }
        Throwable bVar = b(original) ? c(original) ? new b(original) : new b() : original;
        visited.put(original, bVar);
        Throwable cause = original.getCause();
        boolean a2 = cause != null ? p.a((Object) cause.toString(), (Object) original.getMessage()) : false;
        a(original, bVar, visited);
        b(original, bVar, visited);
        a(original, bVar);
        Throwable cause2 = bVar.getCause();
        if (cause2 != null && a2) {
            c cVar = c.f17459a;
            c.a(bVar, cause2.toString());
        }
        return bVar;
    }

    private void a(Throwable th, Throwable th2) {
        ArrayList arrayList = new ArrayList();
        StackTraceElement[] stackTrace = th.getStackTrace();
        p.a((Object) stackTrace, "original.stackTrace");
        for (StackTraceElement it2 : stackTrace) {
            p.a((Object) it2, "it");
            if (b(it2) || a(it2)) {
                arrayList.add(it2);
            } else if (arrayList.isEmpty() || (!p.a((StackTraceElement) n.g((List<? extends Object>) arrayList), this.f17458c))) {
                arrayList.add(this.f17458c);
            }
        }
        Object[] array = arrayList.toArray(new StackTraceElement[0]);
        if (array != null) {
            th2.setStackTrace((StackTraceElement[]) array);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    private void a(Throwable th, Throwable th2, Map<Throwable, Throwable> map) {
        Throwable cause = th.getCause();
        if (cause != null) {
            c cVar = c.f17459a;
            c.a(th2, a(cause, map));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
        if (r0.isEmpty() == false) goto L_0x001d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(java.lang.StackTraceElement r5) {
        /*
            r4 = this;
            r0 = r4
            java.util.List<java.lang.String> r0 = r0.f17457b
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof java.util.Collection
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x001d
            r0 = r8
            r7 = r0
            r0 = r6
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0056
        L_0x001d:
            r0 = r6
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
        L_0x0025:
            r0 = r8
            r7 = r0
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0056
            r0 = r9
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r6 = r0
            r0 = r5
            java.lang.String r0 = r0.getClassName()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "className"
            kotlin.jvm.internal.p.a(r0, r1)
            r0 = r10
            r1 = r6
            r2 = 0
            boolean r0 = kotlin.h.p.a(r0, r1, r2)
            if (r0 == 0) goto L_0x0025
            r0 = 1
            r7 = r0
        L_0x0056:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.logging.i.a(java.lang.StackTraceElement):boolean");
    }

    private void b(Throwable th, Throwable th2, Map<Throwable, Throwable> map) {
        Throwable[] originalSuppressed = th.getSuppressed();
        p.a((Object) originalSuppressed, "originalSuppressed");
        if (!(originalSuppressed.length == 0)) {
            ArrayList arrayList = new ArrayList(originalSuppressed.length);
            for (Throwable it2 : originalSuppressed) {
                p.a((Object) it2, "it");
                arrayList.add(a(it2, map));
            }
            c cVar = c.f17459a;
            c.a(th2, arrayList);
        }
    }

    private boolean b(StackTraceElement stackTraceElement) {
        String className = stackTraceElement.getClassName();
        p.a((Object) className, "className");
        return kotlin.h.p.a(className, this.f17456a, false);
    }

    private boolean b(Throwable th) {
        StackTraceElement stackTraceElement;
        StackTraceElement[] stackTrace = th.getStackTrace();
        p.a((Object) stackTrace, "stackTrace");
        int length = stackTrace.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                stackTraceElement = null;
                break;
            }
            StackTraceElement it2 = stackTrace[i];
            p.a((Object) it2, "it");
            stackTraceElement = it2;
            if (!a(it2)) {
                break;
            }
            i++;
        }
        if (stackTraceElement != null) {
            return !b(stackTraceElement);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
        if (r0.isEmpty() == false) goto L_0x001d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean c(java.lang.Throwable r5) {
        /*
            r4 = this;
            r0 = r4
            java.util.List<java.lang.String> r0 = r0.f17457b
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof java.util.Collection
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x001d
            r0 = r8
            r7 = r0
            r0 = r6
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0058
        L_0x001d:
            r0 = r6
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
        L_0x0025:
            r0 = r8
            r7 = r0
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0058
            r0 = r9
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r10 = r0
            r0 = r5
            java.lang.Class r0 = r0.getClass()
            java.lang.String r0 = r0.getName()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "javaClass.name"
            kotlin.jvm.internal.p.a(r0, r1)
            r0 = r6
            r1 = r10
            r2 = 0
            boolean r0 = kotlin.h.p.a(r0, r1, r2)
            if (r0 == 0) goto L_0x0025
            r0 = 1
            r7 = r0
        L_0x0058:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.logging.i.c(java.lang.Throwable):boolean");
    }

    public final Throwable a(Throwable throwable) {
        Throwable th;
        p.c(throwable, "throwable");
        try {
            th = a(throwable, new LinkedHashMap());
        } catch (Throwable th2) {
            th = new a(th2);
        }
        return th;
    }
}
