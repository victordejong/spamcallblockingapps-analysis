package scala;
/* loaded from: classes3-dex2jar.jar:scala/Product8$.class */
public final class Product8$ {
    public static final Product8$ MODULE$ = null;

    static {
        new Product8$();
    }

    private Product8$() {
        MODULE$ = this;
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8> Option<Product8<T1, T2, T3, T4, T5, T6, T7, T8>> unapply(Product8<T1, T2, T3, T4, T5, T6, T7, T8> product8) {
        return new Some(product8);
    }
}
