package scala;
/* loaded from: classes3-dex2jar.jar:scala/Product3$.class */
public final class Product3$ {
    public static final Product3$ MODULE$ = null;

    static {
        new Product3$();
    }

    private Product3$() {
        MODULE$ = this;
    }

    public <T1, T2, T3> Option<Product3<T1, T2, T3>> unapply(Product3<T1, T2, T3> product3) {
        return new Some(product3);
    }
}
