.class final Landroidx/media2/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/k$b;,
        Landroidx/media2/widget/k$c;,
        Landroidx/media2/widget/k$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/media2/session/MediaController;

.field final b:Landroidx/media2/common/SessionPlayer;

.field final c:Landroidx/media2/widget/k$b;

.field d:I

.field e:Landroidx/media2/session/SessionCommandGroup;

.field f:Landroidx/media2/common/MediaMetadata;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Landroidx/media2/widget/k$a;

.field private final i:Landroidx/media2/widget/k$c;

.field private j:Z

.field private final k:Landroidx/media2/session/SessionCommandGroup;


# direct methods
.method constructor <init>(Landroidx/media2/common/SessionPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/widget/k$b;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Landroidx/media2/widget/k;->d:I

    const-string v0, "player must not be null"

    .line 85
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "executor must not be null"

    .line 86
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback must not be null"

    .line 87
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    iput-object p1, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    .line 89
    iput-object p2, p0, Landroidx/media2/widget/k;->g:Ljava/util/concurrent/Executor;

    .line 90
    iput-object p3, p0, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    .line 91
    new-instance p1, Landroidx/media2/widget/k$c;

    invoke-direct {p1, p0}, Landroidx/media2/widget/k$c;-><init>(Landroidx/media2/widget/k;)V

    iput-object p1, p0, Landroidx/media2/widget/k;->i:Landroidx/media2/widget/k$c;

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    .line 94
    iput-object p1, p0, Landroidx/media2/widget/k;->h:Landroidx/media2/widget/k$a;

    .line 96
    new-instance p1, Landroidx/media2/session/SessionCommandGroup$a;

    invoke-direct {p1}, Landroidx/media2/session/SessionCommandGroup$a;-><init>()V

    const/4 p2, 0x1

    .line 97
    invoke-virtual {p1, p2}, Landroidx/media2/session/SessionCommandGroup$a;->a(I)Landroidx/media2/session/SessionCommandGroup$a;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroidx/media2/session/SessionCommandGroup$a;->a()Landroidx/media2/session/SessionCommandGroup;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/widget/k;->k:Landroidx/media2/session/SessionCommandGroup;

    return-void
.end method

.method constructor <init>(Landroidx/media2/session/MediaController;Ljava/util/concurrent/Executor;Landroidx/media2/widget/k$b;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Landroidx/media2/widget/k;->d:I

    const-string v0, "controller must not be null"

    .line 69
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "executor must not be null"

    .line 70
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback must not be null"

    .line 71
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    .line 73
    iput-object p2, p0, Landroidx/media2/widget/k;->g:Ljava/util/concurrent/Executor;

    .line 74
    iput-object p3, p0, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    .line 75
    new-instance p1, Landroidx/media2/widget/k$a;

    invoke-direct {p1, p0}, Landroidx/media2/widget/k$a;-><init>(Landroidx/media2/widget/k;)V

    iput-object p1, p0, Landroidx/media2/widget/k;->h:Landroidx/media2/widget/k$a;

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    .line 78
    iput-object p1, p0, Landroidx/media2/widget/k;->i:Landroidx/media2/widget/k$c;

    .line 80
    iput-object p1, p0, Landroidx/media2/widget/k;->k:Landroidx/media2/session/SessionCommandGroup;

    return-void
.end method

.method private r()F
    .locals 2

    .line 254
    iget-object v0, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_1

    .line 1593
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$c;->g()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 256
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->i()F

    move-result v0

    return v0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private s()Landroidx/media2/session/SessionCommandGroup;
    .locals 3

    .line 335
    iget-object v0, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2400
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->b()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 2403
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media2/session/MediaController$c;->p()Landroidx/media2/session/SessionCommandGroup;

    move-result-object v0

    return-object v0

    .line 337
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Landroidx/media2/widget/k;->k:Landroidx/media2/session/SessionCommandGroup;

    return-object v0

    :cond_2
    return-object v1
.end method

.method private t()V
    .locals 2

    .line 525
    iget-object v0, p0, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    invoke-direct {p0}, Landroidx/media2/widget/k;->r()F

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;F)V

    .line 527
    invoke-virtual {p0}, Landroidx/media2/widget/k;->o()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v1, p0, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    invoke-virtual {v1, p0, v0}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;Ljava/util/List;)V

    .line 531
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/widget/k;->l()Landroidx/media2/common/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    invoke-virtual {p0}, Landroidx/media2/widget/k;->n()Landroidx/media2/common/VideoSize;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;Landroidx/media2/common/VideoSize;)V

    :cond_1
    return-void
.end method


