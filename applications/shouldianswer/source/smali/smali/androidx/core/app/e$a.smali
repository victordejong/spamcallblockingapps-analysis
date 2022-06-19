.class Landroidx/core/app/e$a;
.super Landroidx/core/app/e$b;
.source "FrameMetricsAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static e:Landroid/os/HandlerThread;

.field private static f:Landroid/os/Handler;


# instance fields
.field a:I

.field b:[Landroid/util/SparseIntArray;

.field c:Landroid/view/Window$OnFrameMetricsAvailableListener;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 344
    invoke-direct {p0}, Landroidx/core/app/e$b;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/util/SparseIntArray;

    .line 339
    iput-object v0, p0, Landroidx/core/app/e$a;->b:[Landroid/util/SparseIntArray;

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/e$a;->d:Ljava/util/ArrayList;

    .line 348
    new-instance v0, Landroidx/core/app/e$a$1;

    invoke-direct {v0, p0}, Landroidx/core/app/e$a$1;-><init>(Landroidx/core/app/e$a;)V

    iput-object v0, p0, Landroidx/core/app/e$a;->c:Landroid/view/Window$OnFrameMetricsAvailableListener;

    .line 345
    iput p1, p0, Landroidx/core/app/e$a;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 4

    .line 411
    sget-object v0, Landroidx/core/app/e$a;->e:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FrameMetricsAggregator"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/core/app/e$a;->e:Landroid/os/HandlerThread;

    .line 413
    sget-object v0, Landroidx/core/app/e$a;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 414
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Landroidx/core/app/e$a;->e:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroidx/core/app/e$a;->f:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_2

    .line 417
    iget-object v1, p0, Landroidx/core/app/e$a;->b:[Landroid/util/SparseIntArray;

    aget-object v2, v1, v0

    if-nez v2, :cond_1

    iget v2, p0, Landroidx/core/app/e$a;->a:I

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 418
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    aput-object v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/e$a;->c:Landroid/view/Window$OnFrameMetricsAvailableListener;

    sget-object v2, Landroidx/core/app/e$a;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    .line 422
    iget-object v0, p0, Landroidx/core/app/e$a;->d:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Landroid/util/SparseIntArray;J)V
    .locals 4

    if-eqz p1, :cond_0

    const-wide/32 v0, 0x7a120

    add-long/2addr v0, p2

    const-wide/32 v2, 0xf4240

    .line 400
    div-long/2addr v0, v2

    long-to-int v0, v0

    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-ltz p2, :cond_0

    .line 403
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 404
    invoke-virtual {p1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;)[Landroid/util/SparseIntArray;
    .locals 3

    .line 427
    iget-object v0, p0, Landroidx/core/app/e$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 428
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 429
    iget-object v0, p0, Landroidx/core/app/e$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 433
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Landroidx/core/app/e$a;->c:Landroid/view/Window$OnFrameMetricsAvailableListener;

    invoke-virtual {p1, v0}, Landroid/view/Window;->removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    .line 434
    iget-object p1, p0, Landroidx/core/app/e$a;->b:[Landroid/util/SparseIntArray;

    return-object p1
.end method
