.class public Ld2/k0$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/k0;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/k0;


# direct methods
.method public constructor <init>(Ld2/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/k0$r;->a:Ld2/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 8

    .line 1
    iget-object v0, p0, Ld2/k0$r;->a:Ld2/k0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "id"

    .line 4
    invoke-virtual {v1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, v0, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld2/q;

    .line 6
    iget-object v5, v0, Ld2/k0;->f:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld2/j;

    const-string v6, "orientation"

    const/4 v7, -0x1

    .line 7
    invoke-static {v1, v6, v7}, Ld2/e4;->a(Ld2/f4;Ljava/lang/String;I)I

    move-result v1

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 8
    iget-object p1, p1, Ld2/t0;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, p1, v3}, Ld2/k0;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    .line 11
    invoke-static {p1, v2, v3}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v4, :cond_3

    .line 12
    iput v1, v4, Ld2/q;->f:I

    .line 13
    sget-object p1, Ld2/t;->a:Landroid/content/Context;

    if-eqz p1, :cond_3

    .line 14
    invoke-static {}, Ld2/t;->f()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 16
    iput-boolean v6, v0, Ld2/f1;->A:Z

    .line 17
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    iget-object v1, v4, Ld2/q;->c:Ld2/j0;

    .line 18
    iput-object v1, v0, Ld2/f1;->l:Ld2/j0;

    .line 19
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 20
    iput-object v4, v0, Ld2/f1;->o:Ld2/q;

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adcolony/sdk/AdColonyInterstitialActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    invoke-static {v0}, Ld2/i3;->g(Landroid/content/Intent;)Z

    const/4 p1, 0x5

    .line 23
    iput p1, v4, Ld2/q;->l:I

    :cond_3
    :goto_1
    return-void
.end method
