.class public Ld2/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# instance fields
.field public final synthetic a:Ld2/j0;


# direct methods
.method public constructor <init>(Ld2/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/y;->a:Ld2/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 10

    .line 1
    iget-object v0, p0, Ld2/y;->a:Ld2/j0;

    invoke-virtual {v0, p1}, Ld2/j0;->b(Ld2/t0;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Ld2/y;->a:Ld2/j0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "id"

    .line 4
    invoke-static {v1, v2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    .line 5
    new-instance v2, Ld2/r3;

    iget-object v3, v0, Ld2/j0;->y:Landroid/content/Context;

    invoke-direct {v2, v3, p1, v1, v0}, Ld2/r3;-><init>(Landroid/content/Context;Ld2/t0;ILd2/j0;)V

    .line 6
    iget-object p1, v2, Ld2/r3;->E:Ld2/t0;

    .line 7
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v3, "ad_session_id"

    .line 8
    invoke-virtual {p1, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    iput-object v3, v2, Ld2/r3;->D:Ljava/lang/String;

    const-string v3, "x"

    .line 10
    invoke-static {p1, v3}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Ld2/r3;->i:I

    const-string v4, "y"

    .line 11
    invoke-static {p1, v4}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Ld2/r3;->j:I

    const-string v4, "width"

    .line 12
    invoke-static {p1, v4}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Ld2/r3;->k:I

    const-string v4, "height"

    .line 13
    invoke-static {p1, v4}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Ld2/r3;->l:I

    const-string v4, "enable_timer"

    .line 14
    invoke-static {p1, v4}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v2, Ld2/r3;->z:Z

    const-string v4, "enable_progress"

    .line 15
    invoke-static {p1, v4}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v2, Ld2/r3;->B:Z

    const-string v4, "filepath"

    .line 16
    invoke-virtual {p1, v4}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    iput-object v4, v2, Ld2/r3;->C:Ljava/lang/String;

    const-string v4, "video_width"

    .line 18
    invoke-static {p1, v4}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Ld2/r3;->n:I

    const-string v4, "video_height"

    .line 19
    invoke-static {p1, v4}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Ld2/r3;->o:I

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/a;->c()F

    move-result p1

    iput p1, v2, Ld2/r3;->d:F

    const-string p1, "Original video dimensions = "

    .line 21
    invoke-static {p1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 22
    iget v4, v2, Ld2/r3;->n:I

    .line 23
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget v3, v2, Ld2/r3;->o:I

    .line 26
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 28
    invoke-static {v4, v3, p1, v5}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    const/4 p1, 0x4

    .line 29
    invoke-virtual {v2, p1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 30
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Ld2/r3;->k:I

    iget v6, v2, Ld2/r3;->l:I

    invoke-direct {p1, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 31
    iget v3, v2, Ld2/r3;->i:I

    iget v6, v2, Ld2/r3;->j:I

    invoke-virtual {p1, v3, v6, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 32
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 33
    iget-object v3, v2, Ld2/r3;->F:Ld2/j0;

    invoke-virtual {v3, v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-boolean p1, v2, Ld2/r3;->B:Z

    if-eqz p1, :cond_0

    .line 35
    sget-object p1, Ld2/t;->a:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 36
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Ld2/r3;->J:Landroid/widget/ProgressBar;

    .line 37
    iget-object p1, v2, Ld2/r3;->F:Ld2/j0;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v2, Ld2/r3;->d:F

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float v7, v7, v8

    float-to-int v7, v7

    const/16 v8, 0x11

    invoke-direct {v6, v7, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    :cond_0
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, v2, Ld2/r3;->K:Landroid/media/MediaPlayer;

    .line 39
    iput-boolean v4, v2, Ld2/r3;->w:Z

    .line 40
    :try_start_0
    iget-object p1, v2, Ld2/r3;->C:Ljava/lang/String;

    const-string v3, "http"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 41
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v3, v2, Ld2/r3;->C:Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 42
    iget-object v3, v2, Ld2/r3;->K:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 43
    :cond_1
    iput-boolean v5, v2, Ld2/r3;->y:Z

    .line 44
    iget-object p1, v2, Ld2/r3;->K:Landroid/media/MediaPlayer;

    iget-object v3, v2, Ld2/r3;->C:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 45
    :goto_0
    iget-object p1, v2, Ld2/r3;->K:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 46
    iget-object p1, v2, Ld2/r3;->K:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 47
    iget-object p1, v2, Ld2/r3;->K:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 48
    iget-object p1, v2, Ld2/r3;->K:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v3, "Failed to create/prepare MediaPlayer: "

    .line 49
    invoke-static {v3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 50
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v3

    invoke-virtual {v3}, Ld2/f1;->p()Ld2/h0;

    move-result-object v3

    .line 54
    invoke-virtual {v3, v4, v4, p1, v4}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 55
    invoke-virtual {v2}, Ld2/r3;->b()V

    .line 56
    :goto_1
    iget-object p1, v2, Ld2/r3;->F:Ld2/j0;

    .line 57
    iget-object p1, p1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 58
    new-instance v3, Ld2/l3;

    invoke-direct {v3, v2}, Ld2/l3;-><init>(Ld2/r3;)V

    const-string v4, "VideoView.play"

    invoke-static {v4, v3}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p1, v2, Ld2/r3;->F:Ld2/j0;

    .line 60
    iget-object p1, p1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 61
    new-instance v3, Ld2/m3;

    invoke-direct {v3, v2}, Ld2/m3;-><init>(Ld2/r3;)V

    const-string v5, "VideoView.set_bounds"

    invoke-static {v5, v3}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object p1, v2, Ld2/r3;->F:Ld2/j0;

    .line 63
    iget-object p1, p1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 64
    new-instance v3, Ld2/n3;

    invoke-direct {v3, v2}, Ld2/n3;-><init>(Ld2/r3;)V

    const-string v6, "VideoView.set_visible"

    invoke-static {v6, v3}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object p1, v2, Ld2/r3;->F:Ld2/j0;

    .line 66
    iget-object p1, p1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 67
    new-instance v3, Ld2/o3;

    invoke-direct {v3, v2}, Ld2/o3;-><init>(Ld2/r3;)V

    const-string v7, "VideoView.pause"

    invoke-static {v7, v3}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object p1, v2, Ld2/r3;->F:Ld2/j0;

    .line 69
    iget-object p1, p1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 70
    new-instance v3, Ld2/p3;

    invoke-direct {v3, v2}, Ld2/p3;-><init>(Ld2/r3;)V

    const-string v8, "VideoView.seek_to_time"

    invoke-static {v8, v3}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p1, v2, Ld2/r3;->F:Ld2/j0;

    .line 72
    iget-object p1, p1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 73
    new-instance v3, Ld2/q3;

    invoke-direct {v3, v2}, Ld2/q3;-><init>(Ld2/r3;)V

    const-string v9, "VideoView.set_volume"

    invoke-static {v9, v3}, Ld2/t;->a(Ljava/lang/String;Ld2/y0;)Ld2/y0;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p1, v2, Ld2/r3;->F:Ld2/j0;

    .line 75
    iget-object p1, p1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object p1, v2, Ld2/r3;->F:Ld2/j0;

    .line 78
    iget-object p1, p1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object p1, v2, Ld2/r3;->F:Ld2/j0;

    .line 81
    iget-object p1, p1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object p1, v2, Ld2/r3;->F:Ld2/j0;

    .line 84
    iget-object p1, p1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p1, v2, Ld2/r3;->F:Ld2/j0;

    .line 87
    iget-object p1, p1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object p1, v2, Ld2/r3;->F:Ld2/j0;

    .line 90
    iget-object p1, p1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object p1, v0, Ld2/j0;->a:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p1, v0, Ld2/j0;->g:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object p1, La7/e;->b:La7/e;

    .line 95
    iget-object v0, v0, Ld2/j0;->x:Landroid/support/v4/media/a;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 96
    :try_start_1
    invoke-virtual {v0, v2, p1, v1}, Landroid/support/v4/media/a;->f(Landroid/view/View;La7/e;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-void
.end method
