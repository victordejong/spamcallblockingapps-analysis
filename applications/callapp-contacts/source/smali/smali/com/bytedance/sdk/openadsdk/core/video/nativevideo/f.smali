.class public Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/d;
.implements Lcom/bytedance/sdk/openadsdk/utils/ah$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private G:I

.field private H:I

.field private I:I

.field private J:Z

.field private K:Z

.field private final L:Ljava/lang/Runnable;

.field private final M:Ljava/lang/Runnable;

.field private final N:Ljava/lang/Runnable;

.field private O:I

.field private P:J

.field private Q:J

.field private R:J

.field private S:Z

.field private T:J

.field private final U:Landroid/content/BroadcastReceiver;

.field private V:I

.field private W:Z

.field a:Ljava/lang/Runnable;

.field private b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bytedance/sdk/openadsdk/utils/ah;

.field private e:J

.field private f:J

.field private g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

.field private h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

.field private i:J

.field private j:J

.field private k:J

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private final n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Z

.field private p:Z

.field private q:Z

.field private final r:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;",
            ">;"
        }
    .end annotation
.end field

.field private y:J

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;ZZ)V
    .locals 5

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ah;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/ah;-><init>(Lcom/bytedance/sdk/openadsdk/utils/ah$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ah;

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e:J

    .line 73
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f:J

    .line 76
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 77
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    const/4 v2, 0x0

    .line 83
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    .line 84
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    const/4 v3, 0x1

    .line 86
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    .line 87
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    const-string v4, "embeded_ad"

    .line 88
    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    .line 91
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->v:Z

    .line 92
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->w:Z

    .line 98
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->y:J

    .line 100
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    .line 101
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A:Z

    .line 102
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B:Z

    .line 105
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C:Z

    .line 107
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D:Z

    .line 114
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G:I

    .line 115
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H:I

    .line 116
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->I:I

    .line 117
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J:Z

    .line 119
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->K:Z

    .line 495
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$3;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->L:Ljava/lang/Runnable;

    .line 504
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$4;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->M:Ljava/lang/Runnable;

    .line 522
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->N:Ljava/lang/Runnable;

    .line 545
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->O:I

    .line 723
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->P:J

    .line 779
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$6;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a:Ljava/lang/Runnable;

    .line 792
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->Q:J

    .line 793
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->R:J

    .line 1494
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Z

    .line 1570
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->U:Landroid/content/BroadcastReceiver;

    .line 1582
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->V:I

    .line 1643
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->W:Z

    .line 288
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->V:I

    .line 290
    :try_start_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G:I

    .line 291
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 294
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    .line 295
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    .line 296
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    .line 297
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 298
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Landroid/content/Context;)V

    .line 300
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o:Z

    .line 302
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->v:Z

    .line 303
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->w:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;ZZZ)V
    .locals 5

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ah;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/ah;-><init>(Lcom/bytedance/sdk/openadsdk/utils/ah$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ah;

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e:J

    .line 73
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f:J

    .line 76
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 77
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    const/4 v2, 0x0

    .line 83
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    .line 84
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    const/4 v3, 0x1

    .line 86
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    .line 87
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    const-string v4, "embeded_ad"

    .line 88
    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    .line 91
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->v:Z

    .line 92
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->w:Z

    .line 98
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->y:J

    .line 100
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    .line 101
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A:Z

    .line 102
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B:Z

    .line 105
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C:Z

    .line 107
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D:Z

    .line 114
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G:I

    .line 115
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H:I

    .line 116
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->I:I

    .line 117
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J:Z

    .line 119
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->K:Z

    .line 495
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$3;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->L:Ljava/lang/Runnable;

    .line 504
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$4;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->M:Ljava/lang/Runnable;

    .line 522
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->N:Ljava/lang/Runnable;

    .line 545
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->O:I

    .line 723
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->P:J

    .line 779
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$6;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a:Ljava/lang/Runnable;

    .line 792
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->Q:J

    .line 793
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->R:J

    .line 1494
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Z

    .line 1570
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->U:Landroid/content/BroadcastReceiver;

    .line 1582
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->V:I

    .line 1643
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->W:Z

    .line 267
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->V:I

    .line 268
    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Z)V

    .line 269
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    .line 271
    :try_start_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p4

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G:I

    .line 272
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p4

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 275
    :goto_0
    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    .line 276
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    .line 277
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 278
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Landroid/content/Context;)V

    .line 280
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o:Z

    .line 283
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->v:Z

    .line 284
    iput-boolean p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->w:Z

    return-void
