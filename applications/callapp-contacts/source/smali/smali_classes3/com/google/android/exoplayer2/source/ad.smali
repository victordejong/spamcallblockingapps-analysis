.class public final Lcom/google/android/exoplayer2/source/ad;
.super Lcom/google/android/exoplayer2/al;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final c:Lcom/google/android/exoplayer2/MediaItem;


# instance fields
.field private final d:J

.field private final e:J

.field private final f:J

.field private final g:J

.field private final h:J

.field private final i:J

.field private final j:J

.field private final k:Z

.field private final l:Z

.field private final m:Ljava/lang/Object;

.field private final n:Lcom/google/android/exoplayer2/MediaItem;

.field private final o:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/ad;->a:Ljava/lang/Object;

    .line 33
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaItem$a;-><init>()V

    const-string v1, "SinglePeriodTimeline"

    .line 2150
    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$a;->a:Ljava/lang/String;

    .line 34
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 2173
    iput-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$a;->b:Landroid/net/Uri;

    .line 34
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$a;->a()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/ad;->c:Lcom/google/android/exoplayer2/MediaItem;

    return-void
.end method

.method public constructor <init>(JJJJJJJZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V
    .locals 3

    move-object v0, p0

    .line 248
    invoke-direct {p0}, Lcom/google/android/exoplayer2/al;-><init>()V

    move-wide v1, p1

    .line 249
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/ad;->d:J

    move-wide v1, p3

    .line 250
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/ad;->e:J

    move-wide v1, p5

    .line 251
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/ad;->f:J

    move-wide v1, p7

    .line 252
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/ad;->g:J

    move-wide v1, p9

    .line 253
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/ad;->h:J

    move-wide v1, p11

    .line 254
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/ad;->i:J

    move-wide/from16 v1, p13

    .line 255
    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/ad;->j:J

    move/from16 v1, p15

    .line 256
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/ad;->k:Z

    move/from16 v1, p16

    .line 257
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/ad;->l:Z

    move-object/from16 v1, p17

    .line 258
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/ad;->m:Ljava/lang/Object;

    .line 259
    invoke-static/range {p18 .. p18}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaItem;

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/ad;->n:Lcom/google/android/exoplayer2/MediaItem;

    move-object/from16 v1, p19

    .line 260
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/ad;->o:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    return-void
.end method

.method public constructor <init>(JJJJJJJZZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    sget-object v0, Lcom/google/android/exoplayer2/source/ad;->c:Lcom/google/android/exoplayer2/MediaItem;

    .line 208
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem;->a()Lcom/google/android/exoplayer2/MediaItem$a;

    move-result-object v1

    move-object/from16 v2, p19

    .line 1547
    iput-object v2, v1, Lcom/google/android/exoplayer2/MediaItem$a;->n:Ljava/lang/Object;

    .line 208
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaItem$a;->a()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v20

    if-eqz p17, :cond_0

    .line 209
    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v21, v0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move/from16 v17, p15

    move/from16 v18, p16

    move-object/from16 v19, p18

    .line 197
    invoke-direct/range {v2 .. v21}, Lcom/google/android/exoplayer2/source/ad;-><init>(JJJJJJJZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    return-void
.end method

.method public constructor <init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;)V
    .locals 20

    move-object/from16 v15, p13

    if-eqz p11, :cond_0

    .line 176
    iget-object v0, v15, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v19, v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    move-object/from16 v17, p12

    move-object/from16 v18, p13

    .line 164
    invoke-direct/range {v0 .. v19}, Lcom/google/android/exoplayer2/source/ad;-><init>(JJJJJJJZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    return-void
.end method

.method public constructor <init>(JJJJZZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 122
    invoke-direct/range {v0 .. v19}, Lcom/google/android/exoplayer2/source/ad;-><init>(JJJJJJJZZZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;)V
    .locals 14

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    .line 93
    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/ad;-><init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;)V

    return-void
.end method

.method public constructor <init>(JZZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    .line 63
    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplayer2/source/ad;-><init>(JJJJZZZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;
    .locals 7

    const/4 v0, 0x1

    .line 309
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/a;->a(II)I

    if-eqz p3, :cond_0

    .line 310
    sget-object p1, Lcom/google/android/exoplayer2/source/ad;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/4 v1, 0x0

    .line 311
    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/ad;->g:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/ad;->i:J

    neg-long v5, v5

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/al$a;->a(Ljava/lang/Object;Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/al$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x1

    move/from16 v2, p1

    .line 271
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/a;->a(II)I

    .line 272
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/ad;->j:J

    .line 273
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/source/ad;->l:Z

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v3, p3, v6

    if-eqz v3, :cond_1

    .line 274
    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/ad;->h:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_0

    :goto_0
    move-wide/from16 v19, v4

    goto :goto_1

    :cond_0
    add-long v1, v1, p3

    cmp-long v3, v1, v6

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v19, v1

    .line 285
    :goto_1
    sget-object v7, Lcom/google/android/exoplayer2/al$b;->a:Ljava/lang/Object;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/ad;->n:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/ad;->m:Ljava/lang/Object;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/ad;->d:J

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/ad;->e:J

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/ad;->f:J

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/ad;->k:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/ad;->l:Z

    move/from16 v17, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ad;->o:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-object/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/ad;->h:J

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/ad;->i:J

    move-wide/from16 v23, v1

    move-object/from16 v6, p2

    invoke-virtual/range {v6 .. v24}, Lcom/google/android/exoplayer2/al$b;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/MediaItem$LiveConfiguration;JJJ)Lcom/google/android/exoplayer2/al$b;

    move-result-object v1

    return-object v1
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 321
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/a;->a(II)I

    .line 322
    sget-object p1, Lcom/google/android/exoplayer2/source/ad;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 1

    .line 316
    sget-object v0, Lcom/google/android/exoplayer2/source/ad;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
