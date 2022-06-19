.class public Lcom/bumptech/glide/load/engine/b/j;
.super Ljava/lang/Object;
.source "SafeKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/b/j$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/h/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/h/f",
            "<",
            "Lcom/bumptech/glide/load/f;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroidx/core/g/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/g/e$a",
            "<",
            "Lcom/bumptech/glide/load/engine/b/j$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/bumptech/glide/h/f;

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, v2, v3}, Lcom/bumptech/glide/h/f;-><init>(J)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/j;->a:Lcom/bumptech/glide/h/f;

    .line 23
    const/16 v0, 0xa

    new-instance v1, Lcom/bumptech/glide/load/engine/b/j$1;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/engine/b/j$1;-><init>(Lcom/bumptech/glide/load/engine/b/j;)V

    invoke-static {v0, v1}, Lcom/bumptech/glide/h/a/a;->b(ILcom/bumptech/glide/h/a/a$a;)Landroidx/core/g/e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/j;->b:Landroidx/core/g/e$a;

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/f;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/j;->b:Landroidx/core/g/e$a;

    invoke-interface {v0}, Landroidx/core/g/e$a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/h/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/b/j$a;

    .line 52
    :try_start_0
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/b/j$a;->a:Ljava/security/MessageDigest;

    invoke-interface {p1, v1}, Lcom/bumptech/glide/load/f;->a(Ljava/security/MessageDigest;)V

    .line 54
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/b/j$a;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/h/j;->a([B)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/b/j;->b:Landroidx/core/g/e$a;

    invoke-interface {v2, v0}, Landroidx/core/g/e$a;->a(Ljava/lang/Object;)Z

    .line 54
    return-object v1

    .line 56
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/b/j;->b:Landroidx/core/g/e$a;

    invoke-interface {v2, v0}, Landroidx/core/g/e$a;->a(Ljava/lang/Object;)Z

    throw v1
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/f;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b/j;->a:Lcom/bumptech/glide/h/f;

    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/j;->a:Lcom/bumptech/glide/h/f;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/b/j;->b(Lcom/bumptech/glide/load/f;)Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b/j;->a:Lcom/bumptech/glide/h/f;

    monitor-enter v1

    .line 44
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/b/j;->a:Lcom/bumptech/glide/h/f;

    invoke-virtual {v2, p1, v0}, Lcom/bumptech/glide/h/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 45
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