.end method

.method private A()V
    .locals 4

    .line 514
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B()V

    .line 515
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ah;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->N:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private B()V
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ah;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private C()Z
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

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

.method private D()V
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 607
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 608
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 609
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    :goto_1
    return-void
.end method

.method private E()V
    .locals 9

    .line 693
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 694
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(ZJZ)V

    .line 695
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A()V

    .line 698
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    if-eqz v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    .line 700
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r()I

    move-result v7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c()Ljava/util/Map;

    move-result-object v8

    const-string v4, "feed_continue"

    .line 699
    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    :cond_1
    return-void
.end method

.method private F()V
    .locals 6

    .line 797
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->Q:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->R:J

    .line 798
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    if-nez v2, :cond_2

    .line 799
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(JLcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;

    move-result-object v0

    .line 800
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D:Z

    if-eqz v1, :cond_0

    .line 801
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    const-string v4, "feed_auto_play"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/d/e;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 803
    :cond_0
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 804
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    const-string v4, "feed_play"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/d/e;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 807
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    :cond_2
    return-void
.end method

.method private G()V
    .locals 4

    .line 1010
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NativeVideoController"

    const-string v1, "onStateError \u51fa\u9519\u540e\u5c55\u793a\u7ed3\u679c\u9875\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    .line 1011
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/ref/WeakReference;Z)V

    const/4 v0, 0x1

    .line 1013
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(Z)V

    .line 1014
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m()V

    :cond_0
    return-void
.end method

.method private H()V
    .locals 4

    const-string v0, "NativeVideoController"

    const-string v1, "before auseWhenInvisible\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    .line 1019
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "in pauseWhenInvisible\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    .line 1021
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d()V

    :cond_0
    return-void
.end method

.method private I()V
    .locals 9

    const-string v0, "ChangeVideoSize"

    const-string v1, "[step-0]  TAG is \'ChangeVideoSize\' ....... start  changeVideoSize >>>>>>>>>>>>>>>>>>>>>>>"

    .line 1030
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v1, :cond_c

    .line 1099
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a()Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_c

    .line 1100
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 1107
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a()Landroid/media/MediaPlayer;

    move-result-object v1

    .line 1109
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    .line 1110
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    .line 1112
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    .line 1113
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    if-lez v3, :cond_b

    if-lez v4, :cond_b

    if-lez v1, :cond_b

    if-gtz v2, :cond_1

    goto/16 :goto_4

    :cond_1
    if-ne v2, v1, :cond_3

    if-le v3, v4, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_3
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/high16 v7, 0x3f800000    # 1.0f

    if-le v2, v1, :cond_4

    int-to-float v2, v2

    mul-float v2, v2, v7

    int-to-float v1, v1

    div-float/2addr v2, v1

    int-to-double v7, v3

    mul-double v7, v7, v5

    float-to-double v1, v2

    div-double/2addr v7, v1

    double-to-int v1, v7

    move v2, v3

    goto :goto_1

    :cond_4
    int-to-float v1, v1

    mul-float v1, v1, v7

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-double v7, v4

    mul-double v7, v7, v5

    float-to-double v1, v1

    div-double/2addr v7, v1

    double-to-int v1, v7

    move v2, v1

    move v1, v4

    :goto_1
    if-gt v1, v4, :cond_6

    if-gtz v1, :cond_5

    goto :goto_2

    :cond_5
    move v4, v1

    :cond_6
    :goto_2
    if-gt v2, v3, :cond_8

    if-gtz v2, :cond_7

    goto :goto_3

    :cond_7
    move v3, v2

    .line 1157
    :cond_8
    :goto_3
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 1158
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1159
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v2

    instance-of v2, v2, Landroid/view/TextureView;

    if-eqz v2, :cond_9

    .line 1160
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "[step-9] >>>>> setLayoutParams to TextureView complete ! >>>>>>>"

    .line 1161
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1162
    :cond_9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v2

    instance-of v2, v2, Landroid/view/SurfaceView;

    if-eqz v2, :cond_a

    .line 1163
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "[step-9] >>>>> setLayoutParams to SurfaceView complete !>>>>>>>"

    .line 1164
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void

    :cond_b
    :goto_4
    const-string v1, " container or video exist size <= 0"

    .line 1116
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1101
    :cond_c
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[step-1] >>>>> mContextRef="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mContextRef.get()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",getIRenderView() ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[step-1] >>>>> mMediaPlayerProxy == null:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_e

    const/4 v2, 0x1

    goto :goto_7

    :cond_e
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mMediaPlayerProxy.getMediaPlayer() == null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a()Landroid/media/MediaPlayer;

    move-result-object v2

    if-nez v2, :cond_f

    goto :goto_8

    :cond_f
    const/4 v3, 0x0

    :goto_8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 1168
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[step-11] >>>>> changeVideoSize error !!!!! \uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private J()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;
    .locals 2

    .line 1173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_0

    .line 1176
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->o()Lcom/bytedance/sdk/openadsdk/core/video/renderview/b;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private K()V
    .locals 3

    .line 1373
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1376
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h(Z)V

    .line 1377
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string v0, "NativeVideoController"

    const-string v1, "context is not activity, not support this function."

    .line 1378
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1381
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_2

    .line 1382
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Landroid/view/ViewGroup;)V

    .line 1383
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    .line 1385
    :cond_2
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(I)V

    .line 1386
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->x:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 1388
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Z

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;->a(Z)V

    :cond_4
    return-void
