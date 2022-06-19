.class public Ld2/s3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld2/r3;


# direct methods
.method public constructor <init>(Ld2/r3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/s3;->a:Ld2/r3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Ld2/s3;->a:Ld2/r3;

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, v0, Ld2/r3;->r:J

    .line 3
    :goto_0
    iget-object v0, p0, Ld2/s3;->a:Ld2/r3;

    .line 4
    iget-boolean v3, v0, Ld2/r3;->s:Z

    if-nez v3, :cond_d

    .line 5
    iget-boolean v0, v0, Ld2/r3;->v:Z

    if-nez v0, :cond_d

    .line 6
    invoke-static {}, Ld2/t;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    .line 8
    iget-object v3, p0, Ld2/s3;->a:Ld2/r3;

    .line 9
    iget-boolean v4, v3, Ld2/r3;->s:Z

    if-nez v4, :cond_c

    .line 10
    iget-boolean v4, v3, Ld2/r3;->x:Z

    if-nez v4, :cond_c

    if-eqz v0, :cond_c

    .line 11
    instance-of v4, v0, Landroid/app/Activity;

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 12
    :cond_0
    iget-object v3, v3, Ld2/r3;->K:Landroid/media/MediaPlayer;

    .line 13
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 14
    iget-object v3, p0, Ld2/s3;->a:Ld2/r3;

    .line 15
    iget-wide v5, v3, Ld2/r3;->r:J

    cmp-long v7, v5, v1

    if-nez v7, :cond_1

    .line 16
    sget-boolean v5, Ld2/t;->d:Z

    if-eqz v5, :cond_1

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 18
    iput-wide v5, v3, Ld2/r3;->r:J

    .line 19
    :cond_1
    iget-object v3, p0, Ld2/s3;->a:Ld2/r3;

    const/4 v5, 0x1

    .line 20
    iput-boolean v5, v3, Ld2/r3;->u:Z

    .line 21
    iget-object v6, v3, Ld2/r3;->K:Landroid/media/MediaPlayer;

    .line 22
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    .line 23
    iput-wide v6, v3, Ld2/r3;->p:D

    .line 24
    iget-object v3, p0, Ld2/s3;->a:Ld2/r3;

    .line 25
    iget-object v6, v3, Ld2/r3;->K:Landroid/media/MediaPlayer;

    .line 26
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v6, v8

    .line 27
    iput-wide v6, v3, Ld2/r3;->q:D

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v3, p0, Ld2/s3;->a:Ld2/r3;

    .line 29
    iget-wide v8, v3, Ld2/r3;->r:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v10, v6, v8

    if-lez v10, :cond_3

    .line 30
    iget-boolean v6, v3, Ld2/r3;->A:Z

    if-nez v6, :cond_3

    .line 31
    sget-boolean v6, Ld2/t;->d:Z

    if-eqz v6, :cond_3

    .line 32
    iget-wide v6, v3, Ld2/r3;->p:D

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-nez v10, :cond_2

    const-string v3, "getCurrentPosition() not working, firing AdSession.on_error"

    .line 33
    invoke-static {v4, v4, v3, v5}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 34
    iget-object v3, p0, Ld2/s3;->a:Ld2/r3;

    .line 35
    invoke-virtual {v3}, Ld2/r3;->b()V

    goto :goto_1

    .line 36
    :cond_2
    iput-boolean v5, v3, Ld2/r3;->A:Z

    .line 37
    :cond_3
    :goto_1
    iget-object v3, p0, Ld2/s3;->a:Ld2/r3;

    .line 38
    iget-boolean v6, v3, Ld2/r3;->z:Z

    if-eqz v6, :cond_8

    .line 39
    iget-boolean v6, v3, Ld2/r3;->f:Z

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v6, :cond_7

    .line 40
    iget-wide v9, v3, Ld2/r3;->q:D

    const-wide v11, 0x4076800000000000L    # 360.0

    div-double/2addr v11, v9

    double-to-float v6, v11

    iput v6, v3, Ld2/r3;->c:F

    .line 41
    iget-object v6, v3, Ld2/r3;->h:Landroid/graphics/Paint;

    const v9, -0x333334

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v6, v3, Ld2/r3;->h:Landroid/graphics/Paint;

    iget v10, v3, Ld2/r3;->d:F

    mul-float v10, v10, v8

    float-to-int v10, v10

    int-to-float v10, v10

    const/4 v11, 0x0

    const/high16 v12, -0x1000000

    invoke-virtual {v6, v10, v11, v11, v12}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 43
    iget-object v6, v3, Ld2/r3;->h:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 44
    iget-object v6, v3, Ld2/r3;->h:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 45
    iget-object v5, v3, Ld2/r3;->h:Landroid/graphics/Paint;

    iget v6, v3, Ld2/r3;->d:F

    const/high16 v10, 0x41400000    # 12.0f

    mul-float v6, v6, v10

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 46
    iget-object v5, v3, Ld2/r3;->g:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget v5, v3, Ld2/r3;->d:F

    mul-float v5, v5, v8

    const/high16 v6, 0x40c00000    # 6.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_4

    const/high16 v5, 0x40c00000    # 6.0f

    :cond_4
    const/high16 v6, 0x40800000    # 4.0f

    cmpg-float v6, v5, v6

    if-gez v6, :cond_5

    const/high16 v5, 0x40800000    # 4.0f

    .line 48
    :cond_5
    iget-object v6, v3, Ld2/r3;->g:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    iget-object v5, v3, Ld2/r3;->g:Landroid/graphics/Paint;

    iget v6, v3, Ld2/r3;->d:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6, v11, v11, v12}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 50
    iget-object v5, v3, Ld2/r3;->g:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 52
    iget-object v6, v3, Ld2/r3;->h:Landroid/graphics/Paint;

    const/16 v9, 0x9

    const-string v10, "0123456789"

    invoke-virtual {v6, v10, v4, v9, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 53
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iput v5, v3, Ld2/r3;->a:F

    .line 54
    sget-object v5, Ld2/t;->a:Landroid/content/Context;

    if-eqz v5, :cond_6

    .line 55
    new-instance v6, Ld2/t3;

    invoke-direct {v6, v3, v5}, Ld2/t3;-><init>(Ld2/r3;Landroid/content/Context;)V

    invoke-static {v6}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    .line 56
    :cond_6
    iput-boolean v4, v3, Ld2/r3;->f:Z

    .line 57
    :cond_7
    iget-wide v5, v3, Ld2/r3;->q:D

    iget-wide v9, v3, Ld2/r3;->p:D

    sub-double/2addr v5, v9

    double-to-int v5, v5

    iput v5, v3, Ld2/r3;->e:I

    .line 58
    iget v5, v3, Ld2/r3;->a:F

    float-to-int v6, v5

    int-to-float v6, v6

    mul-float v7, v7, v5

    float-to-int v7, v7

    int-to-float v7, v7

    .line 59
    iget-object v9, v3, Ld2/r3;->H:Landroid/graphics/RectF;

    div-float v10, v5, v8

    sub-float v11, v6, v10

    mul-float v5, v5, v8

    sub-float v8, v7, v5

    add-float/2addr v6, v5

    add-float/2addr v7, v10

    invoke-virtual {v9, v11, v8, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 60
    iget v5, v3, Ld2/r3;->c:F

    float-to-double v5, v5

    iget-wide v7, v3, Ld2/r3;->q:D

    iget-wide v9, v3, Ld2/r3;->p:D

    sub-double/2addr v7, v9

    mul-double v7, v7, v5

    double-to-float v5, v7

    iput v5, v3, Ld2/r3;->b:F

    .line 61
    :cond_8
    iget-object v3, p0, Ld2/s3;->a:Ld2/r3;

    .line 62
    iget-boolean v5, v3, Ld2/r3;->u:Z

    if-eqz v5, :cond_9

    .line 63
    iget-boolean v5, v3, Ld2/r3;->s:Z

    if-nez v5, :cond_9

    .line 64
    iget-boolean v5, v3, Ld2/r3;->v:Z

    if-nez v5, :cond_9

    .line 65
    iget-object v5, v3, Ld2/r3;->L:Ld2/f4;

    .line 66
    iget v3, v3, Ld2/r3;->m:I

    const-string v6, "id"

    .line 67
    invoke-static {v5, v6, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 68
    iget-object v3, p0, Ld2/s3;->a:Ld2/r3;

    .line 69
    iget-object v5, v3, Ld2/r3;->L:Ld2/f4;

    .line 70
    iget-object v3, v3, Ld2/r3;->F:Ld2/j0;

    .line 71
    iget v3, v3, Ld2/j0;->j:I

    const-string v6, "container_id"

    .line 72
    invoke-static {v5, v6, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 73
    iget-object v3, p0, Ld2/s3;->a:Ld2/r3;

    .line 74
    iget-object v5, v3, Ld2/r3;->L:Ld2/f4;

    .line 75
    iget-object v3, v3, Ld2/r3;->D:Ljava/lang/String;

    const-string v6, "ad_session_id"

    .line 76
    invoke-static {v5, v6, v3}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    iget-object v3, p0, Ld2/s3;->a:Ld2/r3;

    .line 78
    iget-object v5, v3, Ld2/r3;->L:Ld2/f4;

    .line 79
    iget-wide v6, v3, Ld2/r3;->p:D

    const-string v3, "elapsed"

    .line 80
    invoke-static {v5, v3, v6, v7}, Ld2/e4;->f(Ld2/f4;Ljava/lang/String;D)Z

    .line 81
    iget-object v3, p0, Ld2/s3;->a:Ld2/r3;

    .line 82
    iget-object v5, v3, Ld2/r3;->L:Ld2/f4;

    .line 83
    iget-wide v6, v3, Ld2/r3;->q:D

    const-string v3, "duration"

    .line 84
    invoke-static {v5, v3, v6, v7}, Ld2/e4;->f(Ld2/f4;Ljava/lang/String;D)Z

    .line 85
    new-instance v3, Ld2/t0;

    iget-object v5, p0, Ld2/s3;->a:Ld2/r3;

    .line 86
    iget-object v6, v5, Ld2/r3;->F:Ld2/j0;

    .line 87
    iget v6, v6, Ld2/j0;->k:I

    .line 88
    iget-object v5, v5, Ld2/r3;->L:Ld2/f4;

    const-string v7, "VideoView.on_progress"

    .line 89
    invoke-direct {v3, v7, v6, v5}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v3}, Ld2/t0;->b()V

    .line 90
    :cond_9
    iget-object v3, p0, Ld2/s3;->a:Ld2/r3;

    .line 91
    iget-boolean v3, v3, Ld2/r3;->t:Z

    if-nez v3, :cond_b

    .line 92
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    const-wide/16 v5, 0x32

    .line 93
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 94
    :catch_0
    iget-object v0, p0, Ld2/s3;->a:Ld2/r3;

    .line 95
    invoke-virtual {v0}, Ld2/r3;->b()V

    .line 96
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->p()Ld2/h0;

    move-result-object v0

    const-string v3, "InterruptedException in ADCVideoView\'s update thread."

    .line 97
    invoke-virtual {v0, v4, v4, v3, v4}, Ld2/h0;->e(IILjava/lang/String;Z)V

    goto/16 :goto_0

    .line 98
    :cond_b
    :goto_2
    iget-object v0, p0, Ld2/s3;->a:Ld2/r3;

    .line 99
    iput-boolean v4, v0, Ld2/r3;->t:Z

    .line 100
    invoke-virtual {v0}, Ld2/r3;->e()V

    :cond_c
    :goto_3
    return-void

    .line 101
    :cond_d
    iget-object v0, p0, Ld2/s3;->a:Ld2/r3;

    .line 102
    iget-boolean v1, v0, Ld2/r3;->t:Z

    if-eqz v1, :cond_e

    .line 103
    invoke-virtual {v0}, Ld2/r3;->e()V

    :cond_e
    return-void
.end method
