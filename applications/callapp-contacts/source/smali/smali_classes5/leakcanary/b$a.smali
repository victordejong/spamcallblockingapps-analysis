.class public final Lleakcanary/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lleakcanary/b;->a(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001b\u0010\t\u001a\u00020\u00032\u0010\u0008\u0001\u0010\n\u001a\n \u000b*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\u000c\u001a\u00020\u00032\u0010\u0008\u0001\u0010\n\u001a\n \u000b*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J-\u0010\r\u001a\u00020\u00032\u0010\u0008\u0001\u0010\n\u001a\n \u000b*\u0004\u0018\u00010\u00050\u00052\u0010\u0008\u0001\u0010\u000e\u001a\n \u000b*\u0004\u0018\u00010\u00070\u0007H\u0096\u0001J\u001b\u0010\u000f\u001a\u00020\u00032\u0010\u0008\u0001\u0010\n\u001a\n \u000b*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\u0010\u001a\u00020\u00032\u0010\u0008\u0001\u0010\n\u001a\n \u000b*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001\u00a8\u0006\u0011"
    }
    d2 = {
        "leakcanary/ViewLocationHolderLeakFix$applyFix$1",
        "Landroid/app/Application$ActivityLifecycleCallbacks;",
        "onActivityCreated",
        "",
        "activity",
        "Landroid/app/Activity;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onActivityDestroyed",
        "onActivityPaused",
        "p0",
        "kotlin.jvm.PlatformType",
        "onActivityResumed",
        "onActivitySaveInstanceState",
        "p1",
        "onActivityStarted",
        "onActivityStopped",
        "plumber-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Application;

.field private final synthetic b:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 3

    .line 29
    iput-object p1, p0, Lleakcanary/b$a;->a:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-class p1, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 86
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {}, Lleakcanary/internal/c;->a()Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    .line 85
    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 83
    iput-object p1, p0, Lleakcanary/b$a;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void

    .line 85
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Application.ActivityLifecycleCallbacks"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance p2, Lleakcanary/b$a$a;

    invoke-direct {p2, p0}, Lleakcanary/b$a$a;-><init>(Lleakcanary/b$a;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lleakcanary/internal/a;->a(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object p1, Lleakcanary/b;->a:Lleakcanary/b;

    iget-object p1, p0, Lleakcanary/b$a;->a:Landroid/app/Application;

    invoke-static {p1}, Lleakcanary/b;->b(Landroid/app/Application;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/b$a;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/b$a;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/b$a;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/b$a;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/b$a;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    return-void
.end method
