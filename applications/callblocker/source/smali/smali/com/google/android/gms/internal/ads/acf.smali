.class public final Lcom/google/android/gms/internal/ads/acf;
.super Lcom/google/android/gms/internal/ads/abt;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/abt;",
        "Lcom/google/android/gms/internal/ads/dsa",
        "<",
        "Lcom/google/android/gms/internal/ads/drp;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private final e:Lcom/google/android/gms/internal/ads/aae;

.field private f:Z

.field private final g:Lcom/google/android/gms/internal/ads/acg;

.field private final h:Lcom/google/android/gms/internal/ads/abl;

.field private i:Ljava/nio/ByteBuffer;

.field private j:Z

.field private final k:Ljava/lang/Object;

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/aad;Lcom/google/android/gms/internal/ads/aae;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/abt;-><init>(Lcom/google/android/gms/internal/ads/aad;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/acf;->e:Lcom/google/android/gms/internal/ads/aae;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/acg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/acg;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/acf;->g:Lcom/google/android/gms/internal/ads/acg;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/abl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/abl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/acf;->h:Lcom/google/android/gms/internal/ads/abl;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/acf;->k:Ljava/lang/Object;

    .line 6
    return-void
.end method

.method private final f()V
    .locals 13

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acf;->g:Lcom/google/android/gms/internal/ads/acg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/acg;->a()J

    move-result-wide v0

    long-to-int v5, v0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acf;->h:Lcom/google/android/gms/internal/ads/abl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acf;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abl;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acf;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 13
    int-to-float v1, v0

    int-to-float v2, v4

    int-to-float v3, v5

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 14
    if-lez v1, :cond_0

    const/4 v10, 0x1

    .line 15
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/abb;->b()I

    move-result v11

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/abb;->c()I

    move-result v12

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/acf;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/acf;->d:Ljava/lang/String;

    .line 18
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/abt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    int-to-long v6, v1

    int-to-long v8, v0

    move-object v1, p0

    .line 19
    invoke-virtual/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/abt;->a(Ljava/lang/String;Ljava/lang/String;IIJJZII)V

    .line 20
    return-void

    .line 14
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/drq;)V
    .locals 1

    .prologue
    .line 91
    check-cast p1, Lcom/google/android/gms/internal/ads/drp;

    .line 92
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/drr;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acf;->g:Lcom/google/android/gms/internal/ads/acg;

    check-cast p1, Lcom/google/android/gms/internal/ads/drr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/acg;->a(Lcom/google/android/gms/internal/ads/drr;)V

    .line 94
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 22

    .prologue
    .line 21
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/acf;->d:Ljava/lang/String;

    .line 22
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/abt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 23
    const-string/jumbo v12, "error"

    .line 25
    :try_start_0
    new-instance v4, Lcom/google/android/gms/internal/ads/drr;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/acf;->b:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/acf;->e:Lcom/google/android/gms/internal/ads/aae;

    iget v8, v7, Lcom/google/android/gms/internal/ads/aae;->d:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/acf;->e:Lcom/google/android/gms/internal/ads/aae;

    iget v9, v7, Lcom/google/android/gms/internal/ads/aae;->e:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/internal/ads/drr;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dsm;Lcom/google/android/gms/internal/ads/dsa;IIZLcom/google/android/gms/internal/ads/drv;)V

    .line 26
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/acf;->e:Lcom/google/android/gms/internal/ads/aae;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/aae;->i:Z

    if-eqz v5, :cond_2

    .line 27
    new-instance v5, Lcom/google/android/gms/internal/ads/aaw;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/acf;->a:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v4, v7, v8}, Lcom/google/android/gms/internal/ads/aaw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/drp;Lcom/google/android/gms/internal/ads/dsa;Lcom/google/android/gms/internal/ads/aaz;)V

    move-object v10, v5

    .line 30
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 31
    new-instance v5, Lcom/google/android/gms/internal/ads/drq;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/ads/drq;-><init>(Landroid/net/Uri;)V

    invoke-interface {v10, v5}, Lcom/google/android/gms/internal/ads/drp;->a(Lcom/google/android/gms/internal/ads/drq;)J

    .line 32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/acf;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/aad;

    .line 33
    if-eqz v4, :cond_0

    .line 34
    move-object/from16 v0, p0

    invoke-interface {v4, v13, v0}, Lcom/google/android/gms/internal/ads/aad;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/abt;)V

    .line 35
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v11

    .line 36
    invoke-interface {v11}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v8

    .line 38
    sget-object v4, Lcom/google/android/gms/internal/ads/edi;->p:Lcom/google/android/gms/internal/ads/ect;

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v4

    .line 40
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 41
    sget-object v4, Lcom/google/android/gms/internal/ads/edi;->o:Lcom/google/android/gms/internal/ads/ect;

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v4

    .line 43
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/acf;->e:Lcom/google/android/gms/internal/ads/aae;

    iget v4, v4, Lcom/google/android/gms/internal/ads/aae;->c:I

    .line 45
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/acf;->i:Ljava/nio/ByteBuffer;

    .line 46
    const/16 v4, 0x2000

    new-array v0, v4, [B

    move-object/from16 v18, v0

    move-wide v4, v8

    .line 47
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/acf;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    const/16 v7, 0x2000

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 48
    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-interface {v10, v0, v7, v6}, Lcom/google/android/gms/internal/ads/drp;->a([BII)I

    move-result v6

    .line 49
    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 50
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/acf;->l:Z

    .line 51
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/acf;->h:Lcom/google/android/gms/internal/ads/abl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/acf;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/abl;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    long-to-int v4, v4

    .line 52
    int-to-long v4, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v4, v5}, Lcom/google/android/gms/internal/ads/abt;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 73
    :goto_1
    const/4 v4, 0x1

    .line 79
    :goto_2
    return v4

    :cond_2
    move-object v10, v4

    .line 28
    goto/16 :goto_0

    .line 54
    :cond_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/acf;->k:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/acf;->f:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/acf;->i:Ljava/nio/ByteBuffer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 57
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/acf;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-gtz v6, :cond_5

    .line 59
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/acf;->f()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 74
    :catch_0
    move-exception v4

    move-object v5, v12

    .line 75
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x22

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Failed to preload url "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v5, v4}, Lcom/google/android/gms/internal/ads/abt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 57
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    .line 61
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/acf;->f:Z

    if-eqz v6, :cond_6

    .line 62
    const-string/jumbo v5, "externalAbort"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 63
    :try_start_5
    new-instance v4, Ljava/io/IOException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/acf;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/16 v7, 0x23

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v7, "Precache abort at "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 74
    :catch_1
    move-exception v4

    goto/16 :goto_3

    .line 64
    :cond_6
    :try_start_6
    invoke-interface {v11}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    .line 65
    sub-long v20, v6, v4

    cmp-long v19, v20, v14

    if-ltz v19, :cond_7

    .line 66
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/acf;->f()V

    move-wide v4, v6

    .line 68
    :cond_7
    sub-long/2addr v6, v8

    const-wide/16 v20, 0x3e8

    mul-long v20, v20, v16

    cmp-long v6, v6, v20

    if-lez v6, :cond_1

    .line 69
    const-string/jumbo v5, "downloadTimeout"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 70
    const/16 v4, 0x31

    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Timeout exceeded. Limit: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " sec"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
.end method

.method protected final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 9
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
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/acf;->f:Z

    .line 81
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acf;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/acf;->l:Z

    return v0
.end method

.method public final e()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 82
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acf;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acf;->i:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/acf;->j:Z

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acf;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/acf;->j:Z

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/acf;->f:Z

    .line 87
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acf;->i:Ljava/nio/ByteBuffer;

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
