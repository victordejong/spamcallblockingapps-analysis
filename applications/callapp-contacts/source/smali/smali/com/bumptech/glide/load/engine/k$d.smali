.class public final Lcom/bumptech/glide/load/engine/k$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/bumptech/glide/load/engine/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lcom/bumptech/glide/e/i;

.field public final synthetic c:Lcom/bumptech/glide/load/engine/k;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/e/i;Lcom/bumptech/glide/load/engine/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/i;",
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;)V"
        }
    .end annotation

    .line 423
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/k$d;->c:Lcom/bumptech/glide/load/engine/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/k$d;->b:Lcom/bumptech/glide/e/i;

    .line 425
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/k$d;->a:Lcom/bumptech/glide/load/engine/l;

    return-void
.end method
