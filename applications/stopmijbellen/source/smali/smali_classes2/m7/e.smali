.class public Lm7/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Iterator;Lm7/i;Lm7/g;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TF;>;",
            "Lm7/i<",
            "TT;TF;>;",
            "Lm7/g<",
            "TT;>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p3}, Lm7/i;->then(Ljava/lang/Object;)Lm7/c;

    move-result-object p3

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ls2/b;

    invoke-direct {v0, p2}, Ls2/b;-><init>(Ljava/lang/Object;)V

    .line 3
    check-cast p3, Lm7/g;

    invoke-virtual {p3, v0}, Lm7/g;->r(Ls2/b;)Lm7/c;

    move-result-object p3

    new-instance v0, Lz2/m;

    invoke-direct {v0, p0, p1, p2}, Lz2/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    check-cast p3, Lm7/g;

    invoke-virtual {p3, v0}, Lm7/g;->f(Lm7/b;)Lm7/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p3

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    if-nez p3, :cond_1

    .line 5
    new-instance p1, Ljava/lang/Exception;

    const-string p3, "empty list"

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2, p1, p0, p0}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2, p3, p0, p0}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    :goto_1
    return-void
.end method
