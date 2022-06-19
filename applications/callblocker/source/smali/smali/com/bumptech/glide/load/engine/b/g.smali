.class public Lcom/bumptech/glide/load/engine/b/g;
.super Lcom/bumptech/glide/h/f;
.source "LruResourceCache.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/h/f",
        "<",
        "Lcom/bumptech/glide/load/f;",
        "Lcom/bumptech/glide/load/engine/t",
        "<*>;>;",
        "Lcom/bumptech/glide/load/engine/b/h;"
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/load/engine/b/h$a;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/h/f;-><init>(J)V

    .line 23
    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/engine/t;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/bumptech/glide/h/f;->a(Ljava/lang/Object;)I

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->e()I

    move-result v0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lcom/bumptech/glide/load/engine/t;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/b/g;->a(Lcom/bumptech/glide/load/engine/t;)I

    move-result v0

    return v0
.end method

.method public synthetic a(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/engine/t;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/bumptech/glide/h/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/t;

    return-object v0
.end method

.method public a(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 49
    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/b/g;->a()V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const/16 v0, 0x14

    if-ge p1, v0, :cond_2

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/b/g;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/load/engine/b/g;->a(J)V

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/engine/b/h$a;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/g;->a:Lcom/bumptech/glide/load/engine/b/h$a;

    .line 28
    return-void
.end method

.method protected a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f;",
            "Lcom/bumptech/glide/load/engine/t",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/g;->a:Lcom/bumptech/glide/load/engine/b/h$a;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/g;->a:Lcom/bumptech/glide/load/engine/b/h$a;

    invoke-interface {v0, p2}, Lcom/bumptech/glide/load/engine/b/h$a;->b(Lcom/bumptech/glide/load/engine/t;)V

    .line 35
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 13
    check-cast p1, Lcom/bumptech/glide/load/f;

    check-cast p2, Lcom/bumptech/glide/load/engine/t;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/engine/b/g;->a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/t;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/h/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/t;

    return-object v0
.end method
