package scala;
/* loaded from: classes3-dex2jar.jar:scala/Product1$.class */
public final class Product1$ {
    public static final Product1$ MODULE$ = null;

    static {
        new Product1$();
    }

    private Product1$() {
        MODULE$ = this;
    }

    public <T1> Option<Product1<T1>> unapply(Product1<T1> product1) {
        return new Some(product1);
    }
}
