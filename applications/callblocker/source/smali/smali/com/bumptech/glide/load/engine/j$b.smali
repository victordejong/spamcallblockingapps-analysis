.class Lcom/bumptech/glide/load/engine/j$b;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/engine/c/a;

.field final b:Lcom/bumptech/glide/load/engine/c/a;

.field final c:Lcom/bumptech/glide/load/engine/c/a;

.field final d:Lcom/bumptech/glide/load/engine/c/a;

.field final e:Lcom/bumptech/glide/load/engine/l;

.field final f:Landroidx/core/g/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/g/e$a",
            "<",
            "Lcom/bumptech/glide/load/engine/k",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/l;)V
    .locals 2

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    const/16 v0, 0x96

    new-instance v1, Lcom/bumptech/glide/load/engine/j$b$1;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/engine/j$b$1;-><init>(Lcom/bumptech/glide/load/engine/j$b;)V

    .line 458
    invoke-static {v0, v1}, Lcom/bumptech/glide/h/a/a;->a(ILcom/bumptech/glide/h/a/a$a;)Landroidx/core/g/e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/j$b;->f:Landroidx/core/g/e$a;

    .line 479
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/j$b;->a:Lcom/bumptech/glide/load/engine/c/a;

    .line 480
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/j$b;->b:Lcom/bumptech/glide/load/engine/c/a;

    .line 481
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/j$b;->c:Lcom/bumptech/glide/load/engine/c/a;

    .line 482
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/j$b;->d:Lcom/bumptech/glide/load/engine/c/a;

    .line 483
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/j$b;->e:Lcom/bumptech/glide/load/engine/l;

    .line 484
    return-void
.end method


# virtual methods
.method a(Lcom/bumptech/glide/load/f;ZZZZ)Lcom/bumptech/glide/load/engine/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/f;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/k",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j$b;->f:Landroidx/core/g/e$a;

    invoke-interface {v0}, Landroidx/core/g/e$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/k;

    invoke-static {v0}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/k;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 502
    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/k;->a(Lcom/bumptech/glide/load/f;ZZZZ)Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    return-object v0
.end method
