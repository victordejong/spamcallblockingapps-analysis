.class public Lcom/amazon/device/ads/ActivityMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static c:Lcom/amazon/device/ads/ActivityMonitor;


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/amazon/device/ads/DTBActivityListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/ActivityMonitor;->a(Landroid/content/Context;)V

    .line 24
    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 26
    :cond_0
    sput-object p0, Lcom/amazon/device/ads/ActivityMonitor;->c:Lcom/amazon/device/ads/ActivityMonitor;

    :cond_1
    return-void
.end method

.method static a()Lcom/amazon/device/ads/ActivityMonitor;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/device/ads/ActivityMonitor;->c:Lcom/amazon/device/ads/ActivityMonitor;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 83
    :goto_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 85
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/device/ads/ActivityMonitor;->a:Ljava/lang/ref/WeakReference;

    return-void

    .line 91
    :cond_0
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 46
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/amazon/device/ads/ActivityMonitor;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/device/ads/ActivityMonitor;->b:Lcom/amazon/device/ads/DTBActivityListener;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0}, Lcom/amazon/device/ads/DTBActivityListener;->b()V

    .line 75
    iget-object v0, p0, Lcom/amazon/device/ads/ActivityMonitor;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/amazon/device/ads/ActivityMonitor;->a:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/device/ads/ActivityMonitor;->a:Ljava/lang/ref/WeakReference;

    .line 54
    iget-object p1, p0, Lcom/amazon/device/ads/ActivityMonitor;->b:Lcom/amazon/device/ads/DTBActivityListener;

    if-eqz p1, :cond_0

    .line 55
    invoke-interface {p1}, Lcom/amazon/device/ads/DTBActivityListener;->a()V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
