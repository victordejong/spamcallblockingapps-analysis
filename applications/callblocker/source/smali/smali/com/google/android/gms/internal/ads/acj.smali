.class public final Lcom/google/android/gms/internal/ads/acj;
.super Lcom/google/android/gms/internal/ads/abt;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/abk;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private d:Lcom/google/android/gms/internal/ads/abb;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/Exception;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/aad;Lcom/google/android/gms/internal/ads/aae;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/abt;-><init>(Lcom/google/android/gms/internal/ads/aad;)V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/aad;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/abb;

    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/ads/abb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aae;)V

    .line 4
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/acj;->d:Lcom/google/android/gms/internal/ads/abb;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acj;->d:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/abb;->a(Lcom/google/android/gms/internal/ads/abk;)V

    .line 6
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 115
    monitor-enter p0

    .line 116
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/acj;->f:Z

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 118
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/abt;->a()V

    .line 119
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acj;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acj;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/abt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acj;->g:Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acj;->e:Ljava/lang/String;

    const-string/jumbo v2, "badUrl"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/acj;->g:Ljava/lang/Exception;

    .line 124
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/acj;->b(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/abt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 119
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acj;->e:Ljava/lang/String;

    const-string/jumbo v2, "externalAbort"

    const-string/jumbo v3, "Programmatic precache abort."

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/abt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acj;->d:Lcom/google/android/gms/internal/ads/abb;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acj;->d:Lcom/google/android/gms/internal/ads/abb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abb;->a(Lcom/google/android/gms/internal/ads/abk;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acj;->d:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abb;->e()V

    .line 42
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/abt;->a()V

    .line 43
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acj;->d:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abb;->d()Lcom/google/android/gms/internal/ads/aay;

    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aay;->b(I)V

    .line 29
    return-void
.end method

.method public final a(II)V
    .locals 0

    .prologue
    .line 12
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->j:Lcom/google/android/gms/internal/ads/ect;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    if-eqz v0, :cond_2

    .line 17
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 18
    const-string/jumbo v1, "all"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    :cond_2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/acj;->g:Ljava/lang/Exception;

    .line 24
    const-string/jumbo v0, "Precache error"

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/acj;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(ZJ)V
    .locals 4

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acj;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aad;

    .line 8
    if-eqz v0, :cond_0

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/yg;->e:Lcom/google/android/gms/internal/ads/crs;

    new-instance v2, Lcom/google/android/gms/internal/ads/ach;

    invoke-direct {v2, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/ach;-><init>(Lcom/google/android/gms/internal/ads/aad;ZJ)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    .line 10
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/abt;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 26

    .prologue
    .line 46
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/acj;->e:Ljava/lang/String;

    .line 47
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/abt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 48
    const-string/jumbo v15, "error"

    .line 49
    :try_start_0
    move-object/from16 v0, p2

    array-length v4, v0

    new-array v5, v4, [Landroid/net/Uri;

    .line 50
    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p2

    array-length v6, v0

    if-ge v4, v6, :cond_0

    .line 51
    aget-object v6, p2, v4

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v5, v4

    .line 52
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 53
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/acj;->d:Lcom/google/android/gms/internal/ads/abb;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/acj;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ads/abb;->a([Landroid/net/Uri;Ljava/lang/String;)V

    .line 54
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/acj;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/aad;

    .line 55
    if-eqz v4, :cond_1

    .line 56
    move-object/from16 v0, p0

    invoke-interface {v4, v7, v0}, Lcom/google/android/gms/internal/ads/aad;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/abt;)V

    .line 57
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v16

    .line 58
    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v18

    .line 59
    sget-object v4, Lcom/google/android/gms/internal/ads/edi;->p:Lcom/google/android/gms/internal/ads/ect;

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v4

    .line 61
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 62
    sget-object v4, Lcom/google/android/gms/internal/ads/edi;->o:Lcom/google/android/gms/internal/ads/ect;

    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v4

    .line 64
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    mul-long v22, v4, v8

    .line 65
    sget-object v4, Lcom/google/android/gms/internal/ads/edi;->n:Lcom/google/android/gms/internal/ads/ect;

    .line 66
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v4

    .line 67
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v24, v0

    .line 68
    const-wide/16 v4, -0x1

    .line 69
    :goto_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 70
    :try_start_1
    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v8

    sub-long v8, v8, v18

    cmp-long v6, v8, v22

    if-lez v6, :cond_2

    .line 71
    const-string/jumbo v5, "downloadTimeout"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    :try_start_2
    new-instance v4, Ljava/io/IOException;

    const/16 v6, 0x2f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Timeout reached. Limit: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " ms"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 105
    :catchall_0
    move-exception v4

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 106
    :catch_0
    move-exception v4

    move-object v15, v5

    .line 107
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x22

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v6, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Failed to preload url "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " Exception: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/abt;->a()V

    .line 109
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/acj;->b(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    .line 110
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v15, v4}, Lcom/google/android/gms/internal/ads/abt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v4, 0x0

    .line 112
    :goto_4
    return v4

    .line 73
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/acj;->f:Z

    if-eqz v6, :cond_4

    .line 74
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/acj;->g:Ljava/lang/Exception;

    if-eqz v4, :cond_3

    .line 75
    const-string/jumbo v5, "badUrl"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/acj;->g:Ljava/lang/Exception;

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 77
    :cond_3
    :try_start_6
    const-string/jumbo v5, "externalAbort"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 78
    :try_start_7
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v6, "Abort requested before buffering finished. "

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 79
    :cond_4
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/acj;->h:Z

    if-eqz v6, :cond_5

    .line 80
    monitor-exit p0

    .line 112
    :goto_5
    const/4 v4, 0x1

    goto :goto_4

    .line 81
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/acj;->d:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/abb;->a()Lcom/google/android/gms/internal/ads/dkt;

    move-result-object v6

    .line 82
    if-nez v6, :cond_6

    .line 83
    const-string/jumbo v5, "exoPlayerReleased"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 84
    :try_start_9
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v6, "ExoPlayer was released during preloading."

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 85
    :cond_6
    :try_start_a
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/dkt;->f()J

    move-result-wide v10

    .line 86
    const-wide/16 v8, 0x0

    cmp-long v8, v10, v8

    if-lez v8, :cond_a

    .line 87
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/dkt;->h()J

    move-result-wide v8

    .line 88
    cmp-long v6, v8, v4

    if-eqz v6, :cond_7

    .line 89
    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-lez v4, :cond_8

    const/4 v12, 0x1

    .line 91
    :goto_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/abb;->b()I

    move-result v13

    .line 92
    invoke-static {}, Lcom/google/android/gms/internal/ads/abb;->c()I

    move-result v14

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 93
    invoke-virtual/range {v5 .. v14}, Lcom/google/android/gms/internal/ads/abt;->a(Ljava/lang/String;Ljava/lang/String;JJZII)V

    move-wide v4, v8

    .line 95
    :cond_7
    cmp-long v6, v8, v10

    if-ltz v6, :cond_9

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v10, v11}, Lcom/google/android/gms/internal/ads/abt;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 97
    monitor-exit p0

    goto :goto_5

    .line 105
    :catchall_1
    move-exception v4

    move-object v5, v15

    goto/16 :goto_2

    .line 89
    :cond_8
    const/4 v12, 0x0

    goto :goto_6

    .line 98
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/acj;->d:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/abb;->f()J

    move-result-wide v10

    cmp-long v6, v10, v24

    if-ltz v6, :cond_a

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_a

    .line 99
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    .line 100
    :cond_a
    :try_start_b
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 105
    :try_start_c
    monitor-exit p0

    goto/16 :goto_1

    .line 103
    :catch_1
    move-exception v4

    const-string/jumbo v5, "interrupted"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 104
    :try_start_d
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v6, "Wait interrupted."

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 106
    :catch_2
    move-exception v4

    goto/16 :goto_3
.end method

.method protected final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    const-string/jumbo v0, "cache:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/abt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/acj;->c(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 11
    return-void
.end method

.method public final c()Lcom/google/android/gms/internal/ads/abb;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    monitor-enter p0

    .line 129
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/acj;->h:Z

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 131
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acj;->d:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abb;->a(Lcom/google/android/gms/internal/ads/abk;)V

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acj;->d:Lcom/google/android/gms/internal/ads/abb;

    .line 134
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/acj;->d:Lcom/google/android/gms/internal/ads/abb;

    .line 135
    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acj;->d:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abb;->d()Lcom/google/android/gms/internal/ads/aay;

    move-result-object v0

    .line 31
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aay;->a(I)V

    .line 32
    return-void
.end method

.method public final d(I)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acj;->d:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abb;->d()Lcom/google/android/gms/internal/ads/aay;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aay;->c(I)V

    .line 35
    return-void
.end method

.method public final e(I)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acj;->d:Lcom/google/android/gms/internal/ads/abb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abb;->d()Lcom/google/android/gms/internal/ads/aay;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aay;->d(I)V

    .line 38
    return-void
.end method
