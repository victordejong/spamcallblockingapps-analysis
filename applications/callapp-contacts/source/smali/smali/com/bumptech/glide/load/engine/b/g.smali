.class public final Lcom/bumptech/glide/load/engine/b/g;
.super Lcom/bumptech/glide/g/g;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/g/g<",
        "Lcom/bumptech/glide/load/f;",
        "Lcom/bumptech/glide/load/engine/u<",
        "*>;>;",
        "Lcom/bumptech/glide/load/engine/b/h;"
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/load/engine/b/h$a;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/g/g;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/engine/u;
    .locals 0

    .line 11
    invoke-super {p0, p1}, Lcom/bumptech/glide/g/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/u;

    return-object p1
.end method

.method public final synthetic a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/u;)Lcom/bumptech/glide/load/engine/u;
    .locals 0

    .line 11
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/g/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/u;

    return-object p1
.end method

.method public final a(I)V
    .locals 4

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/b/g;->clearMemory()V

    return-void

    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/b/g;->getMaxSize()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/load/engine/b/g;->trimToSize(J)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/bumptech/glide/load/engine/b/h$a;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/g;->a:Lcom/bumptech/glide/load/engine/b/h$a;

    return-void
.end method

.method public final synthetic getSize(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/bumptech/glide/load/engine/u;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1038
    invoke-super {p0, p1}, Lcom/bumptech/glide/g/g;->getSize(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 1040
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/u;->c()I

    move-result p1

    return p1
.end method

.method public final synthetic onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/bumptech/glide/load/engine/u;

    .line 1030
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/b/g;->a:Lcom/bumptech/glide/load/engine/b/h$a;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1031
    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/engine/b/h$a;->b(Lcom/bumptech/glide/load/engine/u;)V

    :cond_0
    return-void
.end method