.end method

.method private L()V
    .locals 2

    .line 1512
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1513
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(I)V

    .line 1514
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZ)V

    .line 1515
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    .line 1516
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b()V

    .line 1517
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d()V

    :cond_0
    return-void
.end method

.method private M()V
    .locals 4

    .line 1775
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v0, :cond_0

    .line 1777
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->L()Ljava/util/List;

    move-result-object v0

    .line 1778
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->g()Lcom/bytedance/sdk/openadsdk/m/a;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/m/e;->a(Ljava/util/List;ZLcom/bytedance/sdk/openadsdk/core/e/i;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/m/a;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private N()V
    .locals 5

    .line 1783
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->R:J

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(JLcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;

    move-result-object v0

    .line 1784
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    const-string v4, "play_start"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/d/e;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;J)J
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    return-object p0
.end method

.method private a(JJ)V
    .locals 2

    .line 1247
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 1248
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    .line 1249
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(JJ)V

    .line 1250
    invoke-static {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result v0

    .line 1251
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(I)V

    .line 1253
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    if-eqz v0, :cond_0

    .line 1254
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;->a(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "NativeVideoController"

    const-string p3, "onProgressUpdate error: "

    .line 1257
    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(JZ)V
    .locals 1

    .line 1498
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 1502
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->L()V

    .line 1504
    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(J)V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 1

    .line 1585
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 1594
    :cond_1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->V:I

    if-ne p1, p2, :cond_2

    return-void

    .line 1598
    :cond_2
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->V:I

    const/4 p1, 0x4

    if-eq p2, p1, :cond_3

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    .line 1601
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A:Z

    .line 1604
    :cond_3
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->w()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->v:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    .line 1605
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(I)Z

    .line 1608
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1609
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->V:I

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;->a(I)V

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m:Z

    if-eqz v0, :cond_1

    .line 590
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 592
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "tag_video_play"

    const-string v1, "[video] NativeVideoController#playVideo has invoke !"

    .line 452
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 454
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/a/a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;-><init>()V

    .line 455
    iput-object p1, v1, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a:Ljava/lang/String;

    .line 456
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v3, :cond_1

    .line 457
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 458
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/o;->k()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->d:Ljava/lang/String;

    .line 460
    :cond_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/af;->d(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->b:Ljava/lang/String;

    .line 462
    :cond_1
    iput v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->c:I

    .line 463
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/a/a;)V

    const-string v1, "[video] MediaPlayerProxy has setDataSource !"

    .line 464
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e:J

    .line 467
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 468
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d(I)V

    .line 469
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d(I)V

    .line 471
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Ljava/lang/Runnable;)V

    .line 488
    :cond_3
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz p1, :cond_4

    .line 489
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g()V

    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/d/d;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    return-object p0
.end method

.method private b(I)V
    .locals 10

    .line 548
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->O:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->O:I

    .line 549
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 552
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-nez p1, :cond_1

    return-void

    .line 555
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 556
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    if-eqz p1, :cond_2

    .line 557
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f:J

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    invoke-static {v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result v3

    invoke-interface {p1, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;->a(JI)V

    .line 559
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f:J

    .line 560
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/af;->b(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result p1

    const/4 v1, 0x2

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->O:I

    if-lt p1, v1, :cond_4

    .line 561
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/ref/WeakReference;Z)V

    .line 563
    :cond_4
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    if-nez p1, :cond_5

    .line 564
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    .line 565
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p()J

    move-result-wide v6

    const/16 v8, 0x64

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c()Ljava/util/Map;

    move-result-object v9

    const-string v5, "feed_over"

    .line 564
    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 566
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    .line 567
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    invoke-direct {p0, v2, v3, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(JJ)V

    .line 568
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    .line 570
    :cond_5
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Z

    if-eqz p1, :cond_6

    .line 571
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V

    .line 573
    :cond_6
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B:Z

    .line 574
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/af;->b(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->O:I

    if-ge p1, v1, :cond_7

    .line 575
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h()V

    :cond_7
    return-void
.end method

.method private b(II)V
    .locals 4

    .line 990
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-nez v0, :cond_0

    return-void

    .line 994
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "play_error"

    goto :goto_0

    :cond_1
    const-string v1, "play_start_error"

    .line 996
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v3

    invoke-static {v2, p1, p2, v3}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;IILcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 998
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "duration"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "percent"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "buffers_time"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    invoke-static {p2, v0, v2, v1, p1}, Lcom/bytedance/sdk/openadsdk/d/e;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 9

    .line 168
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    .line 169
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v5, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;->e:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b$a;

    invoke-virtual {v5, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 172
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "tt_video_detail_layout"

    .line 176
    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    move-object v3, v0

    if-nez v3, :cond_1

    return-void

    .line 179
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz v0, :cond_2

    .line 180
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a()Z

    move-result v8

    move-object v1, v0

    move-object v2, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    goto :goto_1

    .line 182
    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/g;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    .line 184
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/a;)V

    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    if-nez v0, :cond_0

    .line 598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    return-wide v0
.end method

.method private c(Landroid/content/Context;)Landroid/view/View;
    .locals 12

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 198
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v2, "tt_root_view"

    .line 199
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    const/high16 v2, -0x1000000

    .line 200
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 202
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 203
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v5, "tt_video_loading_retry_layout"

    .line 204
    invoke-static {p1, v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setId(I)V

    const/4 v5, 0x0

    .line 205
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/16 v6, 0x11

    .line 206
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 207
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 210
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 211
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v7, "tt_video_loading_cover_image"

    .line 212
    invoke-static {p1, v7}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 213
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 214
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 217
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 218
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/4 v8, 0x1

    const/high16 v9, 0x42700000    # 60.0f

    invoke-static {v8, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v6, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v7, "tt_video_loading_progress"

    .line 219
    invoke-static {p1, v7}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setId(I)V

    const/16 v7, 0xd

    .line 220
    invoke-virtual {v6, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 221
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v6, "tt_video_loading_progress_bar"

    .line 222
    invoke-static {p1, v6}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 225
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 226
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v9, "tt_video_play"

    .line 227
    invoke-static {p1, v9}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setId(I)V

    .line 228
    invoke-virtual {v3, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 229
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v9, "tt_play_movebar_textpage"

    .line 230
    invoke-static {p1, v9}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v9, 0x8

    .line 231
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 235
    new-instance v2, Landroid/widget/ProgressBar;

    const-string v3, "tt_Widget_ProgressBar_Horizontal"

    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v10, 0x0

    invoke-direct {v2, p1, v10, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 236
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v11, 0x3fc00000    # 1.5f

    invoke-static {v8, v11, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x64

    .line 237
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    const-string v0, "tt_video_progress"

    .line 238
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setId(I)V

    .line 239
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    .line 240
    invoke-virtual {v2, v10}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "tt_video_progress_drawable"

    .line 241
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v0, 0xc

    .line 243
    invoke-virtual {v3, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 244
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 247
    new-instance v0, Landroid/view/ViewStub;

    invoke-direct {v0, p1}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    .line 248
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const-string v3, "tt_video_ad_cover"

    .line 249
    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setId(I)V

    .line 250
    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "tt_video_ad_cover_layout"

    .line 251
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 252
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 255
    new-instance v0, Landroid/view/ViewStub;

    invoke-direct {v0, p1}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    .line 256
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 257
    invoke-virtual {v2, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const-string v3, "tt_video_draw_layout_viewStub"

    .line 258
    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/x;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setId(I)V

    .line 259
    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "tt_video_draw_btn_layout"

    .line 260
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/x;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 261
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private c(I)Z
    .locals 1

    .line 1508
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(I)Z

    move-result p1

    return p1
.end method

.method private c(II)Z
    .locals 2

    .line 1709
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnError - Error code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Extra code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTVideoLandingPage"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3f2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ef

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ec

    if-eq p1, v0, :cond_0

    const/16 v0, -0x6e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-eq p2, v1, :cond_1

    const/16 v0, 0x2bc

    if-eq p2, v0, :cond_1

    const/16 v0, 0x320

    if-eq p2, v0, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method private d(Landroid/content/Context;)V
    .locals 1

    .line 1615
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Landroid/content/Context;)I

    move-result v0

    .line 1617
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Landroid/content/Context;I)V

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1620
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    :cond_0
    return-void
.end method

.method private d(I)Z
    .locals 6

    .line 1541
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1544
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i()V

    .line 1545
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    .line 1546
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v3, :cond_0

    .line 1547
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/ref/WeakReference;Z)V

    :cond_0
    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    if-eqz v0, :cond_2

    .line 1550
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_1

    .line 1551
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 1552
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i()V

    .line 1553
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    .line 1554
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A:Z

    .line 1555
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v1, :cond_3

    .line 1556
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->w:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ILcom/bytedance/sdk/openadsdk/core/e/o;Z)Z

    move-result p1

    return p1

    :cond_2
    if-ne v0, v3, :cond_3

    .line 1559
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    .line 1560
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_3

    .line 1561
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->q()V

    :cond_3
    return v2
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    return p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/utils/ah;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ah;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Ljava/lang/Runnable;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->L:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A()V

    return-void
.end method

.method static synthetic h(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    return-object p0
.end method

.method private h(Z)V
    .locals 0

    .line 1393
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Z

    return-void
.end method

.method static synthetic i(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    return-wide v0
.end method

.method static synthetic j(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/e/i;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    return-object p0
.end method

.method static synthetic k(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private z()Z
    .locals 5

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "retryCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeVideoController"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->I:I

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/ref/WeakReference;Z)V

    :cond_0
    return v2

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez v3, :cond_2

    return v2

    :cond_2
    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 161
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->I:I

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "isPlaying="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",isPaused="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",isPrepared="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",isStarted="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v3
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1300
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

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

    .line 1305
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 1306
    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_3

    return-void

    .line 1309
    :cond_3
    check-cast v1, Landroid/app/Activity;

    .line 1312
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

    .line 1316
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    return-void

    .line 1318
    :cond_4
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public a(II)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G:I

    .line 147
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H:I

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "height="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NativeVideoController"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 3

    .line 377
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 378
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1633
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Landroid/content/Context;)I

    move-result v0

    .line 1635
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Landroid/content/Context;I)V

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1638
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    .line 1639
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k()V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 10

    .line 813
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_14

    .line 814
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 817
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_13

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_11

    const/16 v1, 0x134

    const/4 v2, 0x0

    const-string v3, "NativeVideoController"

    if-eq v0, v1, :cond_10

    const/16 v1, 0x135

    if-eq v0, v1, :cond_f

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_3

    .line 824
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->Q:J

    return-void

    .line 885
    :pswitch_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H()V

    return-void

    .line 964
    :pswitch_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "CALLBACK_ON_RETRY_VIDEO_TIME-....\u91cd\u8bd5...."

    .line 965
    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m()V

    const/4 p1, 0x0

    .line 967
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    .line 969
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->h()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->P()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H:I

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 970
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b()Z

    move-result v9

    move-object v0, p0

    .line 969
    invoke-virtual/range {v0 .. v9}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    return-void

    :cond_1
    const-string p1, "\u4e0d\u6ee1\u8db3\u6761\u4ef6\uff0c\u65e0\u6cd5\u91cd\u8bd5"

    .line 972
    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 983
    :pswitch_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->I()V

    goto/16 :goto_3

    .line 957
    :pswitch_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_14

    .line 958
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    return-void

    .line 869
    :pswitch_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 870
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;->f()V

    .line 873
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ah;

    if-eqz p1, :cond_3

    .line 874
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->M:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 876
    :cond_3
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o:Z

    if-nez p1, :cond_4

    .line 877
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F()V

    .line 879
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_5

    .line 880
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 882
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ah;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 838
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 839
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/4 v3, 0x3

    if-eqz v0, :cond_8

    if-eq p1, v3, :cond_7

    const/16 v4, 0x2be

    if-ne p1, v4, :cond_6

    goto :goto_0

    :cond_6
    const/16 v2, 0x2bd

    if-ne p1, v2, :cond_8

    .line 845
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->t()V

    .line 847
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ah;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f40

    invoke-virtual {v0, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ah;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 848
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J:Z

    goto :goto_1

    .line 841
    :cond_7
    :goto_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 842
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ah;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 843
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J:Z

    .line 853
    :cond_8
    :goto_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o:Z

    if-eqz v0, :cond_a

    if-ne p1, v3, :cond_a

    .line 854
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz v0, :cond_9

    .line 855
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 856
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;->g()V

    .line 859
    :cond_9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->M()V

    .line 860
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ah;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 863
    :cond_a
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o:Z

    if-eqz v0, :cond_14

    if-ne p1, v3, :cond_14

    .line 864
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F()V

    return-void

    .line 902
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 903
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 904
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(II)V

    const-string v4, "CALLBACK_ON_ERROR\u3001\u3001before isVideoPlaying\u3001\u3001\u3001\u3001\u3001"

    .line 905
    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f()Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v4, -0x3ec

    if-eq p1, v4, :cond_b

    return-void

    .line 910
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u51fa\u9519\u540e errorcode,extra\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c(II)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "\u51fa\u9519\u540e\u5c55\u793a\u7ed3\u679c\u9875\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    .line 913
    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, v4, v5, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/ref/WeakReference;Z)V

    .line 915
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(Z)V

    .line 916
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m()V

    .line 919
    :cond_c
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v1, :cond_d

    .line 920
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->w()V

    .line 922
    :cond_d
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    if-eqz v1, :cond_e

    .line 923
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    invoke-static {v4, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;->b(JI)V

    .line 950
    :cond_e
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 951
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f()Z

    move-result v1

    if-nez v1, :cond_14

    .line 952
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;

    invoke-interface {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;->a(II)V

    return-void

    .line 828
    :pswitch_8
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(I)V

    return-void

    :cond_f
    const-string p1, "SSMediaPlayerWrapper \u91ca\u653e\u4e86\u3002\u3002\u3002\u3002\u3002"

    .line 976
    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    const-string p1, "\u64ad\u653e\u5668\u72b6\u6001\u51fa\u9519 STAT_ERROR 200 \u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    .line 896
    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G()V

    .line 899
    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(II)V

    return-void

    .line 888
    :cond_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_14

    .line 889
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 890
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_12

    goto :goto_2

    :cond_12
    move-wide v2, v0

    :goto_2
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    .line 891
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(JJ)V

    return-void

    .line 831
    :cond_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_14

    .line 832
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_14

    .line 833
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    :cond_14
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x12e
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x137
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;)V
    .locals 2

    .line 122
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_0

    .line 123
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;I)V
    .locals 2

    .line 1212
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez p1, :cond_0

    return-void

    .line 1215
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A()V

    .line 1216
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->T:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c(I)Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(JZ)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;IZ)V
    .locals 4

    .line 1231
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1234
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    int-to-long p2, p2

    .line 1235
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

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

    .line 1236
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    long-to-int p2, p1

    int-to-long p1, p2

    .line 1237
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->T:J

    goto :goto_0

    .line 1239
    :cond_1
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->T:J

    .line 1241
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_2

    .line 1242
    iget-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->T:J

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(J)V

    :cond_2
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x1

    .line 1430
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m:Z

    .line 1431
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez p1, :cond_0

    return-void

    .line 1434
    :cond_0
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Landroid/graphics/SurfaceTexture;)V

    .line 1435
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D()V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x1

    .line 1404
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m:Z

    .line 1405
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez p1, :cond_0

    return-void

    .line 1408
    :cond_0
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Landroid/view/SurfaceHolder;)V

    .line 1409
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D()V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .locals 2

    .line 1185
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1188
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1189
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i()V

    .line 1190
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    .line 1191
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    return-void

    .line 1193
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1194
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_2

    .line 1195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Landroid/view/ViewGroup;)V

    .line 1197
    :cond_2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(J)V

    .line 1198
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_4

    .line 1199
    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    return-void

    .line 1202
    :cond_3
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g(Z)V

    .line 1203
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_4

    .line 1204
    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;Z)V
    .locals 0

    .line 1369
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->K()V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;ZZ)V
    .locals 1

    .line 1334
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz p1, :cond_0

    .line 1335
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i()V

    :cond_0
    if-eqz p3, :cond_1

    .line 1337
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1338
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f()Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(ZZ)V

    .line 1339
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1, p4, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(ZZZ)V

    .line 1341
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1342
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    .line 1343
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b()V

    return-void

    .line 1345
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;)V
    .locals 1

    .line 312
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;)V
    .locals 1

    .line 537
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->x:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$a;)V
    .locals 1

    .line 1672
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->F:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/widget/e$a;Ljava/lang/String;)V
    .locals 1

    .line 1524
    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$8;->a:[I

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

    .line 1532
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k()V

    const/4 p1, 0x0

    .line 1533
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    .line 1534
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A:Z

    :goto_0
    return-void

    .line 1529
    :cond_1
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Z)V

    return-void

    .line 1526
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i()V

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

    return-void
.end method

.method public a(Z)V
    .locals 8

    .line 731
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->P:J

    .line 734
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 736
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->P:J

    .line 737
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r()I

    move-result v6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c()Ljava/util/Map;

    move-result-object v7

    const-string v3, "feed_break"

    .line 736
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    const/4 p1, 0x0

    .line 738
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    goto :goto_0

    .line 740
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->P:J

    .line 741
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r()I

    move-result v6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c()Ljava/util/Map;

    move-result-object v7

    const-string v3, "feed_pause"

    .line 740
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 745
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m()V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 391
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    return v0
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

    .line 319
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p5, "[video] start NativeVideoController#playVideoUrl and video url is :\r\n"

    invoke-virtual {p5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p5, "tag_video_play"

    invoke-static {p5, p2}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p6, 0x0

    if-eqz p2, :cond_0

    const-string p1, "[video] play video stop , because no video info"

    .line 321
    invoke-static {p5, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p6

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->N()V

    .line 327
    iput-boolean p9, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    .line 328
    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    const-wide/16 v0, 0x0

    cmp-long p2, p7, v0

    if-gtz p2, :cond_1

    .line 330
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    :cond_1
    if-lez p2, :cond_3

    .line 333
    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 334
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    cmp-long p2, v2, p7

    if-lez p2, :cond_2

    move-wide p7, v2

    :cond_2
    iput-wide p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    .line 336
    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p2, :cond_5

    .line 337
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 339
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->O:I

    if-nez p2, :cond_4

    .line 340
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->d()V

    .line 342
    :cond_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(II)V

    .line 343
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/view/ViewGroup;

    invoke-virtual {p2, p7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Landroid/view/ViewGroup;)V

    .line 344
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(II)V

    .line 346
    :cond_5
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez p2, :cond_6

    .line 347
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ah;

    invoke-direct {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    :cond_6
    const-string p2, "[video] new MediaPlayer"

    .line 349
    invoke-static {p5, p2}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f:J

    .line 352
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 354
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[video] invoke NativeVideoController#playVideo cause exception :"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p6
.end method

.method public b(J)V
    .locals 0

    .line 404
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->y:J

    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;I)V
    .locals 0

    .line 1221
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p1, :cond_0

    .line 1222
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B()V

    .line 1224
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_1

    .line 1225
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c()V

    :cond_1
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x0

    .line 1446
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m:Z

    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 1419
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m:Z

    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1263
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;ZZ)V

    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;ZZ)V
    .locals 0

    .line 1268
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->C()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1271
    :cond_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h(Z)V

    .line 1272
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_1

    const-string p1, "NativeVideoController"

    const-string p2, "context is not activity, not support this function."

    .line 1273
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1276
    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1277
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(I)V

    .line 1279
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_4

    .line 1280
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Landroid/view/ViewGroup;)V

    .line 1281
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    goto :goto_1

    .line 1284
    :cond_3
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(I)V

    .line 1286
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_4

    .line 1287
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Landroid/view/ViewGroup;)V

    .line 1288
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Z)V

    .line 1292
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->x:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    .line 1294
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Z

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/e;->a(Z)V

    :cond_6
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 383
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    .line 384
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 427
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    return v0
.end method

