.class public abstract Lcom/bytedance/sdk/openadsdk/core/video/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
.implements Lcom/bytedance/sdk/openadsdk/utils/ah$a;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;",
            ">;"
        }
    .end annotation
.end field

.field private E:I

.field private F:Z

.field private G:Z

.field private final H:Ljava/lang/Runnable;

.field private final I:Ljava/lang/Runnable;

.field private final J:Ljava/lang/Runnable;

.field private K:Z

.field private L:J

.field private final M:Landroid/content/BroadcastReceiver;

.field private N:I

.field private O:Z

.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field public c:J

.field protected d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected e:J

.field protected f:J

.field protected g:Z

.field protected h:Z

.field public i:J

.field private j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

.field private final k:Landroid/view/ViewGroup;

.field private final l:Lcom/bytedance/sdk/openadsdk/utils/ah;

.field private m:J

.field private n:J

.field private o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

.field private p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

.field private q:J

.field private r:J

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private final u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/e/i;)V
    .locals 5

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ah;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/ah;-><init>(Lcom/bytedance/sdk/openadsdk/utils/ah$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/ah;

    const-wide/16 v0, 0x0

    .line 82
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->m:J

    .line 83
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->n:J

    .line 86
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    .line 87
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    const/4 v2, 0x0

    .line 91
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v:Z

    .line 92
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->w:Z

    const/4 v3, 0x1

    .line 93
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->x:Z

    .line 94
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->y:Z

    .line 96
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:J

    .line 98
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->A:Z

    .line 99
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->B:Z

    .line 100
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->C:Z

    const/4 v4, 0x0

    .line 106
    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Ljava/util/Map;

    .line 109
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:J

    .line 110
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    .line 112
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g:Z

    .line 113
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h:Z

    .line 114
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->F:Z

    .line 116
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->G:Z

    .line 342
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->H:Ljava/lang/Runnable;

    .line 351
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Ljava/lang/Runnable;

    .line 382
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J:Ljava/lang/Runnable;

    .line 1166
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->K:Z

    .line 1233
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/a$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->M:Landroid/content/BroadcastReceiver;

    .line 1245
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->N:I

    .line 1264
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->O:Z

    .line 129
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->N:I

    .line 130
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Landroid/view/ViewGroup;

    .line 131
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Ljava/lang/ref/WeakReference;

    .line 132
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 133
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(Landroid/content/Context;)V

    .line 134
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/af;->d(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->E:I

    .line 135
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->u:Z

    return-void
.end method

.method private D()V
    .locals 5

    .line 363
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 367
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->E:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->f(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    goto :goto_1

    .line 365
    :cond_2
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->t()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 369
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/ah;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 370
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/ah;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ah;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private E()V
    .locals 4

    .line 374
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->F()V

    .line 375
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/ah;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private F()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/ah;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private G()Z
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private H()V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 457
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->s:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 458
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 459
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    :goto_1
    return-void
.end method

.method private I()V
    .locals 4

    .line 684
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->L()Ljava/util/List;

    move-result-object v0

    .line 687
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->g()Lcom/bytedance/sdk/openadsdk/m/a;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/m/e;->a(Ljava/util/List;ZLcom/bytedance/sdk/openadsdk/core/e/i;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/m/a;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private J()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->M()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_1

    .line 694
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v0, :cond_1

    .line 695
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->z()Lcom/bytedance/sdk/openadsdk/core/e/i$a;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->l()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private K()V
    .locals 14

    const-string v0, ",videoWidth="

    const-string v1, "changeVideoSize"

    .line 703
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "changeVideoSize start.......mMaterialMeta.getAdSlot()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->n()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->J()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-string v2, "changeVideoSize start check condition complete ... go .."

    .line 707
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->b(Landroid/content/Context;)[I

    move-result-object v2

    .line 710
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a()Landroid/media/MediaPlayer;

    move-result-object v3

    .line 712
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/e/i;->T()I

    move-result v4

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 714
    :goto_0
    aget v5, v2, v6

    int-to-float v9, v5

    .line 715
    aget v2, v2, v7

    int-to-float v10, v2

    .line 716
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    int-to-float v11, v2

    .line 717
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    int-to-float v12, v2

    if-eqz v4, :cond_2

    cmpl-float v2, v11, v12

    if-lez v2, :cond_3

    const-string/jumbo v0, "\u6a2a\u8f6c\u7ad6\u5c4f\u5355\u72ec\u9002\u914d....."

    .line 722
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    move-object v8, p0

    .line 723
    invoke-direct/range {v8 .. v13}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(FFFFZ)V

    return-void

    :cond_2
    cmpg-float v2, v11, v12

    if-gez v2, :cond_3

    const-string/jumbo v0, "\u7ad6\u5c4f\u8f6c\u6a2a\u5355\u72ec\u9002\u914d....."

    .line 729
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    move-object v8, p0

    .line 730
    invoke-direct/range {v8 .. v13}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(FFFFZ)V

    return-void

    :cond_3
    div-float v2, v11, v12

    div-float v3, v9, v10

    .line 738
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "screenHeight="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ",screenWidth="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "videoHeight="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u89c6\u9891\u5bbd\u9ad8\u6bd4,videoScale="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ",\u5c4f\u5e55\u5bbd\u9ad8\u6bd4.screenScale="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ",VERTICAL_SCALE(9:16)=0.5625,HORIZONTAL_SCALE(16:9) =1.7777778"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v8, 0x41100000    # 9.0f

    if-eqz v4, :cond_4

    const/high16 v4, 0x3f100000    # 0.5625f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    cmpl-float v2, v2, v4

    if-nez v2, :cond_5

    mul-float v8, v8, v10

    div-float v11, v8, v5

    move v12, v10

    goto :goto_1

    :cond_4
    const v4, 0x3fe38e39

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    cmpl-float v2, v2, v4

    if-nez v2, :cond_5

    mul-float v8, v8, v9

    div-float v12, v8, v5

    move v11, v9

    :goto_1
    const/4 v6, 0x1

    .line 760
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u9002\u914d\u540e\u5bbd\u9ad8\uff1avideoHeight="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_6

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " \u5c4f\u5e55\u6bd4\u4f8b\u548c\u89c6\u9891\u6bd4\u4f8b\u76f8\u540c\uff0c\u4ee5\u53ca\u5176\u4ed6\u60c5\u51b5\u90fd\u6309\u7167\u5c4f\u5e55\u5bbd\u9ad8\u64ad\u653e\uff0cvideoHeight="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0cvideoWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move v9, v11

    move v10, v12

    .line 770
    :goto_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v2, v9

    float-to-int v3, v10

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    .line 771
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 773
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->M()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 774
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->M()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v4

    instance-of v4, v4, Landroid/view/TextureView;

    if-eqz v4, :cond_7

    .line 775
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->M()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v4

    check-cast v4, Landroid/view/TextureView;

    invoke-virtual {v4, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 776
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->M()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v4

    instance-of v4, v4, Landroid/view/SurfaceView;

    if-eqz v4, :cond_8

    .line 777
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->M()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceView;

    invoke-virtual {v4, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 784
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 785
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 786
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    const-string v0, "changeVideoSize .... complete ... end !!!"

    .line 789
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v2, "changeSize error"

    .line 791
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private L()V
    .locals 11

    const-string v0, "changeVideoSize"

    .line 800
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->M()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v1, :cond_2

    .line 801
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a()Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-nez v1, :cond_0

    goto :goto_1

    .line 804
    :cond_0
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->T()I

    move-result v1

    const/16 v2, 0xf

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 805
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->b(Landroid/content/Context;)[I

    move-result-object v1

    .line 806
    aget v2, v1, v4

    int-to-float v6, v2

    .line 807
    aget v1, v1, v3

    int-to-float v7, v1

    .line 809
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a()Landroid/media/MediaPlayer;

    move-result-object v1

    .line 810
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    int-to-float v8, v2

    .line 811
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v9, v1

    move-object v5, p0

    .line 812
    invoke-direct/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(FFFFZ)V

    const-string v1, "changeSize=end"

    .line 813
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    const-string v2, "changeSize error"

    .line 815
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private M()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;
    .locals 1

    .line 1094
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_0

    .line 1096
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private N()V
    .locals 2

    .line 1184
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1185
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(I)V

    .line 1186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZ)V

    .line 1187
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    .line 1188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b()V

    .line 1189
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/c/a;J)J
    .locals 0

    .line 61
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->m:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    return-object p0
.end method

.method private a(FFFFZ)V
    .locals 3

    const-string v0, "changeVideoSize"

    .line 830
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "screenWidth="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",screenHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "videoHeight="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",videoWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    if-lez v2, :cond_0

    cmpg-float v2, p4, v1

    if-gtz v2, :cond_1

    .line 835
    :cond_0
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/e/o;->c()I

    move-result p3

    int-to-float p3, p3

    .line 836
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object p4

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/e/o;->b()I

    move-result p4

    int-to-float p4, p4

    :cond_1
    cmpg-float v2, p4, v1

    if-lez v2, :cond_7

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-eqz p5, :cond_4

    cmpg-float p2, p3, p4

    if-gez p2, :cond_3

    return-void

    :cond_3
    const-string/jumbo p2, "\u7ad6\u5c4f\u6a21\u5f0f\u4e0b\u6309\u89c6\u9891\u5bbd\u5ea6\u8ba1\u7b97\u653e\u5927\u500d\u6570\u503c"

    .line 849
    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    mul-float p4, p4, p1

    div-float/2addr p4, p3

    .line 854
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p1, p1

    float-to-int p3, p4

    invoke-direct {p2, p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 855
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_4
    cmpl-float p1, p3, p4

    if-lez p1, :cond_5

    return-void

    :cond_5
    const-string/jumbo p1, "\u6a2a\u5c4f\u6a21\u5f0f\u4e0b\u6309\u89c6\u9891\u9ad8\u5ea6\u8ba1\u7b97\u653e\u5927\u500d\u6570\u503c"

    .line 861
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    mul-float p3, p3, p2

    div-float/2addr p3, p4

    .line 866
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p3, p3

    float-to-int p2, p2

    invoke-direct {p1, p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 867
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object p2, p1

    .line 870
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->M()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 871
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->M()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object p1

    instance-of p1, p1, Landroid/view/TextureView;

    if-eqz p1, :cond_6

    .line 872
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->M()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 873
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->M()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object p1

    instance-of p1, p1, Landroid/view/SurfaceView;

    if-eqz p1, :cond_7

    .line 874
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->M()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "changeSize error"

    .line 878
    invoke-static {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(JJ)V
    .locals 2

    .line 947
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    .line 948
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    .line 949
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(JJ)V

    .line 950
    invoke-static {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result v0

    .line 951
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(I)V

    .line 953
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    if-eqz v0, :cond_0

    .line 954
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;->a(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "BaseVideoController"

    const-string p3, "onProgressUpdate error: "

    .line 957
    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(JZ)V
    .locals 1

    .line 1170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 1174
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->N()V

    .line 1176
    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(J)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 8

    .line 120
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    .line 121
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v5, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->e:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v5, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 123
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v3, "tt_video_play_layout_for_live"

    .line 124
    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    const/4 v4, 0x1

    move-object v1, v0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    .line 125
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/c/a;Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->t:Z

    if-eqz v0, :cond_1

    .line 440
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 442
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_2

    .line 304
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;-><init>()V

    .line 305
    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a:Ljava/lang/String;

    .line 306
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v1, :cond_1

    .line 307
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->d:Ljava/lang/String;

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/af;->d(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->b:Ljava/lang/String;

    :cond_1
    const/4 v1, 0x1

    .line 312
    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->c:I

    .line 313
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/a;)V

    .line 315
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->m:J

    .line 316
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 317
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d(I)V

    .line 318
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d(I)V

    .line 320
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/d/d;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    return-object p0
.end method

.method private b(I)V
    .locals 6

    .line 402
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->G()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 405
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-nez p1, :cond_1

    return-void

    .line 408
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/ah;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 409
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->m:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->n:J

    .line 411
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    if-eqz p1, :cond_2

    .line 412
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    invoke-static {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;->a(JI)V

    .line 416
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/af;->c(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 417
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/ref/WeakReference;Z)V

    .line 420
    :cond_3
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->w:Z

    if-nez p1, :cond_4

    .line 421
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b()V

    .line 422
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->w:Z

    .line 423
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    invoke-direct {p0, v1, v2, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(JJ)V

    .line 424
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    .line 426
    :cond_4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->C:Z

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .line 1248
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->G()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1251
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Landroid/content/Context;)I

    move-result p1

    .line 1253
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->N:I

    if-ne v0, p1, :cond_1

    return-void

    .line 1257
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->B:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 1258
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d(I)Z

    .line 1261
    :cond_2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->N:I

    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->s:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->s:Ljava/util/ArrayList;

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    return-wide v0
.end method

.method private c(I)Z
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(I)Z

    move-result p1

    return p1
.end method

.method private d(I)Z
    .locals 4

    .line 1213
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    .line 1215
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->i()V

    .line 1216
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->A:Z

    .line 1217
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->B:Z

    .line 1218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v1, :cond_1

    .line 1219
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ILcom/bytedance/sdk/openadsdk/core/e/o;Z)Z

    move-result p1

    return p1

    :cond_0
    if-ne v0, v2, :cond_1

    .line 1222
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->A:Z

    .line 1223
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_1

    .line 1224
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->q()V

    :cond_1
    return v3
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->y:Z

    return p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/utils/ah;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/ah;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Ljava/lang/Runnable;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->H:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->E()V

    return-void
.end method

.method private g(Z)V
    .locals 0

    .line 1073
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->K:Z

    return-void
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/core/video/c/a;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected B()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1304
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1305
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1306
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1310
    :cond_0
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(JLcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1312
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1313
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method protected C()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1320
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1321
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;JLcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1323
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1324
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1327
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 1328
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1329
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method protected abstract a()I
.end method

.method public a(I)V
    .locals 3

    .line 1000
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->G()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 1005
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 1006
    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_3

    return-void

    .line 1009
    :cond_3
    check-cast v1, Landroid/app/Activity;

    .line 1012
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    nop

    :goto_2
    const/16 p1, 0x400

    if-nez v0, :cond_4

    .line 1016
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    return-void

    .line 1018
    :cond_4
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method protected abstract a(II)V
.end method

.method public a(J)V
    .locals 3

    .line 198
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    .line 199
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 6

    .line 580
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    .line 581
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 584
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_e

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_c

    const/4 v1, 0x0

    const/16 v2, 0x134

    if-eq v0, v2, :cond_b

    const/16 v2, 0x137

    if-eq v0, v2, :cond_9

    const/16 v2, 0x13a

    if-eq v0, v2, :cond_8

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 666
    :pswitch_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/ah;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 667
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_f

    .line 668
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    return-void

    .line 629
    :pswitch_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/ah;

    if-eqz p1, :cond_1

    .line 630
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 632
    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->u:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v:Z

    if-nez p1, :cond_2

    .line 633
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    .line 634
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g()V

    .line 635
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v:Z

    .line 637
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_f

    .line 638
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    return-void

    .line 605
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 606
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/4 v3, 0x3

    if-eqz v0, :cond_5

    if-eq p1, v3, :cond_4

    const/16 v4, 0x2be

    if-ne p1, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x2bd

    if-ne p1, v1, :cond_5

    .line 612
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->t()V

    .line 613
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->D()V

    .line 614
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->F:Z

    goto :goto_1

    .line 608
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 609
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/ah;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 610
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->F:Z

    .line 617
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->u:Z

    if-eqz v0, :cond_f

    if-ne p1, v3, :cond_f

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v:Z

    if-nez p1, :cond_f

    .line 618
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f:J

    .line 619
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    if-eqz p1, :cond_6

    .line 620
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;->b()V

    .line 622
    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e()V

    .line 623
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I()V

    .line 624
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v:Z

    .line 625
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->h:Z

    return-void

    .line 653
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 654
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 655
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(II)V

    .line 657
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/ah;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 658
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_7

    .line 659
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 661
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    if-eqz p1, :cond_f

    .line 662
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->n:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    invoke-static {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;->b(JI)V

    return-void

    .line 595
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b(I)V

    return-void

    .line 591
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->e:J

    return-void

    .line 675
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->j()I

    move-result p1

    if-nez p1, :cond_a

    .line 676
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L()V

    return-void

    .line 678
    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->K()V

    goto :goto_3

    .line 649
    :cond_b
    invoke-virtual {p0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(II)V

    return-void

    .line 642
    :cond_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_f

    .line 643
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    .line 644
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_d

    goto :goto_2

    :cond_d
    move-wide v2, v0

    :goto_2
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    .line 645
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(JJ)V

    return-void

    .line 598
    :cond_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_f

    .line 599
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_f

    .line 600
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    :cond_f
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x12e
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;I)V
    .locals 2

    .line 912
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez p1, :cond_0

    return-void

    .line 915
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->E()V

    .line 916
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c(I)Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(JZ)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;IZ)V
    .locals 4

    .line 931
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->G()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 934
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    int-to-long p2, p2

    .line 935
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    mul-long p2, p2, v0

    long-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p2, p2, p3

    const-string p3, "tt_video_progress_max"

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/utils/x;->l(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-long p1, p2

    .line 936
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    long-to-int p2, p1

    int-to-long p1, p2

    .line 937
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L:J

    goto :goto_0

    .line 939
    :cond_1
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L:J

    .line 941
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_2

    .line 942
    iget-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->L:J

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(J)V

    :cond_2
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x1

    .line 1115
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->t:Z

    .line 1117
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez p1, :cond_0

    return-void

    .line 1121
    :cond_0
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Landroid/graphics/SurfaceTexture;)V

    .line 1122
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->H()V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x1

    .line 1084
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->t:Z

    .line 1085
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez p1, :cond_0

    return-void

    .line 1089
    :cond_0
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Landroid/view/SurfaceHolder;)V

    .line 1090
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->H()V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .locals 2

    .line 885
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->G()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 888
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 889
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->i()V

    .line 890
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    .line 891
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    return-void

    .line 893
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i()Z

    move-result p1

    if-nez p1, :cond_3

    .line 894
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_2

    .line 895
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Landroid/view/ViewGroup;)V

    .line 897
    :cond_2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d(J)V

    .line 898
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_4

    .line 899
    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    return-void

    .line 902
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k()V

    .line 903
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_4

    .line 904
    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;ZZ)V
    .locals 1

    .line 1034
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->x:Z

    if-eqz p1, :cond_0

    .line 1035
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->i()V

    :cond_0
    if-eqz p3, :cond_1

    .line 1037
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->x:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1038
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->A()Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    .line 1039
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1, p4, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZZ)V

    .line 1041
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1042
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    .line 1043
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b()V

    return-void

    .line 1045
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;)V
    .locals 1

    .line 397
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->D:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/e$a;Ljava/lang/String;)V
    .locals 1

    .line 1196
    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/video/c/a$6;->a:[I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/e$a;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1204
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k()V

    const/4 p1, 0x0

    .line 1205
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->A:Z

    .line 1206
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->B:Z

    :goto_0
    return-void

    .line 1201
    :cond_1
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(Z)V

    return-void

    .line 1198
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->i()V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d:Ljava/util/Map;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 570
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JZ)Z"
        }
    .end annotation

    .line 142
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p5, "video local url "

    invoke-virtual {p5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p5, "BaseVideoController"

    invoke-static {p5, p2}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p6, 0x0

    if-eqz p2, :cond_0

    const-string p1, "No video info"

    .line 144
    invoke-static {p5, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p6

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->f()V

    const-string p2, "http"

    .line 148
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 p5, 0x1

    xor-int/2addr p2, p5

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g:Z

    .line 149
    iput-boolean p9, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->y:Z

    const-wide/16 v0, 0x0

    cmp-long p2, p7, v0

    if-lez p2, :cond_2

    .line 151
    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    .line 152
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    cmp-long p2, v2, p7

    if-lez p2, :cond_1

    move-wide p7, v2

    :cond_1
    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    .line 154
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p2, :cond_3

    .line 155
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 157
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d()V

    .line 158
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(II)V

    .line 159
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Landroid/view/ViewGroup;

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Landroid/view/ViewGroup;)V

    .line 163
    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez p2, :cond_4

    .line 164
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/ah;

    invoke-direct {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    .line 167
    :cond_4
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->n:J

    .line 169
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p5

    :catch_0
    return p6
.end method

.method protected abstract b()V
.end method

.method public b(J)V
    .locals 0

    .line 223
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:J

    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;I)V
    .locals 0

    .line 921
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p1, :cond_0

    .line 922
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->F()V

    .line 924
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_1

    .line 925
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    :cond_1
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x0

    .line 1127
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->t:Z

    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 1109
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->t:Z

    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 963
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;ZZ)V

    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;ZZ)V
    .locals 0

    .line 968
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->G()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 971
    :cond_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->K:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g(Z)V

    .line 972
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_1

    const-string p1, "BaseVideoController"

    const-string p2, "context is not activity, not support this function."

    .line 973
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 976
    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->K:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 977
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(I)V

    .line 979
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_4

    .line 980
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Landroid/view/ViewGroup;)V

    .line 981
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    goto :goto_1

    .line 984
    :cond_3
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(I)V

    .line 986
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_4

    .line 987
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Landroid/view/ViewGroup;)V

    .line 988
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    .line 992
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->D:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    .line 994
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->K:Z

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;->a(Z)V

    :cond_6
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 204
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->x:Z

    .line 205
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Z)V

    return-void
.end method

.method protected abstract c()V
.end method

.method public c(J)V
    .locals 0

    .line 231
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    return-void
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .locals 0

    .line 1025
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_0

    .line 1026
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->g()V

    :cond_0
    const/4 p1, 0x1

    .line 1028
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 249
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->y:Z

    .line 250
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Z)V

    :cond_0
    return-void
