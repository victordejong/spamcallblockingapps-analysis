package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p521c.AbstractC18306a;
import kotlin.p521c.AbstractC18335f;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\b\u0018�� \u00182\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0018B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\t\u001a\u00020\u0005HÆ\u0003J\u0013\u0010\n\u001a\u00020��2\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\u0019"}, m4298d2 = {"Lkotlinx/coroutines/CoroutineId;", "Lkotlinx/coroutines/ThreadContextElement;", "", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "id", "", "(J)V", "getId", "()J", "component1", "copy", "equals", "", "other", "", "hashCode", "", "restoreThreadContext", "", "context", "Lkotlin/coroutines/CoroutineContext;", "oldState", "toString", "updateThreadContext", "Key", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.ai */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ai.class */
public final class C20145ai extends AbstractC18306a implements AbstractC20244cm<String> {

    /* renamed from: b */
    public static final C20146a f66546b = new C20146a(null);

    /* renamed from: a */
    final long f66547a;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, m4298d2 = {"Lkotlinx/coroutines/CoroutineId$Key;", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/CoroutineId;", "()V", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: kotlinx.coroutines.ai$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ai$a.class */
    public static final class C20146a implements AbstractC18335f.AbstractC18340c<C20145ai> {
        private C20146a() {
        }

        public /* synthetic */ C20146a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public C20145ai(long j) {
        super(f66546b);
        this.f66547a = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001c, code lost:
        if (r0 == null) goto L6;
     */
    @Override // kotlinx.coroutines.AbstractC20244cm
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.String mo914a(kotlin.p521c.AbstractC18335f r6) {
        /*
            r5 = this;
            r0 = r6
            kotlinx.coroutines.aj$a r1 = kotlinx.coroutines.C20147aj.f66548b
            kotlin.c.f$c r1 = (kotlin.p521c.AbstractC18335f.AbstractC18340c) r1
            kotlin.c.f$b r0 = r0.get(r1)
            kotlinx.coroutines.aj r0 = (kotlinx.coroutines.C20147aj) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L1f
            r0 = r6
            java.lang.String r0 = r0.f66549a
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            if (r0 != 0) goto L22
        L1f:
            java.lang.String r0 = "coroutine"
            r6 = r0
        L22:
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
            int r0 = kotlin.p532h.C18425p.m3942a(r0, r1, r2, r3)
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 >= 0) goto L48
            r0 = r8
            int r0 = r0.length()
            r10 = r0
        L48:
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
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
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
            long r1 = r1.f66547a
            java.lang.StringBuilder r0 = r0.append(r1)
            kotlin.v r0 = kotlin.C20128v.f66529a
            r6 = r0
            r0 = r11
            java.lang.String r0 = r0.toString()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "StringBuilder(capacity).…builderAction).toString()"
            kotlin.jvm.internal.C18524p.m3843b(r0, r1)
            r0 = r7
            r1 = r6
            r0.setName(r1)
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.C20145ai.mo914a(kotlin.c.f):java.lang.Object");
    }

    @Override // kotlinx.coroutines.AbstractC20244cm
    /* renamed from: a */
    public final /* synthetic */ void mo915a(String str) {
        Thread.currentThread().setName(str);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C20145ai) && this.f66547a == ((C20145ai) obj).f66547a;
        }
        return true;
    }

    @Override // kotlin.p521c.AbstractC18306a, kotlin.p521c.AbstractC18335f
    public final <R> R fold(R r, Function2<? super R, ? super AbstractC18335f.AbstractC18338b, ? extends R> function2) {
        return (R) AbstractC18335f.AbstractC18338b.C18339a.m4076a(this, r, function2);
    }

    @Override // kotlin.p521c.AbstractC18306a, kotlin.p521c.AbstractC18335f.AbstractC18338b, kotlin.p521c.AbstractC18335f
    public final <E extends AbstractC18335f.AbstractC18338b> E get(AbstractC18335f.AbstractC18340c<E> abstractC18340c) {
        return (E) AbstractC18335f.AbstractC18338b.C18339a.m4075a(this, abstractC18340c);
    }

    public final int hashCode() {
        long j = this.f66547a;
        return (int) (j ^ (j >>> 32));
    }

    @Override // kotlin.p521c.AbstractC18306a, kotlin.p521c.AbstractC18335f
    public final AbstractC18335f minusKey(AbstractC18335f.AbstractC18340c<?> abstractC18340c) {
        return AbstractC18335f.AbstractC18338b.C18339a.m4073b(this, abstractC18340c);
    }

    @Override // kotlin.p521c.AbstractC18306a, kotlin.p521c.AbstractC18335f
    public final AbstractC18335f plus(AbstractC18335f abstractC18335f) {
        return AbstractC18335f.AbstractC18338b.C18339a.m4074a(this, abstractC18335f);
    }

    public final String toString() {
        return "CoroutineId(" + this.f66547a + ')';
    }
}
