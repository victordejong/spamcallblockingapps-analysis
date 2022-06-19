.class public final Lcom/google/android/gms/internal/ads/aaw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/drp;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Z

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/drp;

.field private final e:Lcom/google/android/gms/internal/ads/dsa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsa",
            "<",
            "Lcom/google/android/gms/internal/ads/drp;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/aaz;

.field private g:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/drp;Lcom/google/android/gms/internal/ads/dsa;Lcom/google/android/gms/internal/ads/aaz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/drp;",
            "Lcom/google/android/gms/internal/ads/dsa",
            "<",
            "Lcom/google/android/gms/internal/ads/drp;",
            ">;",
            "Lcom/google/android/gms/internal/ads/aaz;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aaw;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aaw;->d:Lcom/google/android/gms/internal/ads/drp;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aaw;->e:Lcom/google/android/gms/internal/ads/dsa;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/aaw;->f:Lcom/google/android/gms/internal/ads/aaz;

    .line 6
    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aaw;->b:Z

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attempt to read closed CacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaw;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaw;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aaw;->e:Lcom/google/android/gms/internal/ads/dsa;

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aaw;->e:Lcom/google/android/gms/internal/ads/dsa;

    invoke-interface {v1, p0, v0}, Lcom/google/android/gms/internal/ads/dsa;->a(Ljava/lang/Object;I)V

    .line 87
    :cond_1
    return v0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaw;->d:Lcom/google/android/gms/internal/ads/drp;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/drp;->a([BII)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/drq;)J
    .locals 12

    .prologue
    const-wide/16 v2, -0x1

    const/4 v11, 0x0

    const/16 v10, 0x2c

    const/4 v9, 0x1

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aaw;->b:Z

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attempt to open an already open CacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/aaw;->b:Z

    .line 22
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/drq;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aaw;->g:Landroid/net/Uri;

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaw;->e:Lcom/google/android/gms/internal/ads/dsa;

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaw;->e:Lcom/google/android/gms/internal/ads/dsa;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/dsa;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/drq;)V

    .line 26
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/drq;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dvu;->a(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/dvu;

    move-result-object v4

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bO:Lcom/google/android/gms/internal/ads/ect;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 30
    if-eqz v4, :cond_3

    .line 31
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/drq;->d:J

    iput-wide v0, v4, Lcom/google/android/gms/internal/ads/dvu;->c:J

    .line 32
    iget-boolean v0, v4, Lcom/google/android/gms/internal/ads/dvu;->b:Z

    if-eqz v0, :cond_2

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bQ:Lcom/google/android/gms/internal/ads/ect;

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Long;

    .line 39
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 40
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v6

    .line 41
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->w()Lcom/google/android/gms/internal/ads/dwj;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/aaw;->c:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/dwj;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dvu;)Ljava/util/concurrent/Future;

    move-result-object v5

    .line 42
    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v0, v1, v8}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aaw;->a:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    .line 44
    sub-long/2addr v0, v6

    .line 45
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/aaw;->f:Lcom/google/android/gms/internal/ads/aaz;

    invoke-interface {v4, v9, v0, v1}, Lcom/google/android/gms/internal/ads/aaz;->a(ZJ)V

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Cache connection took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    move-wide v0, v2

    .line 78
    :goto_1
    return-wide v0

    .line 36
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bP:Lcom/google/android/gms/internal/ads/ect;

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Long;

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    :goto_2
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v5, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    .line 51
    sub-long/2addr v0, v6

    .line 52
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aaw;->f:Lcom/google/android/gms/internal/ads/aaz;

    invoke-interface {v2, v11, v0, v1}, Lcom/google/android/gms/internal/ads/aaz;->a(ZJ)V

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Cache connection took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 75
    :cond_3
    :goto_3
    if-eqz v4, :cond_6

    .line 76
    new-instance v1, Lcom/google/android/gms/internal/ads/drq;

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/dvu;->a:Ljava/lang/String;

    .line 77
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/drq;->b:[B

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/drq;->c:J

    iget-wide v6, p1, Lcom/google/android/gms/internal/ads/drq;->d:J

    iget-wide v8, p1, Lcom/google/android/gms/internal/ads/drq;->e:J

    iget-object v10, p1, Lcom/google/android/gms/internal/ads/drq;->f:Ljava/lang/String;

    iget v11, p1, Lcom/google/android/gms/internal/ads/drq;->g:I

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/drq;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    .line 78
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaw;->d:Lcom/google/android/gms/internal/ads/drp;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/drp;->a(Lcom/google/android/gms/internal/ads/drq;)J

    move-result-wide v0

    goto :goto_1

    .line 56
    :catch_1
    move-exception v0

    const/4 v0, 0x1

    :try_start_2
    invoke-interface {v5, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    .line 59
    sub-long/2addr v0, v6

    .line 60
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aaw;->f:Lcom/google/android/gms/internal/ads/aaz;

    invoke-interface {v2, v11, v0, v1}, Lcom/google/android/gms/internal/ads/aaz;->a(ZJ)V

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Cache connection took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 63
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    .line 64
    sub-long/2addr v2, v6

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aaw;->f:Lcom/google/android/gms/internal/ads/aaz;

    invoke-interface {v1, v11, v2, v3}, Lcom/google/android/gms/internal/ads/aaz;->a(ZJ)V

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Cache connection took "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 67
    throw v0

    .line 68
    :cond_4
    const/4 v0, 0x0

    .line 69
    if-eqz v4, :cond_5

    .line 70
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/drq;->d:J

    iput-wide v0, v4, Lcom/google/android/gms/internal/ads/dvu;->c:J

    .line 71
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->i()Lcom/google/android/gms/internal/ads/dvl;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/dvl;->a(Lcom/google/android/gms/internal/ads/dvu;)Lcom/google/android/gms/internal/ads/dvt;

    move-result-object v0

    .line 72
    :cond_5
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dvt;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dvt;->b()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aaw;->a:Ljava/io/InputStream;

    move-wide v0, v2

    .line 74
    goto/16 :goto_1

    .line 49
    :catch_2
    move-exception v0

    goto/16 :goto_2

    :cond_6
    move-object v1, p1

    goto/16 :goto_4
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaw;->g:Landroid/net/Uri;

    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aaw;->b:Z

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attempt to close an already closed CacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aaw;->b:Z

    .line 10
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aaw;->g:Landroid/net/Uri;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaw;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaw;->a:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/android/gms/common/util/k;->a(Ljava/io/Closeable;)V

    .line 13
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/aaw;->a:Ljava/io/InputStream;

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaw;->e:Lcom/google/android/gms/internal/ads/dsa;

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaw;->e:Lcom/google/android/gms/internal/ads/dsa;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/dsa;->a(Ljava/lang/Object;)V

    .line 18
    :cond_1
    return-void

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aaw;->d:Lcom/google/android/gms/internal/ads/drp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/drp;->b()V

    goto :goto_0
.end method
