.class final Lorg/xutils/image/a;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lorg/xutils/common/Callback$PrepareCallback;
.implements Lorg/xutils/common/Callback$CacheCallback;
.implements Lorg/xutils/common/Callback$ProgressCallback;
.implements Lorg/xutils/common/Callback$TypedCallback;
.implements Lorg/xutils/common/Callback$Cancelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/image/a$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback$PrepareCallback<",
        "Ljava/io/File;",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lorg/xutils/common/Callback$CacheCallback<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lorg/xutils/common/Callback$ProgressCallback<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lorg/xutils/common/Callback$TypedCallback<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lorg/xutils/common/Callback$Cancelable;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final b:Ljava/util/concurrent/Executor;

.field private static final c:Lorg/xutils/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/cache/LruCache<",
            "Lorg/xutils/image/b;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/xutils/image/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/lang/reflect/Type;


# instance fields
.field private f:Lorg/xutils/image/b;

.field private g:Lorg/xutils/image/ImageOptions;

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private final j:J

.field private volatile k:Z

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Z

.field private o:Lorg/xutils/common/Callback$Cancelable;

.field private p:Lorg/xutils/common/Callback$CommonCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$CommonCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lorg/xutils/common/Callback$PrepareCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$PrepareCallback<",
            "Ljava/io/File;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lorg/xutils/common/Callback$CacheCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$CacheCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lorg/xutils/common/Callback$ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$ProgressCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/xutils/image/a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    sput-object v0, Lorg/xutils/image/a;->b:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v0, Lorg/xutils/image/a$a;

    const/high16 v1, 0x400000

    invoke-direct {v0, v1}, Lorg/xutils/image/a$a;-><init>(I)V

    sput-object v0, Lorg/xutils/image/a;->c:Lorg/xutils/cache/LruCache;

    .line 4
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v2

    const-string v3, "activity"

    .line 5
    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    const/high16 v3, 0x100000

    mul-int v2, v2, v3

    .line 6
    div-int/lit8 v2, v2, 0x8

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 7
    :goto_0
    invoke-virtual {v0, v1}, Lorg/xutils/cache/LruCache;->resize(I)V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xutils/image/a;->d:Ljava/util/HashMap;

    .line 9
    const-class v0, Ljava/io/File;

    sput-object v0, Lorg/xutils/image/a;->e:Ljava/lang/reflect/Type;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/xutils/image/a;->i:I

    .line 3
    sget-object v1, Lorg/xutils/image/a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/xutils/image/a;->j:J

    .line 4
    iput-boolean v0, p0, Lorg/xutils/image/a;->k:Z

    .line 5
    iput-boolean v0, p0, Lorg/xutils/image/a;->l:Z

    .line 6
    iput-boolean v0, p0, Lorg/xutils/image/a;->m:Z

    .line 7
    iput-boolean v0, p0, Lorg/xutils/image/a;->n:Z

    .line 8
    iput-boolean v0, p0, Lorg/xutils/image/a;->t:Z

    return-void
.end method

