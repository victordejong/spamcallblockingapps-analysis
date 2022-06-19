.class public Lcom/bumptech/glide/load/engine/i$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/j<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/request/f;

.field final synthetic c:Lcom/bumptech/glide/load/engine/i;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/load/engine/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/f;",
            "Lcom/bumptech/glide/load/engine/j<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/i$d;->c:Lcom/bumptech/glide/load/engine/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/i$d;->b:Lcom/bumptech/glide/request/f;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/i$d;->a:Lcom/bumptech/glide/load/engine/j;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/i$d;->c:Lcom/bumptech/glide/load/engine/i;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/i$d;->a:Lcom/bumptech/glide/load/engine/j;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/i$d;->b:Lcom/bumptech/glide/request/f;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/j;->r(Lcom/bumptech/glide/request/f;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
