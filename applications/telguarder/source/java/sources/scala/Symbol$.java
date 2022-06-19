package scala;
/* loaded from: classes3-dex2jar.jar:scala/Symbol$.class */
public final class Symbol$ extends UniquenessCache<String, Symbol> implements Serializable {
    public static final Symbol$ MODULE$ = null;

    static {
        new Symbol$();
    }

    private Symbol$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public Symbol apply(String str) {
        return (Symbol) super.apply((Symbol$) str);
    }

    public Option<String> keyFromValue(Symbol symbol) {
        return new Some(symbol.name());
    }

    public Symbol valueFromKey(String str) {
        return new Symbol(str);
    }
}
