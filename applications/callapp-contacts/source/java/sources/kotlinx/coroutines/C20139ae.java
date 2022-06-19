package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.AbstractC18333e;
import kotlin.p521c.AbstractC18335f;
import kotlin.p521c.p523b.p524a.AbstractC18319d;
import kotlinx.coroutines.p570b.C20179c;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��H\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\b\u0010\u000b\u001a\u00020\fH��\u001a8\u0010\r\u001a\u0002H\u000e\"\u0004\b��\u0010\u000e2\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0014H\u0080\b¢\u0006\u0002\u0010\u0015\u001a4\u0010\u0016\u001a\u0002H\u000e\"\u0004\b��\u0010\u000e2\u0006\u0010\u0017\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0014H\u0080\b¢\u0006\u0002\u0010\u0018\u001a\u0014\u0010\u0019\u001a\u00020\b*\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\bH\u0007\u001a\u0013\u0010\u001b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001c*\u00020\u001dH\u0080\u0010\u001a(\u0010\u001e\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001c*\u0006\u0012\u0002\b\u00030\u00102\u0006\u0010\u0017\u001a\u00020\b2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0012H��\"\u000e\u0010��\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n��\"\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006\"\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u0001*\u00020\b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006 "}, m4298d2 = {"COROUTINES_SCHEDULER_PROPERTY_NAME", "", "DEBUG_THREAD_NAME_SEPARATOR", "useCoroutinesScheduler", "", "getUseCoroutinesScheduler", "()Z", "coroutineName", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineName", "(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/String;", "createDefaultDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "withContinuationContext", "T", "continuation", "Lkotlin/coroutines/Continuation;", "countOrElement", "", "block", "Lkotlin/Function0;", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "withCoroutineContext", "context", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "newCoroutineContext", "Lkotlinx/coroutines/CoroutineScope;", "undispatchedCompletion", "Lkotlinx/coroutines/UndispatchedCoroutine;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "updateUndispatchedCompletion", "oldValue", "kotlinx-coroutines-core"}, m4297k = 2, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.ae */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ae.class */
public final class C20139ae {

    /* renamed from: a */
    private static final boolean f66542a;

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
        if (r0.equals("on") != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0043, code lost:
        if (r0.equals("") != false) goto L17;
     */
    static {
        /*
            java.lang.String r0 = "kotlinx.coroutines.scheduler"
            java.lang.String r0 = kotlinx.coroutines.internal.C20298x.m809a(r0)
            r4 = r0
            r0 = r4
            if (r0 != 0) goto Ld
            goto L46
        Ld:
            r0 = r4
            int r0 = r0.hashCode()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L3d
            r0 = r5
            r1 = 3551(0xddf, float:4.976E-42)
            if (r0 == r1) goto L31
            r0 = r5
            r1 = 109935(0x1ad6f, float:1.54052E-40)
            if (r0 != r1) goto L4d
            r0 = r4
            java.lang.String r1 = "off"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4d
            r0 = 0
            r6 = r0
            goto L48
        L31:
            r0 = r4
            java.lang.String r1 = "on"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4d
            goto L46
        L3d:
            r0 = r4
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L4d
        L46:
            r0 = 1
            r6 = r0
        L48:
            r0 = r6
            kotlinx.coroutines.C20139ae.f66542a = r0
            return
        L4d:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "System property 'kotlinx.coroutines.scheduler' has unrecognized value '"
            r1.<init>(r2)
            r7 = r0
            r0 = r7
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = 39
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            r2 = r7
            java.lang.String r2 = r2.toString()
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C20139ae.m53894clinit():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003a, code lost:
        if (r0 == null) goto L12;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String m1092a(kotlin.p521c.AbstractC18335f r4) {
        /*
            boolean r0 = kotlinx.coroutines.C20159ao.m1082b()
            if (r0 != 0) goto L8
            r0 = 0
            return r0
        L8:
            r0 = r4
            kotlinx.coroutines.ai$a r1 = kotlinx.coroutines.C20145ai.f66546b
            kotlin.c.f$c r1 = (kotlin.p521c.AbstractC18335f.AbstractC18340c) r1
            kotlin.c.f$b r0 = r0.get(r1)
            kotlinx.coroutines.ai r0 = (kotlinx.coroutines.C20145ai) r0
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L1e
            r0 = 0
            return r0
        L1e:
            r0 = r4
            kotlinx.coroutines.aj$a r1 = kotlinx.coroutines.C20147aj.f66548b
            kotlin.c.f$c r1 = (kotlin.p521c.AbstractC18335f.AbstractC18340c) r1
            kotlin.c.f$b r0 = r0.get(r1)
            kotlinx.coroutines.aj r0 = (kotlinx.coroutines.C20147aj) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L3d
            r0 = r4
            java.lang.String r0 = r0.f66549a
            r6 = r0
            r0 = r6
            r4 = r0
            r0 = r6
            if (r0 != 0) goto L40
        L3d:
            java.lang.String r0 = "coroutine"
            r4 = r0
        L40:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = 35
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r5
            long r1 = r1.f66547a
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C20139ae.m1092a(kotlin.c.f):java.lang.String");
    }

    /* renamed from: a */
    public static final AbstractC18335f m1091a(AbstractC20149ak abstractC20149ak, AbstractC18335f abstractC18335f) {
        AbstractC18335f plus = abstractC20149ak.az_().plus(abstractC18335f);
        AbstractC18335f plus2 = C20159ao.m1082b() ? plus.plus(new C20145ai(C20159ao.m1080d().incrementAndGet())) : plus;
        return (plus == C20172az.m1061a() || plus.get(AbstractC18333e.f63440a) != null) ? plus2 : plus2.plus(C20172az.m1061a());
    }

    /* renamed from: a */
    public static final AbstractC20140af m1094a() {
        return (AbstractC20140af) (f66542a ? C20179c.f66607b : C20317w.f66791b);
    }

    /* renamed from: a */
    public static final C20250cs<?> m1093a(AbstractC18332d<?> abstractC18332d, AbstractC18335f abstractC18335f, Object obj) {
        C20250cs<?> c20250cs;
        if (!(abstractC18332d instanceof AbstractC18319d)) {
            return null;
        }
        if (!(abstractC18335f.get(C20251ct.f66707a) != null)) {
            return null;
        }
        AbstractC18319d abstractC18319d = (AbstractC18319d) abstractC18332d;
        while (true) {
            if (!(abstractC18319d instanceof C20169aw)) {
                AbstractC18319d mo784c = abstractC18319d.mo784c();
                if (mo784c != null) {
                    abstractC18319d = mo784c;
                    if (mo784c instanceof C20250cs) {
                        c20250cs = (C20250cs) mo784c;
                        break;
                    }
                } else {
                    c20250cs = null;
                    break;
                }
            } else {
                c20250cs = null;
                break;
            }
        }
        if (c20250cs != null) {
            c20250cs.f66705e = abstractC18335f;
            c20250cs.f66706f = obj;
        }
        return c20250cs;
    }
}
