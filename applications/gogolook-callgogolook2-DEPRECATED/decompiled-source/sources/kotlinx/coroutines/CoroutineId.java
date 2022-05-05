package kotlinx.coroutines;

import kotlin.Metadata;
import kotlinx.coroutines.ThreadContextElement;
import p626l.p634w.AbstractC15037a;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\b\u0018�� \u00182\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0018B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\t\u001a\u00020\u0005HÆ\u0003J\u0013\u0010\n\u001a\u00020��2\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\u0019"}, m815d2 = {"Lkotlinx/coroutines/CoroutineId;", "Lkotlinx/coroutines/ThreadContextElement;", "", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "id", "", "(J)V", "getId", "()J", "component1", "copy", "equals", "", "other", "", "hashCode", "", "restoreThreadContext", "", "context", "Lkotlin/coroutines/CoroutineContext;", "oldState", "toString", "updateThreadContext", "Key", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CoroutineId.class */
public final class CoroutineId extends AbstractC15037a implements ThreadContextElement<String> {
    public static final Key Key = new Key(null);

    /* renamed from: id */
    public final long f32843id;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003¨\u0006\u0004"}, m815d2 = {"Lkotlinx/coroutines/CoroutineId$Key;", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/CoroutineId;", "()V", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CoroutineId$Key.class */
    public static final class Key implements AbstractC15049g.AbstractC15054c<CoroutineId> {
        public Key() {
        }

        public /* synthetic */ Key(C15145g gVar) {
            this();
        }
    }

    public CoroutineId(long j) {
        super(Key);
        this.f32843id = j;
    }

    public static /* synthetic */ CoroutineId copy$default(CoroutineId coroutineId, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = coroutineId.f32843id;
        }
        return coroutineId.copy(j);
    }

    public final long component1() {
        return this.f32843id;
    }

    public final CoroutineId copy(long j) {
        return new CoroutineId(j);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof CoroutineId) && this.f32843id == ((CoroutineId) obj).f32843id;
        }
        return true;
    }

    @Override // p626l.p634w.AbstractC15037a, p626l.p634w.AbstractC15049g
    public <R> R fold(R r, AbstractC15122p<? super R, ? super AbstractC15049g.AbstractC15052b, ? extends R> pVar) {
        return (R) ThreadContextElement.DefaultImpls.fold(this, r, pVar);
    }

    @Override // p626l.p634w.AbstractC15037a, p626l.p634w.AbstractC15049g.AbstractC15052b, p626l.p634w.AbstractC15049g
    public <E extends AbstractC15049g.AbstractC15052b> E get(AbstractC15049g.AbstractC15054c<E> cVar) {
        return (E) ThreadContextElement.DefaultImpls.get(this, cVar);
    }

    public final long getId() {
        return this.f32843id;
    }

    public int hashCode() {
        long j = this.f32843id;
        return (int) (j ^ (j >>> 32));
    }

    @Override // p626l.p634w.AbstractC15037a, p626l.p634w.AbstractC15049g
    public AbstractC15049g minusKey(AbstractC15049g.AbstractC15054c<?> cVar) {
        return ThreadContextElement.DefaultImpls.minusKey(this, cVar);
    }

    @Override // p626l.p634w.AbstractC15037a, p626l.p634w.AbstractC15049g
    public AbstractC15049g plus(AbstractC15049g gVar) {
        return ThreadContextElement.DefaultImpls.plus(this, gVar);
    }

    public void restoreThreadContext(AbstractC15049g gVar, String str) {
        Thread.currentThread().setName(str);
    }

    public String toString() {
        return "CoroutineId(" + this.f32843id + ')';
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0017, code lost:
        if (r8 != null) goto L_0x0020;
     */
    @Override // kotlinx.coroutines.ThreadContextElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String updateThreadContext(p626l.p634w.AbstractC15049g r8) {
        /*
            r7 = this;
            r0 = r8
            kotlinx.coroutines.CoroutineName$Key r1 = kotlinx.coroutines.CoroutineName.Key
            l.w.g$b r0 = r0.get(r1)
            kotlinx.coroutines.CoroutineName r0 = (kotlinx.coroutines.CoroutineName) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x001d
            r0 = r8
            java.lang.String r0 = r0.getName()
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
            int r0 = p626l.p631e0.C14967x.m682b(r0, r1, r2, r3, r4, r5)
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
            if (r0 == 0) goto L_0x00a8
            r0 = r10
            r1 = 0
            r2 = r12
            java.lang.String r0 = r0.substring(r1, r2)
            r14 = r0
            r0 = r14
            java.lang.String r1 = "(this as java.lang.Strin…ing(startIndex, endIndex)"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
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
            long r1 = r1.f32843id
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            java.lang.String r0 = r0.toString()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "StringBuilder(capacity).…builderAction).toString()"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r9
            r1 = r8
            r0.setName(r1)
            r0 = r10
            return r0
        L_0x00a8:
            l.p r0 = new l.p
            r1 = r0
            java.lang.String r2 = "null cannot be cast to non-null type java.lang.String"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.CoroutineId.updateThreadContext(l.w.g):java.lang.String");
    }
}
