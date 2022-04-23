package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.c.d;
import kotlin.c.e;
import kotlin.c.f;
import kotlinx.coroutines.b.c;
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\b\u0010\u000b\u001a\u00020\fH��\u001a8\u0010\r\u001a\u0002H\u000e\"\u0004\b��\u0010\u000e2\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0014H\u0080\b¢\u0006\u0002\u0010\u0015\u001a4\u0010\u0016\u001a\u0002H\u000e\"\u0004\b��\u0010\u000e2\u0006\u0010\u0017\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0014H\u0080\b¢\u0006\u0002\u0010\u0018\u001a\u0014\u0010\u0019\u001a\u00020\b*\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\bH\u0007\u001a\u0013\u0010\u001b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001c*\u00020\u001dH\u0080\u0010\u001a(\u0010\u001e\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001c*\u0006\u0012\u0002\b\u00030\u00102\u0006\u0010\u0017\u001a\u00020\b2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0012H��\"\u000e\u0010��\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n��\"\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006\"\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u0001*\u00020\b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006 "}, d2 = {"COROUTINES_SCHEDULER_PROPERTY_NAME", "", "DEBUG_THREAD_NAME_SEPARATOR", "useCoroutinesScheduler", "", "getUseCoroutinesScheduler", "()Z", "coroutineName", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineName", "(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/String;", "createDefaultDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "withContinuationContext", "T", "continuation", "Lkotlin/coroutines/Continuation;", "countOrElement", "", "block", "Lkotlin/Function0;", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "withCoroutineContext", "context", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "newCoroutineContext", "Lkotlinx/coroutines/CoroutineScope;", "undispatchedCompletion", "Lkotlinx/coroutines/UndispatchedCoroutine;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "updateUndispatchedCompletion", "oldValue", "kotlinx-coroutines-core"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ae.class */
public final class ae {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f38667a;

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
        if (r0.equals("on") != false) goto L_0x0046;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0043, code lost:
        if (r0.equals("") != false) goto L_0x0046;
     */
    static {
        /*
            java.lang.String r0 = "kotlinx.coroutines.scheduler"
            java.lang.String r0 = kotlinx.coroutines.internal.x.a(r0)
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L_0x000d
            goto L_0x0046
        L_0x000d:
            r0 = r4
            int r0 = r0.hashCode()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x003d
            r0 = r5
            r1 = 3551(0xddf, float:4.976E-42)
            if (r0 == r1) goto L_0x0031
            r0 = r5
            r1 = 109935(0x1ad6f, float:1.54052E-40)
            if (r0 != r1) goto L_0x004d
            r0 = r4
            java.lang.String r1 = "off"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004d
            r0 = 0
            r6 = r0
            goto L_0x0048
        L_0x0031:
            r0 = r4
            java.lang.String r1 = "on"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004d
            goto L_0x0046
        L_0x003d:
            r0 = r4
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004d
        L_0x0046:
            r0 = 1
            r6 = r0
        L_0x0048:
            r0 = r6
            kotlinx.coroutines.ae.f38667a = r0
            return
        L_0x004d:
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
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.ae.m7513clinit():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003a, code lost:
        if (r0 == null) goto L_0x003d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String a(kotlin.c.f r4) {
        /*
            boolean r0 = kotlinx.coroutines.ao.b()
            if (r0 != 0) goto L_0x0008
            r0 = 0
            return r0
        L_0x0008:
            r0 = r4
            kotlinx.coroutines.ai$a r1 = kotlinx.coroutines.ai.f38671b
            kotlin.c.f$c r1 = (kotlin.c.f.c) r1
            kotlin.c.f$b r0 = r0.get(r1)
            kotlinx.coroutines.ai r0 = (kotlinx.coroutines.ai) r0
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x001e
            r0 = 0
            return r0
        L_0x001e:
            r0 = r4
            kotlinx.coroutines.aj$a r1 = kotlinx.coroutines.aj.f38673b
            kotlin.c.f$c r1 = (kotlin.c.f.c) r1
            kotlin.c.f$b r0 = r0.get(r1)
            kotlinx.coroutines.aj r0 = (kotlinx.coroutines.aj) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x003d
            r0 = r4
            java.lang.String r0 = r0.f38674a
            r6 = r0
            r0 = r6
            r4 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0040
        L_0x003d:
            java.lang.String r0 = "coroutine"
            r4 = r0
        L_0x0040:
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
            long r1 = r1.f38672a
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.ae.a(kotlin.c.f):java.lang.String");
    }

    public static final f a(ak akVar, f fVar) {
        f plus = akVar.az_().plus(fVar);
        f plus2 = ao.b() ? plus.plus(new ai(ao.d().incrementAndGet())) : plus;
        return (plus == az.a() || plus.get(e.f36647a) != null) ? plus2 : plus2.plus(az.a());
    }

    public static final af a() {
        return f38667a ? c.f38715b : w.f38860b;
    }

    public static final cs<?> a(d<?> dVar, f fVar, Object obj) {
        cs<?> csVar;
        if (!(dVar instanceof kotlin.c.b.a.d)) {
            return null;
        }
        if (!(fVar.get(ct.f38788a) != null)) {
            return null;
        }
        kotlin.c.b.a.d dVar2 = (kotlin.c.b.a.d) dVar;
        while (true) {
            if (!(dVar2 instanceof aw)) {
                kotlin.c.b.a.d c2 = dVar2.c();
                if (c2 != null) {
                    dVar2 = c2;
                    if (c2 instanceof cs) {
                        csVar = (cs) c2;
                        break;
                    }
                } else {
                    csVar = null;
                    break;
                }
            } else {
                csVar = null;
                break;
            }
        }
        if (csVar != null) {
            csVar.e = fVar;
            csVar.f = obj;
        }
        return csVar;
    }
}
