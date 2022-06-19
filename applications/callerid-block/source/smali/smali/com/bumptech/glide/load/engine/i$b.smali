.class Lcom/bumptech/glide/load/engine/i$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/engine/z/a;

.field final b:Lcom/bumptech/glide/load/engine/z/a;

.field final c:Lcom/bumptech/glide/load/engine/z/a;

.field final d:Lcom/bumptech/glide/load/engine/z/a;

.field final e:Lcom/bumptech/glide/load/engine/k;

.field final f:Lcom/bumptech/glide/load/engine/n$a;

.field final g:Ld/h/l/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/h/l/e<",
            "Lcom/bumptech/glide/load/engine/j<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/z/a;Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/engine/n$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/engine/i$b$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/i$b$a;-><init>(Lcom/bumptech/glide/load/engine/i$b;)V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lcom/bumptech/glide/o/l/a;->d(ILcom/bumptech/glide/o/l/a$d;)Ld/h/l/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/i$b;->g:Ld/h/l/e;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/i$b;->a:Lcom/bumptech/glide/load/engine/z/a;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/i$b;->b:Lcom/bumptech/glide/load/engine/z/a;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/i$b;->c:Lcom/bumptech/glide/load/engine/z/a;

    iput-object p4, p0, Lcom/bumptech/glide/load/engine/i$b;->d:Lcom/bumptech/glide/load/engine/z/a;

    iput-object p5, p0, Lcom/bumptech/glide/load/engine/i$b;->e:Lcom/bumptech/glide/load/engine/k;

    iput-object p6, p0, Lcom/bumptech/glide/load/engine/i$b;->f:Lcom/bumptech/glide/load/engine/n$a;

    return-void
.end method


# virtual methods
.method a(Lcom/bumptech/glide/load/c;ZZZZ)Lcom/bumptech/glide/load/engine/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/c;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/j<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$b;->g:Ld/h/l/e;

    invoke-interface {v0}, Ld/h/l/e;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/j;

    invoke-static {v0}, Lcom/bumptech/glide/o/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/engine/j;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/j;->l(Lcom/bumptech/glide/load/c;ZZZZ)Lcom/bumptech/glide/load/engine/j;

    return-object v0
.end method
