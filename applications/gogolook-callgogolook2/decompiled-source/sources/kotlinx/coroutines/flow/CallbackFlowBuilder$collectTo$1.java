package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
@AbstractC15070f(m473c = "kotlinx.coroutines.flow.CallbackFlowBuilder", m472f = "Builders.kt", m471l = {340}, m470m = "collectTo")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0094@"}, m815d2 = {"collectTo", "", ExifInterface.GPS_DIRECTION_TRUE, "scope", "Lkotlinx/coroutines/channels/ProducerScope;", "continuation", "Lkotlin/coroutines/Continuation;", ""}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/CallbackFlowBuilder$collectTo$1.class */
public final class CallbackFlowBuilder$collectTo$1 extends AbstractC15068d {
    public Object L$0;
    public Object L$1;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ CallbackFlowBuilder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallbackFlowBuilder$collectTo$1(CallbackFlowBuilder callbackFlowBuilder, AbstractC15044d dVar) {
        super(dVar);
        this.this$0 = callbackFlowBuilder;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.collectTo(null, this);
    }
}
