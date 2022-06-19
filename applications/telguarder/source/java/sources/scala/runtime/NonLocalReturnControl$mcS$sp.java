package scala.runtime;
/* loaded from: classes3-dex2jar.jar:scala/runtime/NonLocalReturnControl$mcS$sp.class */
public class NonLocalReturnControl$mcS$sp extends NonLocalReturnControl<Object> {
    public final short value$mcS$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NonLocalReturnControl$mcS$sp(Object obj, short s) {
        super(obj, null);
        this.value$mcS$sp = s;
    }

    @Override // scala.runtime.NonLocalReturnControl
    public boolean specInstance$() {
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [short, java.lang.Object] */
    @Override // scala.runtime.NonLocalReturnControl
    public Object value() {
        return value$mcS$sp();
    }

    @Override // scala.runtime.NonLocalReturnControl
    public short value$mcS$sp() {
        return this.value$mcS$sp;
    }
}