.method static synthetic a(Lorg/xutils/image/a;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xutils/image/a;->h:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic b(Lorg/xutils/image/a;)Lorg/xutils/image/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xutils/image/a;->f:Lorg/xutils/image/b;

    return-object p0
.end method

.method static synthetic c(Lorg/xutils/image/a;)Lorg/xutils/image/ImageOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xutils/image/a;->g:Lorg/xutils/image/ImageOptions;

    return-object p0
.end method

.method static synthetic d(Lorg/xutils/image/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/xutils/image/a;->i:I

    return p0
.end method

.method static synthetic e(Lorg/xutils/image/a;)Lorg/xutils/common/Callback$CommonCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xutils/image/a;->p:Lorg/xutils/common/Callback$CommonCallback;

    return-object p0
.end method

.method static f()V
    .locals 1

    const-string v0, "xUtils_img"

    .line 1
    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/cache/LruDiskCache;->clearCacheFiles()V

    return-void
.end method

.method static g()V
    .locals 1

    .line 1
    sget-object v0, Lorg/xutils/image/a;->c:Lorg/xutils/cache/LruCache;

    invoke-virtual {v0}, Lorg/xutils/cache/LruCache;->evictAll()V

    return-void
.end method

.method private static h(Landroid/content/Context;Ljava/lang/String;Lorg/xutils/image/ImageOptions;)Lorg/xutils/http/RequestParams;
    .locals 1

    .line 1
    new-instance v0, Lorg/xutils/http/RequestParams;

    invoke-direct {v0, p1}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setContext(Landroid/content/Context;)V

    :cond_0
    const-string p0, "xUtils_img"

    .line 3
    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setCacheDirName(Ljava/lang/String;)V

    const/16 p0, 0x1f40

    .line 4
    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setConnectTimeout(I)V

    .line 5
    sget-object p0, Lorg/xutils/common/task/Priority;->BG_LOW:Lorg/xutils/common/task/Priority;

    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setPriority(Lorg/xutils/common/task/Priority;)V

    .line 6
    sget-object p0, Lorg/xutils/image/a;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setExecutor(Ljava/util/concurrent/Executor;)V

    const/4 p0, 0x1

    .line 7
    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setCancelFast(Z)V

    const/4 p0, 0x0

    .line 8
    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setUseCookie(Z)V

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p2}, Lorg/xutils/image/ImageOptions;->getParamsBuilder()Lorg/xutils/image/ImageOptions$ParamsBuilder;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 10
    invoke-interface {p0, v0, p2}, Lorg/xutils/image/ImageOptions$ParamsBuilder;->buildParams(Lorg/xutils/http/RequestParams;Lorg/xutils/image/ImageOptions;)Lorg/xutils/http/RequestParams;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method static i(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;ILorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "I",
            "Lorg/xutils/common/Callback$CommonCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "view is null"

    .line 1
    invoke-static {v0, p2, p0, p4}, Lorg/xutils/image/a;->m(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    return-object v0

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "url is null"

    .line 3
    invoke-static {p0, p2, p1, p4}, Lorg/xutils/image/a;->m(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    return-object v0

    :cond_1
    if-nez p2, :cond_2

    .line 4
    sget-object p2, Lorg/xutils/image/ImageOptions;->DEFAULT:Lorg/xutils/image/ImageOptions;

    .line 5
    :cond_2
    invoke-virtual {p2, p0}, Lorg/xutils/image/ImageOptions;->u(Landroid/widget/ImageView;)V

    .line 6
    new-instance v1, Lorg/xutils/image/b;

    invoke-direct {v1, p1, p2}, Lorg/xutils/image/b;-><init>(Ljava/lang/String;Lorg/xutils/image/ImageOptions;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 8
    instance-of v3, v2, Lorg/xutils/image/AsyncDrawable;

    if-eqz v3, :cond_4

    .line 9
    check-cast v2, Lorg/xutils/image/AsyncDrawable;

    invoke-virtual {v2}, Lorg/xutils/image/AsyncDrawable;->getImageLoader()Lorg/xutils/image/a;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 10
    iget-boolean v3, v2, Lorg/xutils/image/a;->k:Z

    if-nez v3, :cond_5

    .line 11
    iget-object v3, v2, Lorg/xutils/image/a;->f:Lorg/xutils/image/b;

    invoke-virtual {v1, v3}, Lorg/xutils/image/b;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v0

    .line 12
    :cond_3
    invoke-virtual {v2}, Lorg/xutils/image/a;->cancel()V

    goto :goto_0

    .line 13
    :cond_4
    instance-of v3, v2, Lorg/xutils/image/d;

    if-eqz v3, :cond_5

    .line 14
    move-object v3, v2

    check-cast v3, Lorg/xutils/image/d;

    invoke-interface {v3}, Lorg/xutils/image/d;->getMemCacheKey()Lorg/xutils/image/b;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 15
    invoke-virtual {v3, v1}, Lorg/xutils/image/b;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 16
    sget-object v3, Lorg/xutils/image/a;->c:Lorg/xutils/cache/LruCache;

    invoke-virtual {v3, v1, v2}, Lorg/xutils/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_5
    :goto_0
    invoke-virtual {p2}, Lorg/xutils/image/ImageOptions;->isUseMemCache()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 18
    sget-object v2, Lorg/xutils/image/a;->c:Lorg/xutils/cache/LruCache;

    invoke-virtual {v2, v1}, Lorg/xutils/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 19
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_7

    .line 20
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 21
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move-object v1, v0

    :cond_7
    if-eqz v1, :cond_f

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 22
    :try_start_0
    instance-of v4, p4, Lorg/xutils/common/Callback$ProgressCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v4, :cond_8

    .line 23
    :try_start_1
    move-object v4, p4

    check-cast v4, Lorg/xutils/common/Callback$ProgressCallback;

    invoke-interface {v4}, Lorg/xutils/common/Callback$ProgressCallback;->onWaiting()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 24
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :cond_8
    :goto_1
    instance-of v4, p4, Lorg/xutils/common/Callback$CacheCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v4, :cond_9

    .line 26
    :try_start_3
    move-object v4, p4

    check-cast v4, Lorg/xutils/common/Callback$CacheCallback;

    invoke-interface {v4, v1}, Lorg/xutils/common/Callback$CacheCallback;->onCache(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    .line 27
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    const/4 v4, 0x0

    goto :goto_2

    :cond_9
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_c

    .line 28
    :try_start_5
    invoke-virtual {p2}, Lorg/xutils/image/ImageOptions;->getImageScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 29
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz p4, :cond_a

    .line 30
    :try_start_6
    invoke-interface {p4, v1}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    .line 31
    :try_start_7
    invoke-interface {p4, v1, v3}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :cond_a
    :goto_3
    if-eqz v4, :cond_b

    if-eqz p4, :cond_b

    .line 32
    :try_start_8
    invoke-interface {p4}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_4
    return-object v0

    .line 34
    :cond_c
    :try_start_9
    new-instance v0, Lorg/xutils/image/a;

    invoke-direct {v0}, Lorg/xutils/image/a;-><init>()V

    .line 35
    iput p3, v0, Lorg/xutils/image/a;->i:I

    .line 36
    iput-boolean v3, v0, Lorg/xutils/image/a;->m:Z

    .line 37
    invoke-direct {v0, p0, p1, p2, p4}, Lorg/xutils/image/a;->l(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v4, :cond_d

    if-eqz p4, :cond_d

    .line 38
    :try_start_a
    invoke-interface {p4}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_5
    return-object p0

    :catchall_5
    move-exception v0

    goto :goto_6

    :catchall_6
    move-exception v0

    const/4 v4, 0x0

    .line 40
    :goto_6
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 41
    :try_start_c
    new-instance v0, Lorg/xutils/image/a;

    invoke-direct {v0}, Lorg/xutils/image/a;-><init>()V

    .line 42
    iput p3, v0, Lorg/xutils/image/a;->i:I

    .line 43
    iput-boolean v3, v0, Lorg/xutils/image/a;->m:Z

    .line 44
    invoke-direct {v0, p0, p1, p2, p4}, Lorg/xutils/image/a;->l(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    return-object p0

    :catchall_7
    move-exception p0

    goto :goto_7

    :catchall_8
    move-exception p0

    move v2, v4

    :goto_7
    if-eqz v2, :cond_e

    if-eqz p4, :cond_e

    .line 45
    :try_start_d
    invoke-interface {p4}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    goto :goto_8

    :catchall_9
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    :cond_e
    :goto_8
    throw p0

    .line 48
    :cond_f
    new-instance v0, Lorg/xutils/image/a;

    invoke-direct {v0}, Lorg/xutils/image/a;-><init>()V

    .line 49
    iput p3, v0, Lorg/xutils/image/a;->i:I

    .line 50
    invoke-direct {v0, p0, p1, p2, p4}, Lorg/xutils/image/a;->l(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p0

    return-object p0
.end method

.method static j(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "Lorg/xutils/common/Callback$CommonCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    const-string v0, "url is null"

    .line 2
    invoke-static {p0, p1, v0, p2}, Lorg/xutils/image/a;->m(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lorg/xutils/image/a$d;

    invoke-direct {v0}, Lorg/xutils/image/a$d;-><init>()V

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p0, p1, v1, p2}, Lorg/xutils/image/a;->i(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;ILorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p0

    return-object p0
.end method

.method static k(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CacheCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "Lorg/xutils/common/Callback$CacheCallback<",
            "Ljava/io/File;",
            ">;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "url is null"

    .line 2
    invoke-static {v1, p1, p0, p2}, Lorg/xutils/image/a;->m(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    return-object v1

    .line 3
    :cond_0
    invoke-static {v1, p0, p1}, Lorg/xutils/image/a;->h(Landroid/content/Context;Ljava/lang/String;Lorg/xutils/image/ImageOptions;)Lorg/xutils/http/RequestParams;

    move-result-object p0

    .line 4
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lorg/xutils/HttpManager;->get(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p0

    return-object p0
.end method

.method private l(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "Lorg/xutils/common/Callback$CommonCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/xutils/image/a;->h:Ljava/lang/ref/WeakReference;

    .line 2
    iput-object p3, p0, Lorg/xutils/image/a;->g:Lorg/xutils/image/ImageOptions;

    .line 3
    new-instance v0, Lorg/xutils/image/b;

    invoke-direct {v0, p2, p3}, Lorg/xutils/image/b;-><init>(Ljava/lang/String;Lorg/xutils/image/ImageOptions;)V

    iput-object v0, p0, Lorg/xutils/image/a;->f:Lorg/xutils/image/b;

    .line 4
    iput-object p4, p0, Lorg/xutils/image/a;->p:Lorg/xutils/common/Callback$CommonCallback;

    .line 5
    instance-of v0, p4, Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_0

    .line 6
    move-object v0, p4

    check-cast v0, Lorg/xutils/common/Callback$ProgressCallback;

    iput-object v0, p0, Lorg/xutils/image/a;->s:Lorg/xutils/common/Callback$ProgressCallback;

    .line 7
    :cond_0
    instance-of v0, p4, Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v0, :cond_1

    .line 8
    move-object v0, p4

    check-cast v0, Lorg/xutils/common/Callback$PrepareCallback;

    iput-object v0, p0, Lorg/xutils/image/a;->q:Lorg/xutils/common/Callback$PrepareCallback;

    .line 9
    :cond_1
    instance-of v0, p4, Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v0, :cond_2

    .line 10
    check-cast p4, Lorg/xutils/common/Callback$CacheCallback;

    iput-object p4, p0, Lorg/xutils/image/a;->r:Lorg/xutils/common/Callback$CacheCallback;

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 12
    invoke-virtual {p3}, Lorg/xutils/image/ImageOptions;->isForceLoadingDrawable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    :cond_3
    invoke-virtual {p3, p1}, Lorg/xutils/image/ImageOptions;->getLoadingDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 14
    invoke-virtual {p3}, Lorg/xutils/image/ImageOptions;->getPlaceholderScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 15
    :cond_4
    new-instance v0, Lorg/xutils/image/AsyncDrawable;

    invoke-direct {v0, p0, p4}, Lorg/xutils/image/AsyncDrawable;-><init>(Lorg/xutils/image/a;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p2, p3}, Lorg/xutils/image/a;->h(Landroid/content/Context;Ljava/lang/String;Lorg/xutils/image/ImageOptions;)Lorg/xutils/http/RequestParams;

    move-result-object p3

    .line 17
    instance-of p4, p1, Lorg/xutils/image/a$d;

    if-eqz p4, :cond_5

    .line 18
    sget-object p4, Lorg/xutils/image/a;->d:Ljava/util/HashMap;

    monitor-enter p4

    .line 19
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p1, Lorg/xutils/image/a$d;

    invoke-virtual {p4, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    monitor-exit p4

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 21
    :cond_5
    :goto_0
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object p1

    invoke-interface {p1, p3, p0}, Lorg/xutils/HttpManager;->get(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/image/a;->o:Lorg/xutils/common/Callback$Cancelable;

    return-object p1
.end method

.method private static m(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Lorg/xutils/image/ImageOptions;",
            "Ljava/lang/String;",
            "Lorg/xutils/common/Callback$CommonCallback<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/image/a$c;

    invoke-direct {v1, p3, p0, p1, p2}, Lorg/xutils/image/a$c;-><init>(Lorg/xutils/common/Callback$CommonCallback;Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->autoPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/xutils/image/a;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lorg/xutils/image/a;->g:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1, v0}, Lorg/xutils/image/ImageOptions;->getFailureDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lorg/xutils/image/a;->g:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v2}, Lorg/xutils/image/ImageOptions;->getPlaceholderScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private o(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/xutils/image/a;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 2
    iget-object v1, p0, Lorg/xutils/image/a;->g:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->getImageScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3
    instance-of v1, p1, Lorg/xutils/image/GifDrawable;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_0

    .line 5
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 7
    :cond_1
    iget-object v1, p0, Lorg/xutils/image/a;->g:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lorg/xutils/image/a;->g:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/xutils/image/ImageAnimationHelper;->animationDisplay(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lorg/xutils/image/a;->g:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->isFadeIn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-static {v0, p1}, Lorg/xutils/image/ImageAnimationHelper;->fadeInDisplay(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private p(Z)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/xutils/image/a;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    instance-of v2, v0, Lorg/xutils/image/AsyncDrawable;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 4
    check-cast v0, Lorg/xutils/image/AsyncDrawable;

    invoke-virtual {v0}, Lorg/xutils/image/AsyncDrawable;->getImageLoader()Lorg/xutils/image/a;

    move-result-object p1

    if-eqz p1, :cond_3

    if-ne p1, p0, :cond_0

    return v3

    .line 5
    :cond_0
    iget-wide v4, p0, Lorg/xutils/image/a;->j:J

    iget-wide v6, p1, Lorg/xutils/image/a;->j:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lorg/xutils/image/a;->cancel()V

    return v3

    .line 7
    :cond_1
    invoke-virtual {p0}, Lorg/xutils/image/a;->cancel()V

    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0}, Lorg/xutils/image/a;->cancel()V

    return v1

    :cond_3
    return v3

    :cond_4
    return v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/xutils/image/a;->k:Z

    .line 2
    iput-boolean v0, p0, Lorg/xutils/image/a;->l:Z

    .line 3
    iget-object v0, p0, Lorg/xutils/image/a;->o:Lorg/xutils/common/Callback$Cancelable;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lorg/xutils/common/Callback$Cancelable;->cancel()V

    :cond_0
    return-void
.end method

.method public getLoadType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    sget-object v0, Lorg/xutils/image/a;->e:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/xutils/image/a;->l:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lorg/xutils/image/a;->p(Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onCache(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lorg/xutils/image/a;->p(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_3

    .line 3
    iput-boolean v0, p0, Lorg/xutils/image/a;->t:Z

    .line 4
    invoke-direct {p0, p1}, Lorg/xutils/image/a;->o(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v1, p0, Lorg/xutils/image/a;->r:Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1, p1}, Lorg/xutils/common/Callback$CacheCallback;->onCache(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7
    :cond_1
    iget-object v1, p0, Lorg/xutils/image/a;->p:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v1, p1}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method public bridge synthetic onCache(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lorg/xutils/image/a;->onCache(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method

.method public onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/xutils/image/a;->k:Z

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/xutils/image/a;->p(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/xutils/image/a;->p:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CommonCallback;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;Z)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/xutils/image/a;->k:Z

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v1}, Lorg/xutils/image/a;->p(Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, p0, Lorg/xutils/image/a;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/xutils/image/a;->i:I

    .line 4
    instance-of v2, p1, Lorg/xutils/ex/FileLockedException;

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ImageFileLocked: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/xutils/image/a;->f:Lorg/xutils/image/b;

    iget-object p2, p2, Lorg/xutils/image/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object p1

    new-instance p2, Lorg/xutils/image/a$b;

    invoke-direct {p2, p0}, Lorg/xutils/image/a$b;-><init>(Lorg/xutils/image/a;)V

    iget v1, p0, Lorg/xutils/image/a;->i:I

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x64

    add-int/lit8 v1, v1, 0xa

    int-to-long v1, v1

    invoke-interface {p1, p2, v1, v2}, Lorg/xutils/common/TaskController;->postDelayed(Ljava/lang/Runnable;J)V

    .line 7
    iput-boolean v0, p0, Lorg/xutils/image/a;->n:Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/xutils/image/a;->f:Lorg/xutils/image/b;

    iget-object v0, v0, Lorg/xutils/image/b;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    invoke-direct {p0}, Lorg/xutils/image/a;->n()V

    .line 10
    iget-object v0, p0, Lorg/xutils/image/a;->p:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0, p1, p2}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onFinished()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/xutils/image/a;->k:Z

    .line 2
    iget-boolean v0, p0, Lorg/xutils/image/a;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/xutils/image/a;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4
    instance-of v1, v0, Lorg/xutils/image/a$d;

    if-eqz v1, :cond_1

    .line 5
    sget-object v1, Lorg/xutils/image/a;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 6
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/xutils/image/a;->f:Lorg/xutils/image/b;

    iget-object v0, v0, Lorg/xutils/image/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/xutils/image/a;->p:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V

    :cond_2
    return-void
.end method

.method public onLoading(JJZ)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lorg/xutils/image/a;->p(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/xutils/image/a;->s:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v1, :cond_0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 2
    invoke-interface/range {v1 .. v6}, Lorg/xutils/common/Callback$ProgressCallback;->onLoading(JJZ)V

    :cond_0
    return-void
.end method

.method public onStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lorg/xutils/image/a;->p(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/image/a;->s:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onStarted()V

    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lorg/xutils/image/a;->t:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/xutils/image/a;->p(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lorg/xutils/image/a;->o(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, p0, Lorg/xutils/image/a;->p:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lorg/xutils/image/a;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onWaiting()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/xutils/image/a;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xutils/image/a;->s:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onWaiting()V

    :cond_0
    return-void
.end method

.method public prepare(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lorg/xutils/image/a;->p(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    :try_start_0
    iget-object v0, p0, Lorg/xutils/image/a;->q:Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$PrepareCallback;->prepare(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    :cond_1
    if-nez v1, :cond_2

    .line 6
    iget-object v0, p0, Lorg/xutils/image/a;->g:Lorg/xutils/image/ImageOptions;

    invoke-static {p1, v0, p0}, Lorg/xutils/image/ImageDecoder;->c(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 7
    instance-of v0, v1, Lorg/xutils/image/d;

    if-eqz v0, :cond_3

    .line 8
    move-object v0, v1

    check-cast v0, Lorg/xutils/image/d;

    iget-object v2, p0, Lorg/xutils/image/a;->f:Lorg/xutils/image/b;

    invoke-interface {v0, v2}, Lorg/xutils/image/d;->setMemCacheKey(Lorg/xutils/image/b;)V

    .line 9
    sget-object v0, Lorg/xutils/image/a;->c:Lorg/xutils/cache/LruCache;

    iget-object v2, p0, Lorg/xutils/image/a;->f:Lorg/xutils/image/b;

    invoke-virtual {v0, v2, v1}, Lorg/xutils/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    :catch_0
    move-exception v0

    .line 10
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 11
    throw v0

    .line 12
    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic prepare(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/xutils/image/a;->prepare(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
