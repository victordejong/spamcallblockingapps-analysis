package com.criteo.publisher.logging;

import com.mopub.common.AdType;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.TypeCastException;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.p532h.C18425p;
/* renamed from: com.criteo.publisher.logging.i */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/i.class */
public class C8405i {

    /* renamed from: a */
    private final String f30131a = "com.criteo.";

    /* renamed from: b */
    private final List<String> f30132b = C18282n.m4167b((Object[]) new String[]{"java.", "javax.", "sun.", "com.sun.", "com.intellij.", "org.jetbrains.", "kotlin.", "android.", "com.android.", "androidx.", "dalvik.", "libcore.", "com.google", "com.mopub", "org.json", "com.squareup.", "org.junit."});

    /* renamed from: c */
    private final StackTraceElement f30133c = new StackTraceElement("<private class>", "<private method>", null, 0);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.logging.i$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/i$a.class */
    public static final class C8406a extends RuntimeException {

        /* renamed from: com.criteo.publisher.logging.i$a$a */
        /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/i$a$a.class */
        static final class C8407a {
            private C8407a() {
            }

            public /* synthetic */ C8407a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        static {
            new C8407a(null);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8406a(Throwable cause) {
            super("Exception occurred while removing publisher code. " + cause.getClass().getSimpleName() + ": " + cause.getMessage());
            C18524p.m3841c(cause, "cause");
            StackTraceElement[] stackTrace = cause.getStackTrace();
            C18524p.m3849a((Object) stackTrace, "cause.stackTrace");
            Object[] copyOf = Arrays.copyOf(stackTrace, Math.min(cause.getStackTrace().length, 5));
            C18524p.m3849a((Object) copyOf, "java.util.Arrays.copyOf(this, newSize)");
            setStackTrace((StackTraceElement[]) copyOf);
        }
    }

    /* renamed from: com.criteo.publisher.logging.i$b */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/i$b.class */
    public static final class C8408b extends RuntimeException {
        public C8408b() {
            this(AdType.CUSTOM);
        }

