package scala.runtime;
/* loaded from: classes3-dex2jar.jar:scala/runtime/NonLocalReturnControl$mcJ$sp.class */
public class NonLocalReturnControl$mcJ$sp extends NonLocalReturnControl<Object> {
    public final long value$mcJ$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NonLocalReturnControl$mcJ$sp(Object obj, long j) {
        super(obj, null);
        this.value$mcJ$sp = j;
    }

    @Override // scala.runtime.NonLocalReturnControl
    public boolean specInstance$() {
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long, java.lang.Object] */
    @Override // scala.runtime.NonLocalReturnControl
    public Object value() {
        return value$mcJ$sp();
    }

    @Override // scala.runtime.NonLocalReturnControl
    public long value$mcJ$sp() {
        return this.value$mcJ$sp;
    }
}
