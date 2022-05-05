package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.ThreadContextElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.simpleframework.xml.strategy.Name;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\f\b\u0080\b\u0018��  2\u00020\u00012\u00020\u0002:\u0001 B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010\u0004\u001a\u00020\u0003HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\u0007\u001a\u00020��2\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tHÖ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\u0019\u0010\u0006\u001a\u00020\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u001c\u001a\u0004\b\u001d\u0010\u0005¨\u0006!"}, d2 = {"Lkotlinx/coroutines/CoroutineId;", "Lkotlinx/coroutines/ThreadContextElement;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "", "component1", "()J", Name.MARK, "copy", "(J)Lkotlinx/coroutines/CoroutineId;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "Lkotlin/coroutines/CoroutineContext;", "context", "", "oldState", "", "restoreThreadContext", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "updateThreadContext", "(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/String;", "J", "getId", "<init>", "(J)V", "Key", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CoroutineId.class */
public final class CoroutineId extends AbstractCoroutineContextElement implements ThreadContextElement<String> {

    /* renamed from: g */
    public static final Key f21139g = new Key(null);

    /* renamed from: f */
    private final long f21140f;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/CoroutineId$Key;", "kotlin/coroutines/CoroutineContext$Key", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/CoroutineId$Key.class */
    public static final class Key implements CoroutineContext.Key<CoroutineId> {
        private Key() {
        }

        public /* synthetic */ Key(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public CoroutineId(long j) {
        super(f21139g);
        this.f21140f = j;
    }

    /* renamed from: N */
    public void mo421I(@NotNull CoroutineContext coroutineContext, @NotNull String str) {
        Thread.currentThread().setName(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0017, code lost:
        if (r8 != null) goto L_0x0020;
     */
    @org.jetbrains.annotations.NotNull
    /* renamed from: V */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo420K(@org.jetbrains.annotations.NotNull kotlin.coroutines.CoroutineContext r8) {
        /*
            r7 = this;
            r0 = r8
            kotlinx.coroutines.CoroutineName$Key r1 = kotlinx.coroutines.CoroutineName.f21141g
            kotlin.coroutines.CoroutineContext$Element r0 = r0.get(r1)
            kotlinx.coroutines.CoroutineName r0 = (kotlinx.coroutines.CoroutineName) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x001d
            r0 = r8
            java.lang.String r0 = r0.m1313t()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x001d
            goto L_0x0020
        L_0x001d:
            java.lang.String r0 = "coroutine"
            r8 = r0
        L_0x0020:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r9 = r0
            r0 = r9
            java.lang.String r0 = r0.getName()
            r10 = r0
            r0 = r10
            java.lang.String r1 = " @"
            r2 = 0
            r3 = 0
            r4 = 6
            r5 = 0
            int r0 = kotlin.text.StringsKt.m1528a0(r0, r1, r2, r3, r4, r5)
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r11
            if (r0 >= 0) goto L_0x0045
            r0 = r10
            int r0 = r0.length()
            r12 = r0
        L_0x0045:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r8
            int r2 = r2.length()
            r3 = r12
            int r2 = r2 + r3
            r3 = 10
            int r2 = r2 + r3
            r1.<init>(r2)
            r13 = r0
            r0 = r10
            if (r0 == 0) goto L_0x00ac
            r0 = r10
            r1 = 0
            r2 = r12
            java.lang.String r0 = r0.substring(r1, r2)
            r14 = r0
            r0 = r14
            java.lang.String r1 = "(this as java.lang.Strin…ing(startIndex, endIndex)"
            kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
            r0 = r13
            r1 = r14
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            java.lang.String r1 = " @"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = 35
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = r7
            long r1 = r1.f21140f
            java.lang.StringBuilder r0 = r0.append(r1)
            kotlin.Unit r0 = kotlin.Unit.f20447a
            r8 = r0
            r0 = r13
            java.lang.String r0 = r0.toString()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "StringBuilder(capacity).…builderAction).toString()"
            kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
            r0 = r9
            r1 = r8
            r0.setName(r1)
            r0 = r10
            return r0
        L_0x00ac:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            r1 = r0
            java.lang.String r2 = "null cannot be cast to non-null type java.lang.String"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.CoroutineId.mo420K(kotlin.coroutines.CoroutineContext):java.lang.String");
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            return (obj instanceof CoroutineId) && this.f21140f == ((CoroutineId) obj).f21140f;
        }
        return true;
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) ThreadContextElement.DefaultImpls.m1114a(this, r, function2);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key) {
        return (E) ThreadContextElement.DefaultImpls.m1113b(this, key);
    }

    public int hashCode() {
        long j = this.f21140f;
        return (int) (j ^ (j >>> 32));
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key) {
        return ThreadContextElement.DefaultImpls.m1112c(this, key);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return ThreadContextElement.DefaultImpls.m1111d(this, coroutineContext);
    }

    /* renamed from: t */
    public final long m1314t() {
        return this.f21140f;
    }

    @NotNull
    public String toString() {
        return "CoroutineId(" + this.f21140f + ')';
    }
}
