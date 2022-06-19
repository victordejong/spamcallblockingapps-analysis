.class public Lkn0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a()V
    .locals 2

    invoke-static {}, Lui0;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lkm0$d;->o:Lkm0$d;

    new-instance v1, Lkn0$a;

    invoke-direct {v1}, Lkn0$a;-><init>()V

    invoke-static {v0, v1}, Lkm0;->a(Lkm0$d;Lkm0$c;)V

    sget-object v0, Lkm0$d;->p:Lkm0$d;

    new-instance v1, Lkn0$b;

    invoke-direct {v1}, Lkn0$b;-><init>()V

    invoke-static {v0, v1}, Lkm0;->a(Lkm0$d;Lkm0$c;)V

    return-void
.end method
