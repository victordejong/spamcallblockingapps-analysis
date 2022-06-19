package scala.runtime;
/* loaded from: classes3-dex2jar.jar:scala/runtime/NonLocalReturnControl$mcV$sp.class */
public class NonLocalReturnControl$mcV$sp extends NonLocalReturnControl<BoxedUnit> {
    public final BoxedUnit value$mcV$sp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NonLocalReturnControl$mcV$sp(Object obj, BoxedUnit boxedUnit) {
        super(obj, null);
        this.value$mcV$sp = boxedUnit;
    }

    @Override // scala.runtime.NonLocalReturnControl
    public boolean specInstance$() {
        return true;
    }

    @Override // scala.runtime.NonLocalReturnControl
    /* renamed from: value */
    public void value2() {
        value$mcV$sp();
    }

    @Override // scala.runtime.NonLocalReturnControl
    public void value$mcV$sp() {
    }
}
