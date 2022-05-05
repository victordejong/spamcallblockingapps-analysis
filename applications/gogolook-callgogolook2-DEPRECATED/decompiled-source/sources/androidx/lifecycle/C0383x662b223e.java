package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.flow.FlowCollector;
import p459j.p460a.p541n0.C13032a;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006��"}, m815d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", C13032a.f29462d, "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 15})
/* renamed from: androidx.lifecycle.FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1 */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1.class */
public final class C0383x662b223e implements FlowCollector<T> {
    public final /* synthetic */ LiveDataScope $this_liveData$inlined;

    @AbstractC15070f(m473c = "androidx.lifecycle.FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1", m472f = "FlowLiveData.kt", m471l = {136}, m470m = "emit")
    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0096@¨\u0006\u0007"}, m815d2 = {"emit", "", ExifInterface.GPS_DIRECTION_TRUE, C13032a.f29462d, "continuation", "Lkotlin/coroutines/Continuation;", "", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1"}, m814k = 3, m813mv = {1, 1, 15})
    /* renamed from: androidx.lifecycle.FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1 */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1.class */
    public final class C03841 extends AbstractC15068d {
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public int label;
        public /* synthetic */ Object result;

        public C03841(AbstractC15044d dVar) {
            super(dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return C0383x662b223e.this.emit(null, this);
        }
    }

    public C0383x662b223e(LiveDataScope liveDataScope) {
        this.$this_liveData$inlined = liveDataScope;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0078  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object emit(java.lang.Object r6, p626l.p634w.AbstractC15044d r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof androidx.lifecycle.C0383x662b223e.C03841
            if (r0 == 0) goto L_0x0028
            r0 = r7
            androidx.lifecycle.FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1 r0 = (androidx.lifecycle.C0383x662b223e.C03841) r0
            r8 = r0
            r0 = r8
            int r0 = r0.label
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0028
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.label = r1
            r0 = r8
            r7 = r0
            goto L_0x0032
        L_0x0028:
            androidx.lifecycle.FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1 r0 = new androidx.lifecycle.FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1$1
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L_0x0032:
            r0 = r7
            java.lang.Object r0 = r0.result
            r8 = r0
            java.lang.Object r0 = p626l.p634w.p635j.C15064c.m478a()
            r10 = r0
            r0 = r7
            int r0 = r0.label
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0078
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L_0x006e
            r0 = r7
            java.lang.Object r0 = r0.L$3
            r6 = r0
            r0 = r7
            java.lang.Object r0 = r0.L$2
            l.w.d r0 = (p626l.p634w.AbstractC15044d) r0
            r6 = r0
            r0 = r7
            java.lang.Object r0 = r0.L$1
            r6 = r0
            r0 = r7
            java.lang.Object r0 = r0.L$0
            androidx.lifecycle.FlowLiveDataConversions$asLiveData$1$invokeSuspend$$inlined$collect$1 r0 = (androidx.lifecycle.C0383x662b223e) r0
            r6 = r0
            r0 = r8
            p626l.C14982l.m653a(r0)
            goto L_0x00aa
        L_0x006e:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x0078:
            r0 = r8
            p626l.C14982l.m653a(r0)
            r0 = r5
            androidx.lifecycle.LiveDataScope r0 = r0.$this_liveData$inlined
            r8 = r0
            r0 = r7
            r1 = r5
            r0.L$0 = r1
            r0 = r7
            r1 = r6
            r0.L$1 = r1
            r0 = r7
            r1 = r7
            r0.L$2 = r1
            r0 = r7
            r1 = r6
            r0.L$3 = r1
            r0 = r7
            r1 = 1
            r0.label = r1
            r0 = r8
            r1 = r6
            r2 = r7
            java.lang.Object r0 = r0.emit(r1, r2)
            r1 = r10
            if (r0 != r1) goto L_0x00aa
            r0 = r10
            return r0
        L_0x00aa:
            l.s r0 = p626l.C14989s.f33022a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.C0383x662b223e.emit(java.lang.Object, l.w.d):java.lang.Object");
    }
}
