package scala.runtime;
/* loaded from: classes3-dex2jar.jar:scala/runtime/NonLocalReturnControl$mcZ$sp.class */
public class NonLocalReturnControl$mcZ$sp extends NonLocalReturnControl<Object> {
    public final boolean value$mcZ$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NonLocalReturnControl$mcZ$sp(Object obj, boolean z) {
        super(obj, null);
        this.value$mcZ$sp = z;
    }

    @Override // scala.runtime.NonLocalReturnControl
    public boolean specInstance$() {
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [boolean, java.lang.Object] */
    @Override // scala.runtime.NonLocalReturnControl
    public Object value() {
        return value$mcZ$sp();
    }

    @Override // scala.runtime.NonLocalReturnControl
    public boolean value$mcZ$sp() {
        return this.value$mcZ$sp;
    }
}
