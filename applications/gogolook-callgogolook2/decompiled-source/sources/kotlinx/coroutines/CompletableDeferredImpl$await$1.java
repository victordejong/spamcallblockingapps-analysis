package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
@AbstractC15070f(m473c = "kotlinx.coroutines.CompletableDeferredImpl", m472f = "CompletableDeferred.kt", m471l = {83}, m470m = "await")
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010��\u001a\u0004\u0018\u00010\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u0096@"}, m815d2 = {"await", "", ExifInterface.GPS_DIRECTION_TRUE, "continuation", "Lkotlin/coroutines/Continuation;"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CompletableDeferredImpl$await$1.class */
public final class CompletableDeferredImpl$await$1 extends AbstractC15068d {
    public Object L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ CompletableDeferredImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CompletableDeferredImpl$await$1(CompletableDeferredImpl completableDeferredImpl, AbstractC15044d dVar) {
        super(dVar);
        this.this$0 = completableDeferredImpl;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.await(this);
    }
}
