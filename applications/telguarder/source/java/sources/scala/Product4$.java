package scala;
/* loaded from: classes3-dex2jar.jar:scala/Product4$.class */
public final class Product4$ {
    public static final Product4$ MODULE$ = null;

    static {
        new Product4$();
    }

    private Product4$() {
        MODULE$ = this;
    }

    public <T1, T2, T3, T4> Option<Product4<T1, T2, T3, T4>> unapply(Product4<T1, T2, T3, T4> product4) {
        return new Some(product4);
    }
}
