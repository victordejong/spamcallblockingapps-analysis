.class public final Lcom/google/android/exoplayer2/ExoPlaybackException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Lcom/google/android/exoplayer2/Format;

.field public final e:I

.field public final f:J

.field public final g:Lcom/google/android/exoplayer2/source/q;

.field final h:Z

.field private final i:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    .line 234
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/Format;IZ)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 222
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/Format;IZ)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/Format;IZ)V
    .locals 12

    move v3, p1

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    if-eq v3, v0, :cond_1

    const/4 v0, 0x3

    if-eq v3, v0, :cond_0

    const-string v0, "Unexpected runtime error"

    :goto_0
    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    goto :goto_1

    :cond_0
    const-string v0, "Remote error"

    goto :goto_0

    .line 1361
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error, index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", format_supported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    invoke-static/range {p7 .. p7}, Lcom/google/android/exoplayer2/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    const-string v0, "Source error"

    .line 1379
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v1, v0

    const/4 v8, 0x0

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    move-object v0, p0

    move-object v2, p2

    move v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v11, p8

    .line 254
    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/String;ILcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/source/q;JZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/String;ILcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/source/q;JZ)V
    .locals 0

    .line 284
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    iput p3, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->a:I

    .line 286
    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->i:Ljava/lang/Throwable;

    .line 287
    iput-object p4, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->b:Ljava/lang/String;

    .line 288
    iput p5, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->c:I

    .line 289
    iput-object p6, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->d:Lcom/google/android/exoplayer2/Format;

    .line 290
    iput p7, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->e:I

    .line 291
    iput-object p8, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->g:Lcom/google/android/exoplayer2/source/q;

    .line 292
    iput-wide p9, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->f:J

    .line 293
    iput-boolean p11, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->h:Z

    return-void
.end method

.method public static a(Ljava/io/IOException;)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 2

    .line 124
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Exception;)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 10

    .line 134
    new-instance v9, Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v0, v9

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/Format;IZ)V

    return-object v9
.end method

.method public static a(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 2

    .line 208
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlaybackException;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/exoplayer2/Format;IZ)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 10

    .line 190
    new-instance v9, Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-nez p3, :cond_0

    const/4 p4, 0x4

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    move v7, p4

    :goto_0
    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v0, v9

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v8, p5

    .line 197
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/Format;IZ)V

    return-object v9
.end method


# virtual methods
.method final a(Lcom/google/android/exoplayer2/source/q;)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 13

    .line 334
    new-instance v12, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 335
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->i:Ljava/lang/Throwable;

    iget v3, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->a:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->b:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->c:I

    iget-object v6, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->d:Lcom/google/android/exoplayer2/Format;

    iget v7, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->e:I

    iget-wide v9, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->f:J

    iget-boolean v11, p0, Lcom/google/android/exoplayer2/ExoPlaybackException;->h:Z

    move-object v0, v12

    move-object v8, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/ExoPlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/String;ILcom/google/android/exoplayer2/Format;ILcom/google/android/exoplayer2/source/q;JZ)V

    return-object v12
.end method
