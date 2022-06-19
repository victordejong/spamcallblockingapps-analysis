package scala;
/* loaded from: classes3-dex2jar.jar:scala/Product5$.class */
public final class Product5$ {
    public static final Product5$ MODULE$ = null;

    static {
        new Product5$();
    }

    private Product5$() {
        MODULE$ = this;
    }

    public <T1, T2, T3, T4, T5> Option<Product5<T1, T2, T3, T4, T5>> unapply(Product5<T1, T2, T3, T4, T5> product5) {
        return new Some(product5);
    }
}