.method protected c()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 620
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->o()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;JLcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c(J)V
    .locals 0

    .line 412
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    return-void
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .locals 0

    .line 1325
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_0

    .line 1326
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->g()V

    :cond_0
    const/4 p1, 0x1

    .line 1328
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 431
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    .line 432
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b()V

    :cond_0
    return-void
.end method

.method public d(J)V
    .locals 3

    .line 706
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    .line 707
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    .line 708
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_1

    .line 709
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 711
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz p1, :cond_2

    .line 712
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->t:Z

    const/4 v2, 0x1

    xor-int/2addr p2, v2

    invoke-virtual {p1, v2, v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(ZJZ)V

    .line 713
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->A()V

    :cond_2
    return-void
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .locals 1

    .line 1351
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->S:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1352
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->h(Z)V

    .line 1353
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz p1, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->b(Landroid/view/ViewGroup;)V

    .line 1356
    :cond_0
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(I)V

    return-void

    .line 1358
    :cond_1
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Z)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 1685
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B:Z

    return-void
.end method

.method public e(J)V
    .locals 0

    .line 726
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->P:J

    return-void
.end method

.method public e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1364
    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;Z)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 1695
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->D:Z

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1459
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public f(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/b;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 1705
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->K:Z

    return-void
.end method

.method public f()Z
    .locals 1

    .line 1491
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

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

.method public g()V
    .locals 3

    .line 1646
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->W:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->K:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1649
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 1650
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->W:Z

    .line 1651
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 1652
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1654
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->U:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 684
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u()V

    .line 686
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E()V

    return-void
.end method

.method public h()V
    .locals 11

    .line 1477
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1482
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->m()V

    .line 1483
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/o;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->P()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->G:I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->H:I

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 1485
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b()Z

    move-result v10

    move-object v1, p0

    .line 1483
    invoke-virtual/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    const/4 v0, 0x0

    .line 1486
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(Z)V

    return-void
.end method

.method public i()V
    .locals 11

    .line 625
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_0

    .line 626
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b()V

    .line 629
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->q:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p:Z

    if-eqz v0, :cond_4

    .line 631
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v0, "sp_multi_single_app_data_class"

    const-string v2, "IsCanLoadPauseLog"

    .line 632
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 635
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    .line 636
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p()J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r()I

    move-result v9

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c()Ljava/util/Map;

    move-result-object v10

    const-string v6, "feed_pause"

    .line 635
    invoke-static/range {v3 .. v10}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 639
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    .line 641
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/t;->a()Lcom/bytedance/sdk/openadsdk/core/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/t;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 642
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u:Ljava/lang/String;

    .line 643
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->p()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r()I

    move-result v8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c()Ljava/util/Map;

    move-result-object v9

    const-string v5, "feed_pause"

    .line 642
    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    .line 645
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/t;->a()Lcom/bytedance/sdk/openadsdk/core/t;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/t;->a(Z)V

    :cond_4
    return-void
.end method

.method public j()V
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->d()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->e()V

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    if-eqz v0, :cond_1

    .line 674
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->u()V

    .line 676
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->E()V

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    .line 720
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Z)V

    return-void