# virtual methods
.method final a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 1

    .line 395
    iget-object v0, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0, p1}, Landroidx/media2/session/MediaController;->a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object p1

    return-object p1

    .line 397
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {v0, p1}, Landroidx/media2/common/SessionPlayer;->e(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method final a(Landroid/view/Surface;)Lcom/google/common/util/concurrent/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "+",
            "Landroidx/media2/common/a;",
            ">;"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_1

    .line 3201
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3202
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->a()Landroidx/media2/session/MediaController$c;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/media2/session/MediaController$c;->a(Landroid/view/Surface;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1

    .line 3204
    :cond_0
    invoke-static {}, Landroidx/media2/session/MediaController;->n()Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1

    .line 406
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_2

    .line 407
    invoke-virtual {v0, p1}, Landroidx/media2/common/SessionPlayer;->a(Landroid/view/Surface;)Lcom/google/common/util/concurrent/a;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method final a()V
    .locals 3

    .line 106
    iget-boolean v0, p0, Landroidx/media2/widget/k;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_1

    .line 108
    iget-object v1, p0, Landroidx/media2/widget/k;->g:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/media2/widget/k;->h:Landroidx/media2/widget/k$a;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/session/MediaController;->a(Ljava/util/concurrent/Executor;Landroidx/media2/session/MediaController$a;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_2

    .line 110
    iget-object v1, p0, Landroidx/media2/widget/k;->g:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/media2/widget/k;->i:Landroidx/media2/widget/k$c;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/common/SessionPlayer;->a(Ljava/util/concurrent/Executor;Landroidx/media2/common/SessionPlayer$a;)V

    .line 112
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/widget/k;->m()V

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Landroidx/media2/widget/k;->j:Z

    return-void
.end method

.method final a(J)V
    .locals 1

    .line 226
    iget-object v0, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, p1, p2}, Landroidx/media2/session/MediaController;->a(J)Lcom/google/common/util/concurrent/a;

    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v0, p1, p2}, Landroidx/media2/common/SessionPlayer;->a(J)Lcom/google/common/util/concurrent/a;

    :cond_1
    return-void
.end method

.method final a(Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 1

    .line 275
    iget-object v0, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0, p1}, Landroidx/media2/session/MediaController;->a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/a;

    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {v0, p1}, Landroidx/media2/common/SessionPlayer;->a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/a;

    :cond_1
    return-void
.end method

.method final b()V
    .locals 2

    .line 117
    iget-boolean v0, p0, Landroidx/media2/widget/k;->j:Z

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_1

    .line 119
    iget-object v1, p0, Landroidx/media2/widget/k;->h:Landroidx/media2/widget/k$a;

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->a(Landroidx/media2/session/MediaController$a;)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_2

    .line 121
    iget-object v1, p0, Landroidx/media2/widget/k;->i:Landroidx/media2/widget/k$c;

    invoke-virtual {v0, v1}, Landroidx/media2/common/SessionPlayer;->a(Landroidx/media2/common/SessionPlayer$a;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Landroidx/media2/widget/k;->j:Z

    return-void
.end method

.method final c()Z
    .locals 2

    .line 127
    iget v0, p0, Landroidx/media2/widget/k;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final d()J
    .locals 5

    .line 131
    iget v0, p0, Landroidx/media2/widget/k;->d:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 135
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->g()J

    move-result-wide v3

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->e()J

    move-result-wide v3

    goto :goto_0

    :cond_2
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-gez v0, :cond_3

    return-wide v1

    :cond_3
    return-wide v3
.end method

.method final e()J
    .locals 7

    .line 144
    iget v0, p0, Landroidx/media2/widget/k;->d:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/widget/k;->j()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    return-wide v1

    .line 150
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->h()J

    move-result-wide v5

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_3

    .line 153
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->g()J

    move-result-wide v5

    goto :goto_0

    :cond_3
    move-wide v5, v1

    :goto_0
    cmp-long v0, v5, v1

    if-gez v0, :cond_4

    return-wide v1

    :cond_4
    const-wide/16 v0, 0x64

    mul-long v5, v5, v0

    .line 155
    div-long/2addr v5, v3

    return-wide v5
.end method

.method final f()I
    .locals 1

    .line 159
    iget-object v0, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->e()I

    move-result v0

    return v0

    .line 161
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->d()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method final g()Z
    .locals 2

    .line 178
    iget-object v0, p0, Landroidx/media2/widget/k;->e:Landroidx/media2/session/SessionCommandGroup;

    if-eqz v0, :cond_0

    const v1, 0x9c40

    invoke-virtual {v0, v1}, Landroidx/media2/session/SessionCommandGroup;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final h()V
    .locals 1

    .line 206
    iget-object v0, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->d()Lcom/google/common/util/concurrent/a;

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->b()Lcom/google/common/util/concurrent/a;

    :cond_1
    return-void
.end method

.method final i()V
    .locals 1

    .line 216
    iget-object v0, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->c()Lcom/google/common/util/concurrent/a;

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->a()Lcom/google/common/util/concurrent/a;

    :cond_1
    return-void
.end method

.method final j()J
    .locals 5

    .line 293
    iget v0, p0, Landroidx/media2/widget/k;->d:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 297
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->f()J

    move-result-wide v3

    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_2

    .line 300
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->f()J

    move-result-wide v3

    goto :goto_0

    :cond_2
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-gez v0, :cond_3

    return-wide v1

    :cond_3
    return-wide v3
.end method

.method final k()Ljava/lang/CharSequence;
    .locals 2

    .line 306
    iget-object v0, p0, Landroidx/media2/widget/k;->f:Landroidx/media2/common/MediaMetadata;

    if-eqz v0, :cond_0

    const-string v1, "android.media.metadata.TITLE"

    .line 307
    invoke-virtual {v0, v1}, Landroidx/media2/common/MediaMetadata;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Landroidx/media2/widget/k;->f:Landroidx/media2/common/MediaMetadata;

    invoke-virtual {v0, v1}, Landroidx/media2/common/MediaMetadata;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final l()Landroidx/media2/common/MediaItem;
    .locals 1

    .line 325
    iget-object v0, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->i()Landroidx/media2/common/MediaItem;

    move-result-object v0

    return-object v0

    .line 327
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->r()Landroidx/media2/common/MediaItem;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method final m()V
    .locals 6

    .line 347
    invoke-virtual {p0}, Landroidx/media2/widget/k;->f()I

    move-result v0

    .line 348
    iget v1, p0, Landroidx/media2/widget/k;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_0

    .line 349
    iput v0, p0, Landroidx/media2/widget/k;->d:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 354
    :goto_0
    invoke-direct {p0}, Landroidx/media2/widget/k;->s()Landroidx/media2/session/SessionCommandGroup;

    move-result-object v4

    .line 355
    iget-object v5, p0, Landroidx/media2/widget/k;->e:Landroidx/media2/session/SessionCommandGroup;

    invoke-static {v5, v4}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 356
    iput-object v4, p0, Landroidx/media2/widget/k;->e:Landroidx/media2/session/SessionCommandGroup;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 360
    :goto_1
    invoke-virtual {p0}, Landroidx/media2/widget/k;->l()Landroidx/media2/common/MediaItem;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    .line 361
    :cond_2
    invoke-virtual {v3}, Landroidx/media2/common/MediaItem;->d()Landroidx/media2/common/MediaMetadata;

    move-result-object v5

    :goto_2
    iput-object v5, p0, Landroidx/media2/widget/k;->f:Landroidx/media2/common/MediaMetadata;

    if-eqz v1, :cond_3

    .line 364
    iget-object v1, p0, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    invoke-virtual {v1, p0, v0}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;I)V

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 367
    iget-object v0, p0, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    invoke-virtual {v0, p0}, Landroidx/media2/widget/k$b;->b(Landroidx/media2/widget/k;)V

    .line 369
    :cond_4
    iget-object v0, p0, Landroidx/media2/widget/k;->c:Landroidx/media2/widget/k$b;

    invoke-virtual {v0, p0, v3}, Landroidx/media2/widget/k$b;->a(Landroidx/media2/widget/k;Landroidx/media2/common/MediaItem;)V

    .line 370
    invoke-direct {p0}, Landroidx/media2/widget/k;->t()V

    return-void
.end method

.method final n()Landroidx/media2/common/VideoSize;
    .locals 2

    .line 375
    iget-object v0, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->l()Landroidx/media2/common/VideoSize;

    move-result-object v0

    return-object v0

    .line 377
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->j()Landroidx/media2/common/VideoSize;

    move-result-object v0

    return-object v0

    .line 380
    :cond_1
    new-instance v0, Landroidx/media2/common/VideoSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/media2/common/VideoSize;-><init>(II)V

    return-object v0
.end method

.method final o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->m()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 387
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_1

    .line 388
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->w()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 390
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final p()I
    .locals 1

    .line 422
    iget-object v0, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->j()I

    move-result v0

    return v0

    .line 424
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->t()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method final q()I
    .locals 1

    .line 431
    iget-object v0, p0, Landroidx/media2/widget/k;->a:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->k()I

    move-result v0

    return v0

    .line 433
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/k;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_1

    .line 434
    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->u()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method
