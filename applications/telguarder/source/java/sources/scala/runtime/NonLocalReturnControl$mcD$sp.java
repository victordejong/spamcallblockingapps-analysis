package scala.runtime;
/* loaded from: classes3-dex2jar.jar:scala/runtime/NonLocalReturnControl$mcD$sp.class */
public class NonLocalReturnControl$mcD$sp extends NonLocalReturnControl<Object> {
    public final double value$mcD$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NonLocalReturnControl$mcD$sp(Object obj, double d) {
        super(obj, null);
        this.value$mcD$sp = d;
    }

    @Override // scala.runtime.NonLocalReturnControl
    public boolean specInstance$() {
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, double] */
    @Override // scala.runtime.NonLocalReturnControl
    public Object value() {
        return value$mcD$sp();
    }

    @Override // scala.runtime.NonLocalReturnControl
    public double value$mcD$sp() {
        return this.value$mcD$sp;
    }
}
