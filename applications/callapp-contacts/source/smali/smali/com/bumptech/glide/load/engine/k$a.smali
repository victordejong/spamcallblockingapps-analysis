.class final Lcom/bumptech/glide/load/engine/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/engine/h$d;

.field final b:Landroidx/core/e/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/e/c$a<",
            "Lcom/bumptech/glide/load/engine/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/h$d;)V
    .locals 2

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    new-instance v0, Lcom/bumptech/glide/load/engine/k$a$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/k$a$1;-><init>(Lcom/bumptech/glide/load/engine/k$a;)V

    const/16 v1, 0x96

    .line 478
    invoke-static {v1, v0}, Lcom/bumptech/glide/g/a/a;->a(ILcom/bumptech/glide/g/a/a$a;)Landroidx/core/e/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/k$a;->b:Landroidx/core/e/c$a;

    .line 490
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k$a;->a:Lcom/bumptech/glide/load/engine/h$d;

    return-void
.end method
