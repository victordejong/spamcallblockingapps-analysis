package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0017\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00010\u0015H\u0081\b\u001a\b\u0010\u0016\u001a\u00020\u0013H��\"\u0014\u0010��\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0014\u0010\b\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\u0003\"\u000e\u0010\n\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��\"\u000e\u0010\f\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��\"\u000e\u0010\r\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��\"\u000e\u0010\u000e\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��\"\u0014\u0010\u000f\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0003\"\u000e\u0010\u0011\u001a\u00020\u000bX\u0080T¢\u0006\u0002\n��¨\u0006\u0017"}, d2 = {"ASSERTIONS_ENABLED", "", "getASSERTIONS_ENABLED", "()Z", "COROUTINE_ID", "Ljava/util/concurrent/atomic/AtomicLong;", "getCOROUTINE_ID", "()Ljava/util/concurrent/atomic/AtomicLong;", "DEBUG", "getDEBUG", "DEBUG_PROPERTY_NAME", "", "DEBUG_PROPERTY_VALUE_AUTO", "DEBUG_PROPERTY_VALUE_OFF", "DEBUG_PROPERTY_VALUE_ON", "RECOVER_STACK_TRACES", "getRECOVER_STACK_TRACES", "STACKTRACE_RECOVERY_PROPERTY_NAME", "assert", "", "value", "Lkotlin/Function0;", "resetCoroutineId", "kotlinx-coroutines-core"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ao.class */
public final class ao {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f38686a = false;

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f38687b;

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f38688c;

    /* renamed from: d  reason: collision with root package name */
    private static final AtomicLong f38689d;

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004f, code lost:
        if (r0.equals("on") != false) goto L_0x005e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005b, code lost:
        if (r0.equals("") != false) goto L_0x005e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005e, code lost:
        r8 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006b  */
    static {
        /*
            r0 = 0
            r5 = r0
            r0 = 0
            kotlinx.coroutines.ao.f38686a = r0
            java.lang.String r0 = "kotlinx.coroutines.debug"
            java.lang.String r0 = kotlinx.coroutines.internal.x.a(r0)
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0013
            goto L_0x0038
        L_0x0013:
            r0 = r6
            int r0 = r0.hashCode()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0055
            r0 = r7
            r1 = 3551(0xddf, float:4.976E-42)
            if (r0 == r1) goto L_0x0049
            r0 = r7
            r1 = 109935(0x1ad6f, float:1.54052E-40)
            if (r0 == r1) goto L_0x003d
            r0 = r7
            r1 = 3005871(0x2dddaf, float:4.212122E-39)
            if (r0 != r1) goto L_0x008b
            r0 = r6
            java.lang.String r1 = "auto"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x008b
        L_0x0038:
            r0 = 0
            r8 = r0
            goto L_0x0060
        L_0x003d:
            r0 = r6
            java.lang.String r1 = "off"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x008b
            goto L_0x0038
        L_0x0049:
            r0 = r6
            java.lang.String r1 = "on"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x008b
            goto L_0x005e
        L_0x0055:
            r0 = r6
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x008b
        L_0x005e:
            r0 = 1
            r8 = r0
        L_0x0060:
            r0 = r8
            kotlinx.coroutines.ao.f38687b = r0
            r0 = r5
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x007a
            r0 = r5
            r9 = r0
            java.lang.String r0 = "kotlinx.coroutines.stacktrace.recovery"
            r1 = 1
            boolean r0 = kotlinx.coroutines.internal.y.a(r0, r1)
            if (r0 == 0) goto L_0x007a
            r0 = 1
            r9 = r0
        L_0x007a:
            r0 = r9
            kotlinx.coroutines.ao.f38688c = r0
            java.util.concurrent.atomic.AtomicLong r0 = new java.util.concurrent.atomic.AtomicLong
            r1 = r0
            r2 = 0
            r1.<init>(r2)
            kotlinx.coroutines.ao.f38689d = r0
            return
        L_0x008b:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "System property 'kotlinx.coroutines.debug' has unrecognized value '"
            r1.<init>(r2)
            r10 = r0
            r0 = r10
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = 39
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r2 = r10
            java.lang.String r2 = r2.toString()
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.ao.m7522clinit():void");
    }

    public static final boolean a() {
        return f38686a;
    }

    public static final boolean b() {
        return f38687b;
    }

    public static final boolean c() {
        return f38688c;
    }

    public static final AtomicLong d() {
        return f38689d;
    }
}
