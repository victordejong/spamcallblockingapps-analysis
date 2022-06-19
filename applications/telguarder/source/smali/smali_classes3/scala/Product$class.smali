.class public abstract Lscala/Product$class;
.super Ljava/lang/Object;
.source "Product.scala"


# direct methods
.method public static $init$(Lscala/Product;)V
    .locals 0

    return-void
.end method

.method public static productIterator(Lscala/Product;)Lscala/collection/Iterator;
    .locals 1

    .line 38
    new-instance v0, Lscala/Product$$anon$1;

    invoke-direct {v0, p0}, Lscala/Product$$anon$1;-><init>(Lscala/Product;)V

    return-object v0
.end method

.method public static productPrefix(Lscala/Product;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method
