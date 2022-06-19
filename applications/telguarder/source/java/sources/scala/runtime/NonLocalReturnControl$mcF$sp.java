package scala.runtime;
/* loaded from: classes3-dex2jar.jar:scala/runtime/NonLocalReturnControl$mcF$sp.class */
public class NonLocalReturnControl$mcF$sp extends NonLocalReturnControl<Object> {
    public final float value$mcF$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NonLocalReturnControl$mcF$sp(Object obj, float f) {
        super(obj, null);
        this.value$mcF$sp = f;
    }

    @Override // scala.runtime.NonLocalReturnControl
    public boolean specInstance$() {
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, float] */
    @Override // scala.runtime.NonLocalReturnControl
    public Object value() {
        return value$mcF$sp();
    }

    @Override // scala.runtime.NonLocalReturnControl
    public float value$mcF$sp() {
        return this.value$mcF$sp;
    }
}
