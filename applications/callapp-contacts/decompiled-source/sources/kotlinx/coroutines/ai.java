package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.c.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\b\u0018�� \u00182\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0018B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\t\u001a\u00020\u0005HÆ\u0003J\u0013\u0010\n\u001a\u00020��2\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\u0019"}, d2 = {"Lkotlinx/coroutines/CoroutineId;", "Lkotlinx/coroutines/ThreadContextElement;", "", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "id", "", "(J)V", "getId", "()J", "component1", "copy", "equals", "", "other", "", "hashCode", "", "restoreThreadContext", "", "context", "Lkotlin/coroutines/CoroutineContext;", "oldState", "toString", "updateThreadContext", "Key", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ai.class */
public final class ai extends kotlin.c.a implements cm<String> {

    /* renamed from: b  reason: collision with root package name */
    public static final a f38671b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    final long f38672a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/CoroutineId$Key;", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/CoroutineId;", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ai$a.class */
    public static final class a implements f.c<ai> {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public ai(long j) {
        super(f38671b);
        this.f38672a = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001c, code lost:
        if (r0 == null) goto L_0x001f;
     */
    @Override // kotlinx.coroutines.cm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.String a(kotlin.c.f r6) {
        /*
            r5 = this;
            r0 = r6
            kotlinx.coroutines.aj$a r1 = kotlinx.coroutines.aj.f38673b
            kotlin.c.f$c r1 = (kotlin.c.f.c) r1
            kotlin.c.f$b r0 = r0.get(r1)
            kotlinx.coroutines.aj r0 = (kotlinx.coroutines.aj) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x001f
            r0 = r6
            java.lang.String r0 = r0.f38674a
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            if (r0 != 0) goto L_0x0022
        L_0x001f:
            java.lang.String r0 = "coroutine"
            r6 = r0
        L_0x0022:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r7 = r0
            r0 = r7
            java.lang.String r0 = r0.getName()
            r8 = r0
            r0 = r8
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            java.lang.String r1 = " @"
            r2 = 0
            r3 = 6
            int r0 = kotlin.h.p.a(r0, r1, r2, r3)
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 >= 0) goto L_0x0048
            r0 = r8
            int r0 = r0.length()
            r10 = r0
        L_0x0048:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r6
            int r2 = r2.length()
            r3 = r10
            int r2 = r2 + r3
            r3 = 10
            int r2 = r2 + r3
            r1.<init>(r2)
            r11 = r0
            r0 = r8
            java.lang.String r1 = "null cannot be cast to non-null type java.lang.String"
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0, r1)
            r0 = r8
            r1 = 0
            r2 = r10
            java.lang.String r0 = r0.substring(r1, r2)
            r12 = r0
            r0 = r12
            java.lang.String r1 = "(this as java.lang.Strin…ing(startIndex, endIndex)"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r11
            r1 = r12
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            java.lang.String r1 = " @"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = 35
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = r5
            long r1 = r1.f38672a
            java.lang.StringBuilder r0 = r0.append(r1)
            kotlin.v r0 = kotlin.v.f38654a
            r6 = r0
            r0 = r11
            java.lang.String r0 = r0.toString()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "StringBuilder(capacity).…builderAction).toString()"
            kotlin.jvm.internal.p.b(r0, r1)
            r0 = r7
            r1 = r6
            r0.setName(r1)
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.ai.a(kotlin.c.f):java.lang.Object");
    }

    @Override // kotlinx.coroutines.cm
    public final /* synthetic */ void a(String str) {
        Thread.currentThread().setName(str);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof ai) && this.f38672a == ((ai) obj).f38672a;
        }
        return true;
    }

    @Override // kotlin.c.a, kotlin.c.f
    public final <R> R fold(R r, Function2<? super R, ? super f.b, ? extends R> function2) {
        return (R) f.b.a.a(this, r, function2);
    }

    @Override // kotlin.c.a, kotlin.c.f.b, kotlin.c.f
    public final <E extends f.b> E get(f.c<E> cVar) {
        return (E) f.b.a.a(this, cVar);
    }

    public final int hashCode() {
        long j = this.f38672a;
        return (int) (j ^ (j >>> 32));
    }

    @Override // kotlin.c.a, kotlin.c.f
    public final f minusKey(f.c<?> cVar) {
        return f.b.a.b(this, cVar);
    }

    @Override // kotlin.c.a, kotlin.c.f
    public final f plus(f fVar) {
        return f.b.a.a(this, fVar);
    }

    public final String toString() {
        return "CoroutineId(" + this.f38672a + ')';
    }
}
