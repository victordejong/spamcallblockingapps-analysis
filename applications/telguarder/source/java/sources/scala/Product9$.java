package scala;
/* loaded from: classes3-dex2jar.jar:scala/Product9$.class */
public final class Product9$ {
    public static final Product9$ MODULE$ = null;

    static {
        new Product9$();
    }

    private Product9$() {
        MODULE$ = this;
    }

    public <T1, T2, T3, T4, T5, T6, T7, T8, T9> Option<Product9<T1, T2, T3, T4, T5, T6, T7, T8, T9>> unapply(Product9<T1, T2, T3, T4, T5, T6, T7, T8, T9> product9) {
        return new Some(product9);
    }
}
