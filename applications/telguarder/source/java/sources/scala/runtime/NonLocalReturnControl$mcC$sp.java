package scala.runtime;
/* loaded from: classes3-dex2jar.jar:scala/runtime/NonLocalReturnControl$mcC$sp.class */
public class NonLocalReturnControl$mcC$sp extends NonLocalReturnControl<Object> {
    public final char value$mcC$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NonLocalReturnControl$mcC$sp(Object obj, char c) {
        super(obj, null);
        this.value$mcC$sp = c;
    }

    @Override // scala.runtime.NonLocalReturnControl
    public boolean specInstance$() {
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, char] */
    @Override // scala.runtime.NonLocalReturnControl
    public Object value() {
        return value$mcC$sp();
    }

    @Override // scala.runtime.NonLocalReturnControl
    public char value$mcC$sp() {
        return this.value$mcC$sp;
    }
}
