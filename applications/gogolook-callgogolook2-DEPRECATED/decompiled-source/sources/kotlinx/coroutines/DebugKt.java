package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.p641z.p642c.AbstractC15107a;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0017\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00010\u0015H\u0081\b\u001a\b\u0010\u0016\u001a\u00020\u0013H��\"\u0014\u0010��\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0014\u0010\b\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\u0003\"\u000e\u0010\n\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��\"\u000e\u0010\f\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��\"\u000e\u0010\r\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��\"\u000e\u0010\u000e\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��\"\u0014\u0010\u000f\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0003\"\u000e\u0010\u0011\u001a\u00020\u000bX\u0080T¢\u0006\u0002\n��¨\u0006\u0017"}, m815d2 = {"ASSERTIONS_ENABLED", "", "getASSERTIONS_ENABLED", "()Z", "COROUTINE_ID", "Ljava/util/concurrent/atomic/AtomicLong;", "getCOROUTINE_ID", "()Ljava/util/concurrent/atomic/AtomicLong;", "DEBUG", "getDEBUG", "DEBUG_PROPERTY_NAME", "", "DEBUG_PROPERTY_VALUE_AUTO", "DEBUG_PROPERTY_VALUE_OFF", "DEBUG_PROPERTY_VALUE_ON", "RECOVER_STACK_TRACES", "getRECOVER_STACK_TRACES", "STACKTRACE_RECOVERY_PROPERTY_NAME", "assert", "", C13032a.f29462d, "Lkotlin/Function0;", "resetCoroutineId", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/DebugKt.class */
public final class DebugKt {
    public static final boolean ASSERTIONS_ENABLED = CoroutineId.class.desiredAssertionStatus();
    public static final AtomicLong COROUTINE_ID;
    public static final boolean DEBUG;
    public static final String DEBUG_PROPERTY_NAME = "kotlinx.coroutines.debug";
    public static final String DEBUG_PROPERTY_VALUE_AUTO = "auto";
    public static final String DEBUG_PROPERTY_VALUE_OFF = "off";
    public static final String DEBUG_PROPERTY_VALUE_ON = "on";
    public static final boolean RECOVER_STACK_TRACES;
    public static final String STACKTRACE_RECOVERY_PROPERTY_NAME = "kotlinx.coroutines.stacktrace.recovery";

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
        if (r0.equals(kotlinx.coroutines.DebugKt.DEBUG_PROPERTY_VALUE_AUTO) != false) goto L_0x003c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0057, code lost:
        if (r0.equals(kotlinx.coroutines.DebugKt.DEBUG_PROPERTY_VALUE_ON) != false) goto L_0x0066;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0063, code lost:
        if (r0.equals("") != false) goto L_0x0066;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0066, code lost:
        r8 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0074  */
    static {
        /*
            java.lang.Class<kotlinx.coroutines.CoroutineId> r0 = kotlinx.coroutines.CoroutineId.class
            boolean r0 = r0.desiredAssertionStatus()
            kotlinx.coroutines.DebugKt.ASSERTIONS_ENABLED = r0
            java.lang.String r0 = "kotlinx.coroutines.debug"
            java.lang.String r0 = kotlinx.coroutines.internal.SystemPropsKt.systemProp(r0)
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0017
            goto L_0x003c
        L_0x0017:
            r0 = r5
            int r0 = r0.hashCode()
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x005d
            r0 = r7
            r1 = 3551(0xddf, float:4.976E-42)
            if (r0 == r1) goto L_0x0051
            r0 = r7
            r1 = 109935(0x1ad6f, float:1.54052E-40)
            if (r0 == r1) goto L_0x0043
            r0 = r7
            r1 = 3005871(0x2dddaf, float:4.212122E-39)
            if (r0 != r1) goto L_0x0091
            r0 = r5
            java.lang.String r1 = "auto"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0091
        L_0x003c:
            boolean r0 = kotlinx.coroutines.DebugKt.ASSERTIONS_ENABLED
            r8 = r0
            goto L_0x0068
        L_0x0043:
            r0 = r5
            java.lang.String r1 = "off"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0091
            r0 = 0
            r8 = r0
            goto L_0x0068
        L_0x0051:
            r0 = r5
            java.lang.String r1 = "on"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0091
            goto L_0x0066
        L_0x005d:
            r0 = r5
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0091
        L_0x0066:
            r0 = 1
            r8 = r0
        L_0x0068:
            r0 = r8
            kotlinx.coroutines.DebugKt.DEBUG = r0
            r0 = r6
            r8 = r0
            boolean r0 = kotlinx.coroutines.DebugKt.DEBUG
            if (r0 == 0) goto L_0x0081
            r0 = r6
            r8 = r0
            java.lang.String r0 = "kotlinx.coroutines.stacktrace.recovery"
            r1 = 1
            boolean r0 = kotlinx.coroutines.internal.SystemPropsKt.systemProp(r0, r1)
            if (r0 == 0) goto L_0x0081
            r0 = 1
            r8 = r0
        L_0x0081:
            r0 = r8
            kotlinx.coroutines.DebugKt.RECOVER_STACK_TRACES = r0
            java.util.concurrent.atomic.AtomicLong r0 = new java.util.concurrent.atomic.AtomicLong
            r1 = r0
            r2 = 0
            r1.<init>(r2)
            kotlinx.coroutines.DebugKt.COROUTINE_ID = r0
            return
        L_0x0091:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "System property 'kotlinx.coroutines.debug' has unrecognized value '"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            r1 = 39
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r2 = r9
            java.lang.String r2 = r2.toString()
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.DebugKt.m41804clinit():void");
    }

    /* renamed from: assert  reason: not valid java name */
    public static final void m41805assert(AbstractC15107a<Boolean> aVar) {
        if (getASSERTIONS_ENABLED() && !aVar.invoke().booleanValue()) {
            throw new AssertionError();
        }
    }

    public static final boolean getASSERTIONS_ENABLED() {
        return ASSERTIONS_ENABLED;
    }

    public static final AtomicLong getCOROUTINE_ID() {
        return COROUTINE_ID;
    }

    public static final boolean getDEBUG() {
        return DEBUG;
    }

    public static final boolean getRECOVER_STACK_TRACES() {
        return RECOVER_STACK_TRACES;
    }

    public static final void resetCoroutineId() {
        COROUTINE_ID.set(0L);
    }
}
