package scala;
/* loaded from: classes3-dex2jar.jar:scala/Product7$.class */
public final class Product7$ {
    public static final Product7$ MODULE$ = null;

    static {
        new Product7$();
    }

    private Product7$() {
        MODULE$ = this;
    }

    public <T1, T2, T3, T4, T5, T6, T7> Option<Product7<T1, T2, T3, T4, T5, T6, T7>> unapply(Product7<T1, T2, T3, T4, T5, T6, T7> product7) {
        return new Some(product7);
    }
}
