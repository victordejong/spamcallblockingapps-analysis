package scala;
/* loaded from: classes3-dex2jar.jar:scala/Product6$.class */
public final class Product6$ {
    public static final Product6$ MODULE$ = null;

    static {
        new Product6$();
    }

    private Product6$() {
        MODULE$ = this;
    }

    public <T1, T2, T3, T4, T5, T6> Option<Product6<T1, T2, T3, T4, T5, T6>> unapply(Product6<T1, T2, T3, T4, T5, T6> product6) {
        return new Some(product6);
    }
}
