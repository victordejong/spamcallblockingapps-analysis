.class Lkotlin/h/f;
.super Lkotlin/h/e;
.source "Sequences.kt"


# direct methods
.method public static final a(Lkotlin/h/b;)Lkotlin/h/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/h/b<",
            "+TT;>;)",
            "Lkotlin/h/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$constrainOnce"

    invoke-static {p0, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    instance-of v0, p0, Lkotlin/h/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/h/a;

    invoke-direct {v0, p0}, Lkotlin/h/a;-><init>(Lkotlin/h/b;)V

    move-object p0, v0

    check-cast p0, Lkotlin/h/b;

    :goto_0
    return-object p0
.end method
