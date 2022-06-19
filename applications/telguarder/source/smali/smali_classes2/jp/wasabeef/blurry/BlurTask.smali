.class Ljp/wasabeef/blurry/BlurTask;
.super Ljava/lang/Object;
.source "BlurTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/wasabeef/blurry/BlurTask$Callback;
    }
.end annotation


# static fields
.field private static final THREAD_POOL:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final callback:Ljp/wasabeef/blurry/BlurTask$Callback;

.field private final contextWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final factor:Ljp/wasabeef/blurry/BlurFactor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Ljp/wasabeef/blurry/BlurTask;->THREAD_POOL:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljp/wasabeef/blurry/BlurFactor;Ljp/wasabeef/blurry/BlurTask$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "bitmap",
            "factor",
            "callback"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p3, p0, Ljp/wasabeef/blurry/BlurTask;->factor:Ljp/wasabeef/blurry/BlurFactor;

    .line 54
    iput-object p4, p0, Ljp/wasabeef/blurry/BlurTask;->callback:Ljp/wasabeef/blurry/BlurTask$Callback;

    .line 55
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Ljp/wasabeef/blurry/BlurTask;->contextWeakRef:Ljava/lang/ref/WeakReference;

    .line 57
    iput-object p2, p0, Ljp/wasabeef/blurry/BlurTask;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljp/wasabeef/blurry/BlurFactor;Ljp/wasabeef/blurry/BlurTask$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "factor",
            "callback"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Ljp/wasabeef/blurry/BlurTask;->factor:Ljp/wasabeef/blurry/BlurFactor;

    .line 43
    iput-object p3, p0, Ljp/wasabeef/blurry/BlurTask;->callback:Ljp/wasabeef/blurry/BlurTask$Callback;

    .line 44
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ljp/wasabeef/blurry/BlurTask;->contextWeakRef:Ljava/lang/ref/WeakReference;

    const/4 p2, 0x1

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    const/high16 p2, 0x80000

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Ljp/wasabeef/blurry/BlurTask;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$000(Ljp/wasabeef/blurry/BlurTask;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 29
    iget-object p0, p0, Ljp/wasabeef/blurry/BlurTask;->contextWeakRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100(Ljp/wasabeef/blurry/BlurTask;)Ljp/wasabeef/blurry/BlurTask$Callback;
    .locals 0

    .line 29
    iget-object p0, p0, Ljp/wasabeef/blurry/BlurTask;->callback:Ljp/wasabeef/blurry/BlurTask$Callback;

    return-object p0
.end method

.method static synthetic access$200(Ljp/wasabeef/blurry/BlurTask;)Landroid/graphics/Bitmap;
    .locals 0

    .line 29
    iget-object p0, p0, Ljp/wasabeef/blurry/BlurTask;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$300(Ljp/wasabeef/blurry/BlurTask;)Ljp/wasabeef/blurry/BlurFactor;
    .locals 0

    .line 29
    iget-object p0, p0, Ljp/wasabeef/blurry/BlurTask;->factor:Ljp/wasabeef/blurry/BlurFactor;

    return-object p0
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 61
    sget-object v0, Ljp/wasabeef/blurry/BlurTask;->THREAD_POOL:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljp/wasabeef/blurry/BlurTask$1;

    invoke-direct {v1, p0}, Ljp/wasabeef/blurry/BlurTask$1;-><init>(Ljp/wasabeef/blurry/BlurTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
