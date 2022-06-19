.class final Lcom/bumptech/glide/load/engine/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/g/a/a$c;
.implements Lcom/bumptech/glide/load/engine/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/g/a/a$c;",
        "Lcom/bumptech/glide/load/engine/u<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static final a:Landroidx/core/e/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/e/c$a<",
            "Lcom/bumptech/glide/load/engine/t<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/bumptech/glide/g/a/b;

.field private c:Lcom/bumptech/glide/load/engine/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/u<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/bumptech/glide/load/engine/t$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/t$1;-><init>()V

    const/16 v1, 0x14

    .line 19
    invoke-static {v1, v0}, Lcom/bumptech/glide/g/a/a;->a(ILcom/bumptech/glide/g/a/a$a;)Landroidx/core/e/c$a;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/engine/t;->a:Landroidx/core/e/c$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2016
    new-instance v0, Lcom/bumptech/glide/g/a/b$a;

    invoke-direct {v0}, Lcom/bumptech/glide/g/a/b$a;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/t;->b:Lcom/bumptech/glide/g/a/b;

    return-void
.end method

.method static a(Lcom/bumptech/glide/load/engine/u;)Lcom/bumptech/glide/load/engine/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/u<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/engine/t<",
            "TZ;>;"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/bumptech/glide/load/engine/t;->a:Landroidx/core/e/c$a;

    invoke-interface {v0}, Landroidx/core/e/c$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/t;

    const-string v1, "Argument must not be null"

    .line 1023
    invoke-static {v0, v1}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Lcom/bumptech/glide/load/engine/t;

    const/4 v1, 0x0

    .line 1045
    iput-boolean v1, v0, Lcom/bumptech/glide/load/engine/t;->e:Z

    const/4 v1, 0x1

    .line 1046
    iput-boolean v1, v0, Lcom/bumptech/glide/load/engine/t;->d:Z

    .line 1047
    iput-object p0, v0, Lcom/bumptech/glide/load/engine/t;->c:Lcom/bumptech/glide/load/engine/u;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/t;->c:Lcom/bumptech/glide/load/engine/u;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/u;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/t;->c:Lcom/bumptech/glide/load/engine/u;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/u;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/t;->c:Lcom/bumptech/glide/load/engine/u;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/u;->c()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/t;->b:Lcom/bumptech/glide/g/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/g/a/b;->a()V

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/t;->e:Z

    .line 89
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/t;->d:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/t;->c:Lcom/bumptech/glide/load/engine/u;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/u;->d()V

    const/4 v0, 0x0

    .line 2051
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/t;->c:Lcom/bumptech/glide/load/engine/u;

    .line 2052
    sget-object v0, Lcom/bumptech/glide/load/engine/t;->a:Landroidx/core/e/c$a;

    invoke-interface {v0, p0}, Landroidx/core/e/c$a;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/t;->b:Lcom/bumptech/glide/g/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/g/a/b;->a()V

    .line 58
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/t;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/t;->d:Z

    .line 62
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/t;->e:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/t;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    .line 59
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final m_()Lcom/bumptech/glide/g/a/b;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/t;->b:Lcom/bumptech/glide/g/a/b;

    return-object v0
.end method
