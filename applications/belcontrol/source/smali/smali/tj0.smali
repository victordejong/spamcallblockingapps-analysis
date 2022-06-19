.class public Ltj0;
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
    sget-object v0, Lkm0$d;->h:Lkm0$d;

    new-instance v1, Ltj0$a;

    invoke-direct {v1}, Ltj0$a;-><init>()V

    invoke-static {v0, v1}, Lkm0;->a(Lkm0$d;Lkm0$c;)V

    sget-object v0, Lkm0$d;->g:Lkm0$d;

    new-instance v1, Ltj0$b;

    invoke-direct {v1}, Ltj0$b;-><init>()V

    invoke-static {v0, v1}, Lkm0;->a(Lkm0$d;Lkm0$c;)V

    sget-object v0, Lkm0$d;->j:Lkm0$d;

    new-instance v1, Ltj0$c;

    invoke-direct {v1}, Ltj0$c;-><init>()V

    invoke-static {v0, v1}, Lkm0;->a(Lkm0$d;Lkm0$c;)V

    sget-object v0, Lkm0$d;->m:Lkm0$d;

    new-instance v1, Ltj0$d;

    invoke-direct {v1}, Ltj0$d;-><init>()V

    invoke-static {v0, v1}, Lkm0;->a(Lkm0$d;Lkm0$c;)V

    return-void
.end method