.end method

.method protected abstract d()V
.end method

.method public d(J)V
    .locals 3

    .line 526
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    .line 527
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    .line 528
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_1

    .line 529
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 531
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p1, :cond_2

    .line 532
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->y:Z

    const/4 v2, 0x1

    xor-int/2addr p2, v2

    invoke-virtual {p1, v2, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(ZJZ)V

    .line 533
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->E()V

    :cond_2
    return-void
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .locals 1

    .line 1051
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->K:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1052
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->g(Z)V

    .line 1053
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->k:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Landroid/view/ViewGroup;)V

    .line 1056
    :cond_0
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(I)V

    return-void

    .line 1058
    :cond_1
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(Z)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 267
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->C:Z

    return-void
.end method

.method protected abstract e()V
.end method

.method public e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1064
    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;Z)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    return-void
.end method

.method protected abstract f()V
.end method

.method public f(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 287
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->G:Z

    return-void
.end method

.method protected abstract g()V
.end method

.method public h()V
    .locals 2

    .line 1147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_0

    .line 1148
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b()V

    .line 1149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_1

    .line 1153
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u()V

    :cond_1
    const-wide/16 v0, -0x1

    .line 1155
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d(J)V

    .line 1156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_2

    .line 1157
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->m()V

    :cond_2
    return-void
.end method

.method public i()V
    .locals 2

    .line 477
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->i:J

    .line 478
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b()V

    .line 481
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->w:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v:Z

    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c()V

    :cond_1
    return-void
.end method

.method public j()V
    .locals 1

    .line 1297
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_0

    .line 1298
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->d()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 5

    .line 499
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 501
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->q()V

    .line 502
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u()V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 506
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->y:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(ZJZ)V

    .line 507
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->E()V

    .line 510
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->w:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v:Z

    if-eqz v0, :cond_2

    .line 511
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d()V

    :cond_2
    return-void
.end method

.method public l()V
    .locals 3

    .line 542
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->c()V

    .line 544
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_1

    .line 548
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->g()V

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/ah;

    if-eqz v0, :cond_2

    .line 551
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 552
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/ah;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 553
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l:Lcom/bytedance/sdk/openadsdk/utils/ah;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 554
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->F()V

    .line 559
    :cond_2
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->p:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    return-void
.end method

.method public m()V
    .locals 0

    .line 575
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->l()V

    return-void
.end method

.method public n()J
    .locals 2

    .line 193
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->q:J

    return-wide v0
.end method

.method public o()J
    .locals 2

    .line 236
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public p()J
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->o()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public q()J
    .locals 4

    .line 257
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->p()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->z:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public r()I
    .locals 4

    .line 293
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->r:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result v0

    return v0
.end method

.method public s()J
    .locals 2

    .line 227
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->c:J

    return-wide v0
.end method

.method public t()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->A:Z

    return v0
.end method

.method public u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    return-object v0
.end method

.method public v()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->j:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    return-object v0
.end method

.method public w()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->C:Z

    return v0
.end method

.method public x()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->F:Z

    return v0
.end method

.method public y()V
    .locals 1

    .line 519
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->w:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->v:Z

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->d()V

    :cond_0
    return-void
.end method

.method public z()Z
    .locals 1

    .line 1141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/a;->o:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->l()Z

    move-result v0

    return v0
.end method
