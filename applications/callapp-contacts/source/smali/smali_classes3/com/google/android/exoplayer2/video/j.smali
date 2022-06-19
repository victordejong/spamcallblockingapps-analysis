.class public final Lcom/google/android/exoplayer2/video/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/j$b;,
        Lcom/google/android/exoplayer2/video/j$a;
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/exoplayer2/video/c;

.field final b:Landroid/view/WindowManager;

.field final c:Lcom/google/android/exoplayer2/video/j$b;

.field final d:Lcom/google/android/exoplayer2/video/j$a;

.field e:Z

.field f:Landroid/view/Surface;

.field g:F

.field h:F

.field i:J

.field j:J

.field k:J

.field l:J

.field m:J

.field n:J

.field o:J

.field private p:F

.field private q:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/google/android/exoplayer2/video/c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/j;->a:Lcom/google/android/exoplayer2/video/c;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "window"

    .line 132
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/j;->b:Landroid/view/WindowManager;

    goto :goto_0

    .line 134
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/j;->b:Landroid/view/WindowManager;

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/j;->b:Landroid/view/WindowManager;

    if-eqz v1, :cond_2

    .line 138
    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string v1, "display"

    .line 1400
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    if-eqz p1, :cond_1

    .line 1401
    new-instance v0, Lcom/google/android/exoplayer2/video/j$a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/video/j$a;-><init>(Lcom/google/android/exoplayer2/video/j;Landroid/hardware/display/DisplayManager;)V

    .line 138
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/j;->d:Lcom/google/android/exoplayer2/video/j$a;

    .line 139
    invoke-static {}, Lcom/google/android/exoplayer2/video/j$b;->a()Lcom/google/android/exoplayer2/video/j$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/j;->c:Lcom/google/android/exoplayer2/video/j$b;

    goto :goto_1

    .line 141
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/j;->d:Lcom/google/android/exoplayer2/video/j$a;

    .line 142
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/j;->c:Lcom/google/android/exoplayer2/video/j$b;

    :goto_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 144
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/j;->i:J

    .line 145
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/j;->j:J

    const/high16 p1, -0x40800000    # -1.0f

    .line 146
    iput p1, p0, Lcom/google/android/exoplayer2/video/j;->g:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 147
    iput p1, p0, Lcom/google/android/exoplayer2/video/j;->h:F

    return-void
.end method

.method private static a(Landroid/view/Surface;F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 389
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/view/Surface;->setFrameRate(FI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "VideoFrameReleaseHelper"

    const-string v0, "Failed to call Surface.setFrameRate"

    .line 391
    invoke-static {p1, v0, p0}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 294
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/j;->k:J

    const-wide/16 v0, -0x1

    .line 295
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/j;->n:J

    .line 296
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/j;->l:J

    return-void
.end method

.method final a(Z)V
    .locals 4

    .line 356
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/j;->f:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 361
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/video/j;->e:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer2/video/j;->p:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    .line 362
    iget v1, p0, Lcom/google/android/exoplayer2/video/j;->h:F

    mul-float v1, v1, v2

    :cond_1
    if-nez p1, :cond_2

    .line 366
    iget p1, p0, Lcom/google/android/exoplayer2/video/j;->q:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    return-void

    .line 369
    :cond_2
    iput v1, p0, Lcom/google/android/exoplayer2/video/j;->q:F

    .line 370
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/j;->a(Landroid/view/Surface;F)V

    :cond_3
    :goto_0
    return-void
.end method

.method final b()V
    .locals 8

    .line 312
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/j;->f:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/j;->a:Lcom/google/android/exoplayer2/video/c;

    .line 2097
    iget-object v0, v0, Lcom/google/android/exoplayer2/video/c;->a:Lcom/google/android/exoplayer2/video/c$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/c$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/j;->a:Lcom/google/android/exoplayer2/video/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/c;->b()F

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/video/j;->g:F

    .line 318
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/video/j;->p:F

    cmpl-float v3, v0, v2

    if-nez v3, :cond_2

    return-void

    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmpl-float v6, v0, v3

    if-eqz v6, :cond_6

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6

    .line 326
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/j;->a:Lcom/google/android/exoplayer2/video/c;

    .line 3097
    iget-object v1, v1, Lcom/google/android/exoplayer2/video/c;->a:Lcom/google/android/exoplayer2/video/c$a;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/c$a;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 327
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/j;->a:Lcom/google/android/exoplayer2/video/c;

    .line 328
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/video/c;->a()J

    move-result-wide v1

    const-wide v6, 0x12a05f200L

    cmp-long v3, v1, v6

    if-ltz v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    const v1, 0x3ca3d70a    # 0.02f

    goto :goto_2

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 334
    :goto_2
    iget v2, p0, Lcom/google/android/exoplayer2/video/j;->p:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_7

    goto :goto_3

    .line 338
    :cond_7
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/j;->a:Lcom/google/android/exoplayer2/video/c;

    .line 3102
    iget v2, v2, Lcom/google/android/exoplayer2/video/c;->f:I

    if-lt v2, v1, :cond_5

    :goto_3
    if-eqz v5, :cond_8

    .line 344
    iput v0, p0, Lcom/google/android/exoplayer2/video/j;->p:F

    .line 345
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/video/j;->a(Z)V

    :cond_8
    :goto_4
    return-void
.end method

.method final c()V
    .locals 3

    .line 375
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/j;->f:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/video/j;->q:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 378
    :cond_0
    iput v2, p0, Lcom/google/android/exoplayer2/video/j;->q:F

    .line 379
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/video/j;->a(Landroid/view/Surface;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method final d()V
    .locals 4

    .line 405
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/j;->b:Landroid/view/WindowManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-long v0, v2

    .line 408
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/j;->i:J

    const-wide/16 v2, 0x50

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    .line 409
    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/j;->j:J

    return-void

    :cond_0
    const-string v0, "VideoFrameReleaseHelper"

    const-string v1, "Unable to query display refresh rate"

    .line 411
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 412
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/j;->i:J

    .line 413
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/j;->j:J

    return-void
.end method
