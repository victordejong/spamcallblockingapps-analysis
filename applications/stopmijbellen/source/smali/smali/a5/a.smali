.class public La5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw5/a<",
            "Lx4/a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:Lc5/a;

.field public volatile c:Ld5/b;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld5/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw5/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw5/a<",
            "Lx4/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ld5/c;

    invoke-direct {v0}, Ld5/c;-><init>()V

    new-instance v1, Lb0/a;

    invoke-direct {v1}, Lb0/a;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, La5/a;->a:Lw5/a;

    .line 4
    iput-object v0, p0, La5/a;->c:Ld5/b;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La5/a;->d:Ljava/util/List;

    .line 6
    iput-object v1, p0, La5/a;->b:Lc5/a;

    .line 7
    new-instance v0, Lz2/q;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lz2/q;-><init>(Ljava/lang/Object;I)V

    check-cast p1, Lz4/s;

    .line 8
    iget-object v1, p1, Lz4/s;->b:Lw5/b;

    .line 9
    sget-object v2, Lz4/r;->a:Lz4/r;

    if-eq v1, v2, :cond_0

    .line 10
    invoke-virtual {v0, v1}, Lz2/q;->d(Lw5/b;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 11
    monitor-enter p1

    .line 12
    :try_start_0
    iget-object v3, p1, Lz4/s;->b:Lw5/b;

    if-eq v3, v2, :cond_1

    move-object v1, v3

    goto :goto_0

    .line 13
    :cond_1
    iget-object v2, p1, Lz4/s;->a:Lw5/a$a;

    .line 14
    new-instance v4, Ly2/f;

    invoke-direct {v4, v2, v0}, Ly2/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, p1, Lz4/s;->a:Lw5/a$a;

    .line 15
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {v0, v3}, Lz2/q;->d(Lw5/b;)V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
