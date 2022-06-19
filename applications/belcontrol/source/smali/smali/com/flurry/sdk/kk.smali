.class public Lcom/flurry/sdk/kk;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "kk"

.field private static b:Lcom/flurry/sdk/kk;


# instance fields
.field private c:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/kk;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/flurry/sdk/kk$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/kk$1;-><init>(Lcom/flurry/sdk/kk;)V

    iput-object v1, p0, Lcom/flurry/sdk/kk;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/kk;
    .locals 2

    const-class v0, Lcom/flurry/sdk/kk;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/kk;->b:Lcom/flurry/sdk/kk;

    if-nez v1, :cond_0

    new-instance v1, Lcom/flurry/sdk/kk;

    invoke-direct {v1}, Lcom/flurry/sdk/kk;-><init>()V

    sput-object v1, Lcom/flurry/sdk/kk;->b:Lcom/flurry/sdk/kk;

    :cond_0
    sget-object v1, Lcom/flurry/sdk/kk;->b:Lcom/flurry/sdk/kk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/kk;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/kk;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
