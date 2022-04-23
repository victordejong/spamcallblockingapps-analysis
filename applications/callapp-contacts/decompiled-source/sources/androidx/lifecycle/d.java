package androidx.lifecycle;

import java.util.ArrayDeque;
import java.util.Queue;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\b��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\n\u001a\u00020\u0004H\u0007J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tH\u0007J\b\u0010\u0010\u001a\u00020\fH\u0007J\u0010\u0010\u0011\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\tH\u0003J\b\u0010\u0012\u001a\u00020\fH\u0007J\b\u0010\u0013\u001a\u00020\fH\u0007J\b\u0010\u0014\u001a\u00020\fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0015"}, d2 = {"Landroidx/lifecycle/DispatchQueue;", "", "()V", "finished", "", "isDraining", "paused", "queue", "Ljava/util/Queue;", "Ljava/lang/Runnable;", "canRun", "dispatchAndEnqueue", "", "context", "Lkotlin/coroutines/CoroutineContext;", "runnable", "drainQueue", "enqueue", "finish", "pause", "resume", "lifecycle-runtime-ktx_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/d.class */
public final class d {

    /* renamed from: b  reason: collision with root package name */
    boolean f2575b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f2576c;

    /* renamed from: a  reason: collision with root package name */
    boolean f2574a = true;

    /* renamed from: d  reason: collision with root package name */
    private final Queue<Runnable> f2577d = new ArrayDeque();

    /* JADX WARN: Removed duplicated region for block: B:18:0x003a A[Catch: all -> 0x005a, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x005a, blocks: (B:5:0x0008, B:7:0x000e, B:9:0x001e, B:11:0x0025, B:18:0x003a, B:20:0x004b), top: B:26:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0054 A[EDGE_INSN: B:29:0x0054->B:21:0x0054 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            r3 = this;
            r0 = r3
            boolean r0 = r0.f2576c
            if (r0 == 0) goto L_0x0008
            return
        L_0x0008:
            r0 = r3
            r1 = 1
            r0.f2576c = r1     // Catch: all -> 0x005a
        L_0x000d:
            r0 = r3
            java.util.Queue<java.lang.Runnable> r0 = r0.f2577d     // Catch: all -> 0x005a
            java.util.Collection r0 = (java.util.Collection) r0     // Catch: all -> 0x005a
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x005a
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x0054
            r0 = r3
            boolean r0 = r0.f2575b     // Catch: all -> 0x005a
            if (r0 != 0) goto L_0x0034
            r0 = r3
            boolean r0 = r0.f2574a     // Catch: all -> 0x005a
            if (r0 != 0) goto L_0x002f
            goto L_0x0034
        L_0x002f:
            r0 = 0
            r4 = r0
            goto L_0x0036
        L_0x0034:
            r0 = 1
            r4 = r0
        L_0x0036:
            r0 = r4
            if (r0 == 0) goto L_0x0054
            r0 = r3
            java.util.Queue<java.lang.Runnable> r0 = r0.f2577d     // Catch: all -> 0x005a
            java.lang.Object r0 = r0.poll()     // Catch: all -> 0x005a
            java.lang.Runnable r0 = (java.lang.Runnable) r0     // Catch: all -> 0x005a
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x000d
            r0 = r5
            r0.run()     // Catch: all -> 0x005a
            goto L_0x000d
        L_0x0054:
            r0 = r3
            r1 = 0
            r0.f2576c = r1
            return
        L_0x005a:
            r5 = move-exception
            r0 = r3
            r1 = 0
            r0.f2576c = r1
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.d.a():void");
    }
}
