.class public Lcom/flurry/sdk/kg;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final e:Ljava/lang/String; = "kg"

.field private static f:Lcom/flurry/sdk/kg;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:Landroid/os/Handler;

.field public final d:Ljava/lang/String;

.field private final g:Landroid/os/HandlerThread;

.field private final h:Lcom/flurry/sdk/kw;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/flurry/sdk/kg;->b:Landroid/os/Handler;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "FlurryAgent"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/flurry/sdk/kg;->g:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/flurry/sdk/kg;->c:Landroid/os/Handler;

    iput-object p2, p0, Lcom/flurry/sdk/kg;->d:Ljava/lang/String;

    new-instance p1, Lcom/flurry/sdk/kw;

    invoke-direct {p1}, Lcom/flurry/sdk/kw;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/kg;->h:Lcom/flurry/sdk/kw;

    return-void
.end method

.method public static a()Lcom/flurry/sdk/kg;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/kg;->f:Lcom/flurry/sdk/kg;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/flurry/sdk/kg;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/kg;->f:Lcom/flurry/sdk/kg;

    if-eqz v1, :cond_1

    iget-object p0, v1, Lcom/flurry/sdk/kg;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/flurry/sdk/kg;->e:Ljava/lang/String;

    const-string p1, "Flurry is already initialized"

    invoke-static {p0, p1}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only one API key per application is supported!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/flurry/sdk/kg;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/kg;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/flurry/sdk/kg;->f:Lcom/flurry/sdk/kg;

    iget-object p1, v1, Lcom/flurry/sdk/kg;->h:Lcom/flurry/sdk/kw;

    invoke-virtual {p1, p0}, Lcom/flurry/sdk/kw;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "API key must be specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/flurry/sdk/kx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/flurry/sdk/kx;",
            ">;)",
            "Lcom/flurry/sdk/kx;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/kg;->h:Lcom/flurry/sdk/kw;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/kw;->b(Ljava/lang/Class;)Lcom/flurry/sdk/kx;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kg;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/kg;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kg;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
