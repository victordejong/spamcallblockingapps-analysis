package scala;
/* loaded from: classes3-dex2jar.jar:scala/Product10$.class */
public final class Product10$ {
    public static final Product10$ MODULE$ = null;

    static {
        new Product10$();
    }

    private Product10$() {
        MODULE$ = this;
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> Option<Product10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>> unapply(Product10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> product10) {
        return new Some(product10);
    }
}
