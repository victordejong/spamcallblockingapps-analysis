.class final Lcom/bumptech/glide/load/engine/k$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/g/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/k$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/g/a/a$a<",
        "Lcom/bumptech/glide/load/engine/h<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/engine/k$a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/k$a;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k$a$1;->a:Lcom/bumptech/glide/load/engine/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    .line 1483
    new-instance v0, Lcom/bumptech/glide/load/engine/h;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/k$a$1;->a:Lcom/bumptech/glide/load/engine/k$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/engine/k$a;->a:Lcom/bumptech/glide/load/engine/h$d;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/k$a$1;->a:Lcom/bumptech/glide/load/engine/k$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/engine/k$a;->b:Landroidx/core/e/c$a;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/h;-><init>(Lcom/bumptech/glide/load/engine/h$d;Landroidx/core/e/c$a;)V

    return-object v0
.end method
