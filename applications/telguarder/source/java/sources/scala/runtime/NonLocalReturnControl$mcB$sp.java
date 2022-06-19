package scala.runtime;
/* loaded from: classes3-dex2jar.jar:scala/runtime/NonLocalReturnControl$mcB$sp.class */
public class NonLocalReturnControl$mcB$sp extends NonLocalReturnControl<Object> {
    public final byte value$mcB$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NonLocalReturnControl$mcB$sp(Object obj, byte b) {
        super(obj, null);
        this.value$mcB$sp = b;
    }

    @Override // scala.runtime.NonLocalReturnControl
    public boolean specInstance$() {
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [byte, java.lang.Object] */
    @Override // scala.runtime.NonLocalReturnControl
    public Object value() {
        return value$mcB$sp();
    }

    @Override // scala.runtime.NonLocalReturnControl
    public byte value$mcB$sp() {
        return this.value$mcB$sp;
    }
}
