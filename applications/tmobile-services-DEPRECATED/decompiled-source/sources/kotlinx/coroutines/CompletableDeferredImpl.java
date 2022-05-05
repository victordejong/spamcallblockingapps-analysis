package kotlinx.coroutines;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectInstance;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018��*\u0004\b��\u0010\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0011\u0012\b\u0010\"\u001a\u0004\u0018\u00010!¢\u0006\u0004\b#\u0010$J\u0013\u0010\u0005\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028��H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00028��H\u0016¢\u0006\u0004\b\u000f\u0010\u0010JJ\u0010\u0019\u001a\u00020\u0018\"\u0004\b\u0001\u0010\u00112\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00010\u00122\"\u0010\u0017\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0014H\u0016ø\u0001��¢\u0006\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028��0\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\b8P@\u0010X\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006%"}, d2 = {"Lkotlinx/coroutines/CompletableDeferredImpl;", "T", "Lkotlinx/coroutines/CompletableDeferred;", "Lkotlinx/coroutines/selects/SelectClause1;", "Lkotlinx/coroutines/JobSupport;", "await", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", FirebaseAnalytics.Param.VALUE, "", "complete", "(Ljava/lang/Object;)Z", "", "exception", "completeExceptionally", "(Ljava/lang/Throwable;)Z", "getCompleted", "()Ljava/lang/Object;", "R", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "block", "", "registerSelectClause1", "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V", "getOnAwait", "()Lkotlinx/coroutines/selects/SelectClause1;", "onAwait", "getOnCancelComplete$kotlinx_coroutines_core", "()Z", "onCancelComplete", "Lkotlinx/coroutines/Job;", "parent", "<init>", "(Lkotlinx/coroutines/Job;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CompletableDeferredImpl.class */
public final class CompletableDeferredImpl<T> extends JobSupport implements CompletableDeferred<T>, SelectClause1<T> {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0062  */
    @org.jetbrains.annotations.Nullable
    /* renamed from: P0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m1331P0(@org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super T> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof kotlinx.coroutines.CompletableDeferredImpl$await$1
            if (r0 == 0) goto L_0x0025
            r0 = r6
            kotlinx.coroutines.CompletableDeferredImpl$await$1 r0 = (kotlinx.coroutines.CompletableDeferredImpl$await$1) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f21123g
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0025
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f21123g = r1
            r0 = r7
            r6 = r0
            goto L_0x002f
        L_0x0025:
            kotlinx.coroutines.CompletableDeferredImpl$await$1 r0 = new kotlinx.coroutines.CompletableDeferredImpl$await$1
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r2, r3)
            r6 = r0
        L_0x002f:
            r0 = r6
            java.lang.Object r0 = r0.f21122f
            r7 = r0
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.m1924d()
            r9 = r0
            r0 = r6
            int r0 = r0.f21123g
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0062
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L_0x0058
            r0 = r6
            java.lang.Object r0 = r0.f21125i
            kotlinx.coroutines.CompletableDeferredImpl r0 = (kotlinx.coroutines.CompletableDeferredImpl) r0
            r6 = r0
            r0 = r7
            kotlin.ResultKt.m2472b(r0)
            r0 = r7
            r6 = r0
            goto L_0x0081
        L_0x0058:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x0062:
            r0 = r7
            kotlin.ResultKt.m2472b(r0)
            r0 = r6
            r1 = r5
            r0.f21125i = r1
            r0 = r6
            r1 = 1
            r0.f21123g = r1
            r0 = r5
            r1 = r6
            java.lang.Object r0 = r0.m1185N(r1)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L_0x0081
            r0 = r9
            return r0
        L_0x0081:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.CompletableDeferredImpl.m1331P0(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.Deferred
    /* renamed from: d */
    public T mo1295d() {
        return (T) m1171b0();
    }

    @Override // kotlinx.coroutines.selects.SelectClause1
    /* renamed from: f */
    public <R> void mo317f(@NotNull SelectInstance<? super R> selectInstance, @NotNull Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        m1201B0(selectInstance, function2);
    }

    @Override // kotlinx.coroutines.JobSupport
    /* renamed from: f0 */
    public boolean mo1167f0() {
        return true;
    }
}
