package scala.runtime;
/* loaded from: classes3-dex2jar.jar:scala/runtime/NonLocalReturnControl$mcI$sp.class */
public class NonLocalReturnControl$mcI$sp extends NonLocalReturnControl<Object> {
    public final int value$mcI$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NonLocalReturnControl$mcI$sp(Object obj, int i) {
        super(obj, null);
        this.value$mcI$sp = i;
    }

    @Override // scala.runtime.NonLocalReturnControl
    public boolean specInstance$() {
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, int] */
    @Override // scala.runtime.NonLocalReturnControl
    public Object value() {
        return value$mcI$sp();
    }

    @Override // scala.runtime.NonLocalReturnControl
    public int value$mcI$sp() {
        return this.value$mcI$sp;
    }
}