.end method

.method public m()V
    .locals 5

    .line 753
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->c()V

    .line 755
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->b(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->O:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->r:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->n:Ljava/lang/ref/WeakReference;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/ref/WeakReference;Z)V

    .line 764
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ah;

    if-eqz v0, :cond_3

    .line 765
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 766
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ah;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 767
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ah;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 768
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d:Lcom/bytedance/sdk/openadsdk/utils/ah;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 770
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B()V

    .line 771
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->l:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 772
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 774
    :cond_4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->s:Z

    if-eqz v0, :cond_5

    .line 775
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->y()V

    :cond_5
    return-void
.end method

.method public n()J
    .locals 2

    .line 372
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i:J

    return-wide v0
.end method

.method public o()J
    .locals 2

    .line 542
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public p()J
    .locals 4

    .line 417
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->o()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->y:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public q()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public r()I
    .locals 4

    .line 444
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->j:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/e/a;->a(JJ)I

    move-result v0

    return v0
.end method

.method public s()J
    .locals 2

    .line 408
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->k:J

    return-wide v0
.end method

.method public t()Z
    .locals 1

    .line 400
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->z:Z

    return v0
.end method

.method public u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    return-object v0
.end method

.method public v()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    return-object v0
.end method

.method public w()Z
    .locals 1

    .line 438
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->B:Z

    return v0
.end method

.method public x()Z
    .locals 1

    .line 1700
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->J:Z

    return v0
.end method

.method public y()V
    .locals 2

    .line 1660
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->W:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->K:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1663
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 1664
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->W:Z

    .line 1666
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->U:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
