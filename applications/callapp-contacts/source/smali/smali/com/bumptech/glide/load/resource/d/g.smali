.class final Lcom/bumptech/glide/load/resource/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/d/g$a;,
        Lcom/bumptech/glide/load/resource/d/g$c;,
        Lcom/bumptech/glide/load/resource/d/g$b;
    }
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/b/a;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/resource/d/g$b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/bumptech/glide/k;

.field d:Z

.field e:Lcom/bumptech/glide/load/resource/d/g$a;

.field f:Z

.field g:Lcom/bumptech/glide/load/resource/d/g$a;

.field h:Landroid/graphics/Bitmap;

.field i:Lcom/bumptech/glide/load/resource/d/g$a;

.field j:I

.field k:I

.field l:I

.field private final m:Landroid/os/Handler;

.field private final n:Lcom/bumptech/glide/load/engine/a/e;

.field private o:Z

.field private p:Z

.field private q:Lcom/bumptech/glide/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/bumptech/glide/load/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/b/a;IILcom/bumptech/glide/load/l;Landroid/graphics/Bitmap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c;",
            "Lcom/bumptech/glide/b/a;",
            "II",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1631
    iget-object v1, p1, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/load/engine/a/e;

    .line 1642
    iget-object v0, p1, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object v2

    .line 2642
    iget-object p1, p1, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/e;

    invoke-virtual {p1}, Lcom/bumptech/glide/e;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 76
    invoke-static {p1}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p1

    .line 3352
    invoke-virtual {p1}, Lcom/bumptech/glide/k;->d()Lcom/bumptech/glide/j;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/j;->b:Lcom/bumptech/glide/load/engine/j;

    .line 3354
    invoke-static {v0}, Lcom/bumptech/glide/e/h;->b(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/e/h;

    move-result-object v0

    const/4 v3, 0x1

    .line 3355
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/e/h;->a(Z)Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    .line 3356
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/e/h;->b(Z)Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    .line 3357
    invoke-virtual {v0, p3, p4}, Lcom/bumptech/glide/e/h;->b(II)Lcom/bumptech/glide/e/a;

    move-result-object p3

    .line 3353
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/j;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v6, p5

    move-object v7, p6

    .line 71
    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/resource/d/g;-><init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/k;Lcom/bumptech/glide/b/a;Landroid/os/Handler;Lcom/bumptech/glide/j;Lcom/bumptech/glide/load/l;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/a/e;Lcom/bumptech/glide/k;Lcom/bumptech/glide/b/a;Landroid/os/Handler;Lcom/bumptech/glide/j;Lcom/bumptech/glide/load/l;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/a/e;",
            "Lcom/bumptech/glide/k;",
            "Lcom/bumptech/glide/b/a;",
            "Landroid/os/Handler;",
            "Lcom/bumptech/glide/j<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Ljava/util/List;

    .line 90
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/g;->c:Lcom/bumptech/glide/k;

    if-nez p4, :cond_0

    .line 92
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lcom/bumptech/glide/load/resource/d/g$c;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/resource/d/g$c;-><init>(Lcom/bumptech/glide/load/resource/d/g;)V

    invoke-direct {p4, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->n:Lcom/bumptech/glide/load/engine/a/e;

    .line 95
    iput-object p4, p0, Lcom/bumptech/glide/load/resource/d/g;->m:Landroid/os/Handler;

    .line 96
    iput-object p5, p0, Lcom/bumptech/glide/load/resource/d/g;->q:Lcom/bumptech/glide/j;

    .line 98
    iput-object p3, p0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/b/a;

    .line 100
    invoke-virtual {p0, p6, p7}, Lcom/bumptech/glide/load/resource/d/g;->a(Lcom/bumptech/glide/load/l;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private c()V
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->d:Z

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->f:Z

    .line 177
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/g;->d()V

    return-void
.end method

.method private d()V
    .locals 5

    .line 209
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->d:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->o:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 212
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->p:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->i:Lcom/bumptech/glide/load/resource/d/g$a;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Pending target must be null when starting from the first frame"

    invoke-static {v0, v3}, Lcom/bumptech/glide/g/j;->a(ZLjava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/b/a;

    invoke-interface {v0}, Lcom/bumptech/glide/b/a;->f()V

    .line 216
    iput-boolean v2, p0, Lcom/bumptech/glide/load/resource/d/g;->p:Z

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->i:Lcom/bumptech/glide/load/resource/d/g$a;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 220
    iput-object v1, p0, Lcom/bumptech/glide/load/resource/d/g;->i:Lcom/bumptech/glide/load/resource/d/g$a;

    .line 221
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/d/g;->a(Lcom/bumptech/glide/load/resource/d/g$a;)V

    return-void

    .line 224
    :cond_3
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/d/g;->o:Z

    .line 227
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/b/a;

    invoke-interface {v0}, Lcom/bumptech/glide/b/a;->c()I

    move-result v0

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 230
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/b/a;

    invoke-interface {v0}, Lcom/bumptech/glide/b/a;->b()V

    .line 231
    new-instance v0, Lcom/bumptech/glide/load/resource/d/g$a;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/d/g;->m:Landroid/os/Handler;

    iget-object v4, p0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/b/a;

    invoke-interface {v4}, Lcom/bumptech/glide/b/a;->e()I

    move-result v4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/bumptech/glide/load/resource/d/g$a;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->g:Lcom/bumptech/glide/load/resource/d/g$a;

    .line 232
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->q:Lcom/bumptech/glide/j;

    invoke-static {}, Lcom/bumptech/glide/load/resource/d/g;->e()Lcom/bumptech/glide/load/f;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/e/h;->b(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/j;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/b/a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/g;->g:Lcom/bumptech/glide/load/resource/d/g$a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/e/a/j;)Lcom/bumptech/glide/e/a/j;

    :cond_4
    :goto_1
    return-void
.end method

.method private static e()Lcom/bumptech/glide/load/f;
    .locals 3

    .line 363
    new-instance v0, Lcom/bumptech/glide/f/e;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/f/e;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method final a()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->a:Lcom/bumptech/glide/b/a;

    invoke-interface {v0}, Lcom/bumptech/glide/b/a;->d()I

    move-result v0

    return v0
.end method

.method final a(Lcom/bumptech/glide/load/l;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    .line 4023
    invoke-static {p1, v0}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    check-cast v1, Lcom/bumptech/glide/load/l;

    iput-object v1, p0, Lcom/bumptech/glide/load/resource/d/g;->r:Lcom/bumptech/glide/load/l;

    .line 5023
    invoke-static {p2, v0}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->h:Landroid/graphics/Bitmap;

    .line 106
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->q:Lcom/bumptech/glide/j;

    new-instance v1, Lcom/bumptech/glide/e/h;

    invoke-direct {v1}, Lcom/bumptech/glide/e/h;-><init>()V

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/e/h;->a(Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->q:Lcom/bumptech/glide/j;

    .line 108
    invoke-static {p2}, Lcom/bumptech/glide/g/k;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/load/resource/d/g;->j:I

    .line 109
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/load/resource/d/g;->k:I

    .line 110
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/load/resource/d/g;->l:I

    return-void
.end method

.method final a(Lcom/bumptech/glide/load/resource/d/g$a;)V
    .locals 3

    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->o:Z

    .line 262
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->f:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 270
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->d:Z

    if-nez v0, :cond_2

    .line 271
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->p:Z

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 274
    :cond_1
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->i:Lcom/bumptech/glide/load/resource/d/g$a;

    return-void

    .line 5332
    :cond_2
    iget-object v0, p1, Lcom/bumptech/glide/load/resource/d/g$a;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 280
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/d/g;->b()V

    .line 281
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->e:Lcom/bumptech/glide/load/resource/d/g$a;

    .line 282
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->e:Lcom/bumptech/glide/load/resource/d/g$a;

    .line 285
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    .line 286
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/resource/d/g$b;

    .line 287
    invoke-interface {v2}, Lcom/bumptech/glide/load/resource/d/g$b;->c()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 290
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 294
    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/g;->d()V

    return-void
.end method

.method final a(Lcom/bumptech/glide/load/resource/d/g$b;)V
    .locals 2

    .line 122
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/d/g;->f:Z

    if-nez v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/d/g;->c()V

    :cond_0
    return-void

    .line 126
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe twice in a row"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe to a cleared frame loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final b()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/d/g;->n:Lcom/bumptech/glide/load/engine/a/e;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/a/e;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->h:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method final b(Lcom/bumptech/glide/load/resource/d/g$b;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/d/g;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 5181
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/d/g;->d:Z

    :cond_0
    return-void
.end method
