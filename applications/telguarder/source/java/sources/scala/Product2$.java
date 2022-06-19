package scala;
/* loaded from: classes3-dex2jar.jar:scala/Product2$.class */
public final class Product2$ {
    public static final Product2$ MODULE$ = null;

    static {
        new Product2$();
    }

    private Product2$() {
        MODULE$ = this;
    }

    public <T1, T2> Option<Product2<T1, T2>> unapply(Product2<T1, T2> product2) {
        return new Some(product2);
    }
}
