.class final Lcom/bumptech/glide/load/engine/k$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/k;
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

.field final e:Lcom/bumptech/glide/load/engine/m;

.field final f:Lcom/bumptech/glide/load/engine/p$a;

.field final g:Landroidx/core/e/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/e/c$a<",
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/m;Lcom/bumptech/glide/load/engine/p$a;)V
    .locals 2

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    new-instance v0, Lcom/bumptech/glide/load/engine/k$b$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/k$b$1;-><init>(Lcom/bumptech/glide/load/engine/k$b;)V

    const/16 v1, 0x96

    .line 544
    invoke-static {v1, v0}, Lcom/bumptech/glide/g/a/a;->a(ILcom/bumptech/glide/g/a/a$a;)Landroidx/core/e/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k$b;->g:Landroidx/core/e/c$a;

    .line 567
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k$b;->a:Lcom/bumptech/glide/load/engine/c/a;

    .line 568
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/k$b;->b:Lcom/bumptech/glide/load/engine/c/a;

    .line 569
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/k$b;->c:Lcom/bumptech/glide/load/engine/c/a;

    .line 570
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/k$b;->d:Lcom/bumptech/glide/load/engine/c/a;

    .line 571
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/k$b;->e:Lcom/bumptech/glide/load/engine/m;

    .line 572
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/k$b;->f:Lcom/bumptech/glide/load/engine/p$a;

    return-void
.end method
