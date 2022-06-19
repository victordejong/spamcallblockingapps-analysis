.class public final Ls9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/t;


# instance fields
.field public final a:Lp9/v;


# direct methods
.method public constructor <init>(Lp9/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls9/a;->a:Lp9/v;

    return-void
.end method


# virtual methods
.method public a(Lp9/t$a;)Lp9/b0;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lt9/f;

    .line 2
    iget-object v1, v0, Lt9/f;->f:Lp9/y;

    .line 3
    iget-object v9, v0, Lt9/f;->b:Ls9/e;

    .line 4
    iget-object v2, v1, Lp9/y;->b:Ljava/lang/String;

    const-string v3, "GET"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v8, v2, 0x1

    .line 6
    iget-object v10, p0, Ls9/a;->a:Lp9/v;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-object v2, p1

    check-cast v2, Lt9/f;

    .line 8
    iget v3, v2, Lt9/f;->i:I

    .line 9
    iget v4, v2, Lt9/f;->j:I

    .line 10
    iget v5, v2, Lt9/f;->k:I

    .line 11
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-boolean v7, v10, Lp9/v;->u:Z

    const/4 v6, 0x0

    move-object v2, v9

    .line 13
    :try_start_0
    invoke-virtual/range {v2 .. v8}, Ls9/e;->e(IIIIZZ)Ls9/c;

    move-result-object v2

    .line 14
    invoke-virtual {v2, v10, p1, v9}, Ls9/c;->i(Lp9/v;Lp9/t$a;Ls9/e;)Lt9/c;

    move-result-object p1

    .line 15
    iget-object v2, v9, Ls9/e;->d:Lp9/i;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    iput-object p1, v9, Ls9/e;->n:Lt9/c;

    .line 17
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-virtual {v9}, Ls9/e;->b()Ls9/c;

    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v9, p1, v2}, Lt9/f;->b(Lp9/y;Ls9/e;Lt9/c;Ls9/c;)Lp9/b0;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 20
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 21
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v0, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method
