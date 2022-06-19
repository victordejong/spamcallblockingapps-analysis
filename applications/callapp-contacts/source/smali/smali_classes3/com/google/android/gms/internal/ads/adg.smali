.class public final Lcom/google/android/gms/internal/ads/adg;
.super Lcom/google/android/gms/internal/ads/acu;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ecp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/acu;",
        "Lcom/google/android/gms/internal/ads/ecp<",
        "Lcom/google/android/gms/internal/ads/ecb;",
        ">;"
    }
.end annotation


# instance fields
.field d:Ljava/lang/String;

.field e:Z

.field private final f:Lcom/google/android/gms/internal/ads/aay;

.field private g:Z

.field private final h:Lcom/google/android/gms/internal/ads/add;

.field private final i:Lcom/google/android/gms/internal/ads/acm;

.field private j:Ljava/nio/ByteBuffer;

.field private k:Z

.field private final l:Ljava/lang/Object;

.field private final m:Ljava/lang/String;

.field private final n:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/abb;Lcom/google/android/gms/internal/ads/aay;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/acu;-><init>(Lcom/google/android/gms/internal/ads/abb;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/adg;->f:Lcom/google/android/gms/internal/ads/aay;

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/ads/add;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/add;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/adg;->h:Lcom/google/android/gms/internal/ads/add;

    .line 4
    new-instance p2, Lcom/google/android/gms/internal/ads/acm;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/acm;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/adg;->i:Lcom/google/android/gms/internal/ads/acm;

    .line 5
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/adg;->l:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/abb;->h()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/adg;->m:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/abb;->i()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/adg;->n:I

    return-void
.end method

.method private final d()V
    .locals 15

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adg;->h:Lcom/google/android/gms/internal/ads/add;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/add;->a()J

    move-result-wide v0

    long-to-int v7, v0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adg;->i:Lcom/google/android/gms/internal/ads/acm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adg;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/acm;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adg;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    int-to-float v0, v1

    int-to-float v2, v6

    int-to-float v3, v7

    div-float/2addr v2, v3

    mul-float v0, v0, v2

    .line 15
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 1041
    :goto_0
    sget v13, Lcom/google/android/gms/internal/ads/abw;->a:I

    .line 1042
    sget v14, Lcom/google/android/gms/internal/ads/abw;->b:I

    .line 19
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/adg;->d:Ljava/lang/String;

    .line 20
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/acu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    int-to-long v8, v0

    int-to-long v10, v1

    .line 2014
    sget-object v0, Lcom/google/android/gms/internal/ads/yq;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/acv;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/acv;-><init>(Lcom/google/android/gms/internal/ads/acu;Ljava/lang/String;Ljava/lang/String;IIJJZII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 93
    check-cast p1, Lcom/google/android/gms/internal/ads/ecb;

    .line 94
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ech;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adg;->h:Lcom/google/android/gms/internal/ads/add;

    check-cast p1, Lcom/google/android/gms/internal/ads/ech;

    .line 2020
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/add;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 23
    iput-object v10, v9, Lcom/google/android/gms/internal/ads/adg;->d:Ljava/lang/String;

    .line 24
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/acu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "error"

    const/4 v13, 0x0

    .line 27
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ech;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/adg;->b:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/adg;->f:Lcom/google/android/gms/internal/ads/aay;

    iget v5, v1, Lcom/google/android/gms/internal/ads/aay;->d:I

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/adg;->f:Lcom/google/android/gms/internal/ads/aay;

    iget v6, v1, Lcom/google/android/gms/internal/ads/aay;->e:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/ech;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/eda;Lcom/google/android/gms/internal/ads/ecp;IIZLcom/google/android/gms/internal/ads/ecj;)V

    .line 28
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/adg;->f:Lcom/google/android/gms/internal/ads/aay;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/aay;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_0

    .line 29
    :try_start_1
    new-instance v8, Lcom/google/android/gms/internal/ads/abs;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/adg;->a:Landroid/content/Context;

    iget-object v4, v9, Lcom/google/android/gms/internal/ads/adg;->m:Ljava/lang/String;

    iget v5, v9, Lcom/google/android/gms/internal/ads/adg;->n:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/abs;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ecb;Ljava/lang/String;ILcom/google/android/gms/internal/ads/ecp;Lcom/google/android/gms/internal/ads/abu;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v8

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_6

    .line 32
    :cond_0
    :goto_0
    :try_start_2
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 33
    new-instance v2, Lcom/google/android/gms/internal/ads/ecf;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/ecf;-><init>(Landroid/net/Uri;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/ecb;->a(Lcom/google/android/gms/internal/ads/ecf;)J

    .line 34
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/adg;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/abb;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_1

    .line 36
    :try_start_3
    invoke-interface {v1, v11, v9}, Lcom/google/android/gms/internal/ads/abb;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/acu;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 37
    :cond_1
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v1

    .line 38
    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v2

    .line 40
    sget-object v4, Lcom/google/android/gms/internal/ads/aq;->r:Lcom/google/android/gms/internal/ads/af;

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v4

    .line 42
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 43
    sget-object v6, Lcom/google/android/gms/internal/ads/aq;->q:Lcom/google/android/gms/internal/ads/af;

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v6

    .line 45
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 46
    iget-object v8, v9, Lcom/google/android/gms/internal/ads/adg;->f:Lcom/google/android/gms/internal/ads/aay;

    iget v8, v8, Lcom/google/android/gms/internal/ads/aay;->c:I

    .line 47
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, v9, Lcom/google/android/gms/internal/ads/adg;->j:Ljava/nio/ByteBuffer;

    const/16 v8, 0x2000

    new-array v15, v8, [B

    move-wide/from16 v16, v2

    .line 49
    :goto_1
    iget-object v14, v9, Lcom/google/android/gms/internal/ads/adg;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 50
    invoke-interface {v0, v15, v13, v14}, Lcom/google/android/gms/internal/ads/ecb;->a([BII)I

    move-result v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v8, -0x1

    if-ne v14, v8, :cond_2

    const/4 v8, 0x1

    .line 52
    :try_start_5
    iput-boolean v8, v9, Lcom/google/android/gms/internal/ads/adg;->e:Z

    .line 53
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/adg;->i:Lcom/google/android/gms/internal/ads/acm;

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/adg;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/acm;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v0, v1

    .line 54
    invoke-virtual {v9, v10, v11, v0, v1}, Lcom/google/android/gms/internal/ads/acu;->a(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_2
    const/4 v1, 0x1

    goto :goto_4

    .line 56
    :cond_2
    :try_start_6
    iget-object v8, v9, Lcom/google/android/gms/internal/ads/adg;->l:Ljava/lang/Object;

    monitor-enter v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 57
    :try_start_7
    iget-boolean v13, v9, Lcom/google/android/gms/internal/ads/adg;->g:Z

    if-nez v13, :cond_3

    .line 58
    iget-object v13, v9, Lcom/google/android/gms/internal/ads/adg;->j:Ljava/nio/ByteBuffer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v18, v12

    const/4 v12, 0x0

    :try_start_8
    invoke-virtual {v13, v15, v12, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_3
    move-object/from16 v18, v12

    .line 59
    :goto_3
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 60
    :try_start_9
    iget-object v8, v9, Lcom/google/android/gms/internal/ads/adg;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-gtz v8, :cond_4

    .line 61
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/adg;->d()V

    goto :goto_2

    :goto_4
    return v1

    .line 63
    :cond_4
    iget-boolean v8, v9, Lcom/google/android/gms/internal/ads/adg;->g:Z

    if-nez v8, :cond_7

    .line 66
    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v12

    sub-long v19, v12, v16

    cmp-long v8, v19, v4

    if-ltz v8, :cond_5

    .line 68
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/adg;->d()V

    move-wide/from16 v16, v12

    :cond_5
    sub-long/2addr v12, v2

    const-wide/16 v19, 0x3e8

    mul-long v19, v19, v6

    cmp-long v8, v12, v19

    if-gtz v8, :cond_6

    move-object/from16 v12, v18

    const/16 v8, 0x2000

    const/4 v13, 0x0

    goto :goto_1

    :cond_6
    const-string v12, "downloadTimeout"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    const/16 v0, 0x31

    .line 72
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Timeout exceeded. Limit: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " sec"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :cond_7
    :try_start_b
    const-string v12, "externalAbort"
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 65
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/adg;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/16 v2, 0x23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Precache abort at "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catchall_0
    move-exception v0

    move-object/from16 v18, v12

    .line 59
    :goto_5
    :try_start_d
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    :catch_1
    move-exception v0

    move-object/from16 v12, v18

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v18, v12

    .line 77
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to preload url "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Exception: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v9, v10, v11, v12, v0}, Lcom/google/android/gms/internal/ads/acu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method protected final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 11
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/acu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "cache:"

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/adg;->g:Z

    return-void
.end method

.method public final c()Ljava/nio/ByteBuffer;
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adg;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adg;->j:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/adg;->k:Z

    if-nez v3, :cond_0

    .line 86
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 87
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/adg;->k:Z

    .line 88
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/adg;->g:Z

    .line 89
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adg;->j:Ljava/nio/ByteBuffer;

    return-object v0

    :catchall_0
    move-exception v1

    .line 89
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final bridge synthetic c(I)V
    .locals 0

    return-void
.end method