        private C8408b(String str) {
            super("A " + str + " exception occurred from publisher's code");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C8408b(java.lang.Throwable r4) {
            /*
                r3 = this;
                r0 = r4
                java.lang.String r1 = "throwable"
                kotlin.jvm.internal.C18524p.m3841c(r0, r1)
                r0 = r4
                java.lang.Class r0 = r0.getClass()
                java.lang.String r0 = r0.getSimpleName()
                r4 = r0
                r0 = r4
                java.lang.String r1 = "throwable.javaClass.simpleName"
                kotlin.jvm.internal.C18524p.m3849a(r0, r1)
                r0 = r3
                r1 = r4
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.logging.C8405i.C8408b.<init>(java.lang.Throwable):void");
        }
    }

    /* renamed from: com.criteo.publisher.logging.i$c */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/i$c.class */
    public static final class C8409c {

        /* renamed from: a */
        public static final C8409c f30134a = new C8409c();

        /* renamed from: b */
        private static final Field f30135b = m25730a("cause");

        /* renamed from: c */
        private static final Field f30136c = m25730a("suppressedExceptions");

        /* renamed from: d */
        private static final Field f30137d = m25730a("detailMessage");

        private C8409c() {
        }

        /* renamed from: a */
        private static Field m25730a(String str) {
            Field field = Throwable.class.getDeclaredField(str);
            C18524p.m3849a((Object) field, "field");
            field.setAccessible(true);
            return field;
        }

        /* renamed from: a */
        public static void m25729a(Throwable internalDetailMessage, String str) {
            C18524p.m3841c(internalDetailMessage, "$this$internalDetailMessage");
            f30137d.set(internalDetailMessage, str);
        }

        /* renamed from: a */
        public static void m25728a(Throwable internalCause, Throwable th) {
            C18524p.m3841c(internalCause, "$this$internalCause");
            f30135b.set(internalCause, th);
        }

        /* renamed from: a */
        public static void m25727a(Throwable internalSuppressedExceptions, List<? extends Throwable> list) {
            C18524p.m3841c(internalSuppressedExceptions, "$this$internalSuppressedExceptions");
            f30136c.set(internalSuppressedExceptions, list);
        }
    }

    /* renamed from: a */
    private Throwable m25735a(Throwable original, Map<Throwable, Throwable> visited) {
        C18524p.m3841c(original, "original");
        C18524p.m3841c(visited, "visited");
        Throwable th = visited.get(original);
        if (th != null) {
            return th;
        }
        C8408b c8408b = m25733b(original) ? m25731c(original) ? new C8408b(original) : new C8408b() : original;
        visited.put(original, c8408b);
        Throwable cause = original.getCause();
        boolean m3850a = cause != null ? C18524p.m3850a((Object) cause.toString(), (Object) original.getMessage()) : false;
        m25736a(original, c8408b, visited);
        m25732b(original, c8408b, visited);
        m25737a(original, c8408b);
        Throwable cause2 = c8408b.getCause();
        if (cause2 != null && m3850a) {
            C8409c c8409c = C8409c.f30134a;
            C8409c.m25729a(c8408b, cause2.toString());
        }
        return c8408b;
    }

    /* renamed from: a */
    private void m25737a(Throwable th, Throwable th2) {
        ArrayList arrayList = new ArrayList();
        StackTraceElement[] stackTrace = th.getStackTrace();
        C18524p.m3849a((Object) stackTrace, "original.stackTrace");
        for (StackTraceElement it2 : stackTrace) {
            C18524p.m3849a((Object) it2, "it");
            if (m25734b(it2) || m25739a(it2)) {
                arrayList.add(it2);
            } else if (arrayList.isEmpty() || (!C18524p.m3850a((StackTraceElement) C18282n.m4119g((List<? extends Object>) arrayList), this.f30133c))) {
                arrayList.add(this.f30133c);
            }
        }
        Object[] array = arrayList.toArray(new StackTraceElement[0]);
        if (array != null) {
            th2.setStackTrace((StackTraceElement[]) array);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    /* renamed from: a */
    private void m25736a(Throwable th, Throwable th2, Map<Throwable, Throwable> map) {
        Throwable cause = th.getCause();
        if (cause != null) {
            C8409c c8409c = C8409c.f30134a;
            C8409c.m25728a(th2, m25735a(cause, map));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
        if (r0.isEmpty() == false) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m25739a(java.lang.StackTraceElement r5) {
        /*
            r4 = this;
            r0 = r4
            java.util.List<java.lang.String> r0 = r0.f30132b
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof java.util.Collection
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L1d
            r0 = r8
            r7 = r0
            r0 = r6
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L56
        L1d:
            r0 = r6
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
        L25:
            r0 = r8
            r7 = r0
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L56
            r0 = r9
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r6 = r0
            r0 = r5
            java.lang.String r0 = r0.getClassName()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "className"
            kotlin.jvm.internal.C18524p.m3849a(r0, r1)
            r0 = r10
            r1 = r6
            r2 = 0
            boolean r0 = kotlin.p532h.C18425p.m3957a(r0, r1, r2)
            if (r0 == 0) goto L25
            r0 = 1
            r7 = r0
        L56:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.logging.C8405i.m25739a(java.lang.StackTraceElement):boolean");
    }

    /* renamed from: b */
    private void m25732b(Throwable th, Throwable th2, Map<Throwable, Throwable> map) {
        Throwable[] originalSuppressed = th.getSuppressed();
        C18524p.m3849a((Object) originalSuppressed, "originalSuppressed");
        if (!(originalSuppressed.length == 0)) {
            ArrayList arrayList = new ArrayList(originalSuppressed.length);
            for (Throwable it2 : originalSuppressed) {
                C18524p.m3849a((Object) it2, "it");
                arrayList.add(m25735a(it2, map));
            }
            C8409c c8409c = C8409c.f30134a;
            C8409c.m25727a(th2, arrayList);
        }
    }

    /* renamed from: b */
    private boolean m25734b(StackTraceElement stackTraceElement) {
        String className = stackTraceElement.getClassName();
        C18524p.m3849a((Object) className, "className");
        return C18425p.m3957a(className, this.f30131a, false);
    }

    /* renamed from: b */
    private boolean m25733b(Throwable th) {
        StackTraceElement stackTraceElement;
        StackTraceElement[] stackTrace = th.getStackTrace();
        C18524p.m3849a((Object) stackTrace, "stackTrace");
        int length = stackTrace.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                stackTraceElement = null;
                break;
            }
            StackTraceElement it2 = stackTrace[i];
            C18524p.m3849a((Object) it2, "it");
            stackTraceElement = it2;
            if (!m25739a(it2)) {
                break;
            }
            i++;
        }
        if (stackTraceElement != null) {
            return !m25734b(stackTraceElement);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
        if (r0.isEmpty() == false) goto L6;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m25731c(java.lang.Throwable r5) {
        /*
            r4 = this;
            r0 = r4
            java.util.List<java.lang.String> r0 = r0.f30132b
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof java.util.Collection
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L1d
            r0 = r8
            r7 = r0
            r0 = r6
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L58
        L1d:
            r0 = r6
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
        L25:
            r0 = r8
            r7 = r0
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L58
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
            kotlin.jvm.internal.C18524p.m3849a(r0, r1)
            r0 = r6
            r1 = r10
            r2 = 0
            boolean r0 = kotlin.p532h.C18425p.m3957a(r0, r1, r2)
            if (r0 == 0) goto L25
            r0 = 1
            r7 = r0
        L58:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.logging.C8405i.m25731c(java.lang.Throwable):boolean");
    }

    /* renamed from: a */
    public final Throwable m25738a(Throwable throwable) {
        C8406a c8406a;
        C18524p.m3841c(throwable, "throwable");
        try {
            c8406a = m25735a(throwable, new LinkedHashMap());
        } catch (Throwable th) {
            c8406a = new C8406a(th);
        }
        return c8406a;
    }
}
