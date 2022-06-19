.class Lkotlin/g;
.super Ljava/lang/Object;
.source "LazyJVM.kt"


# direct methods
.method public static final a(Lkotlin/e/a/a;)Lkotlin/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/e/a/a<",
            "+TT;>;)",
            "Lkotlin/e<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lkotlin/l;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lkotlin/l;-><init>(Lkotlin/e/a/a;Ljava/lang/Object;ILkotlin/e/b/e;)V

    check-cast v0, Lkotlin/e;

    return-object v0
.end method
