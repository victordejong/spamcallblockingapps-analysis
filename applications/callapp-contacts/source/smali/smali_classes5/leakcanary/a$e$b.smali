.class public final Lleakcanary/a$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lleakcanary/a$e;->a(Landroid/app/Application;Lkotlin/jvm/functions/Function1;)V
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J-\u0010\u0002\u001a\u00020\u00032\u0010\u0008\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u00052\u0010\u0008\u0001\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\u00080\u0008H\u0096\u0001J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u001b\u0010\u000b\u001a\u00020\u00032\u0010\u0008\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\u000c\u001a\u00020\u00032\u0010\u0008\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J-\u0010\r\u001a\u00020\u00032\u0010\u0008\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u00052\u0010\u0008\u0001\u0010\u0007\u001a\n \u0006*\u0004\u0018\u00010\u00080\u0008H\u0096\u0001J\u001b\u0010\u000e\u001a\u00020\u00032\u0010\u0008\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\u000f\u001a\u00020\u00032\u0010\u0008\u0001\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001\u00a8\u0006\u0010"
    }
    d2 = {
        "leakcanary/AndroidLeakFixes$Companion$onActivityDestroyed$1",
        "Landroid/app/Application$ActivityLifecycleCallbacks;",
        "onActivityCreated",
        "",
        "p0",
        "Landroid/app/Activity;",
        "kotlin.jvm.PlatformType",
        "p1",
        "Landroid/os/Bundle;",
        "onActivityDestroyed",
        "activity",
        "onActivityPaused",
        "onActivityResumed",
        "onActivitySaveInstanceState",
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
.field final synthetic a:Lkotlin/jvm/functions/Function1;

.field private final synthetic b:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 3

    .line 736
    iput-object p1, p0, Lleakcanary/a$e$b;->a:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    const-class p1, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 790
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {}, Lleakcanary/internal/c;->a()Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    .line 789
    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 787
    iput-object p1, p0, Lleakcanary/a$e$b;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void

    .line 789
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.app.Application.ActivityLifecycleCallbacks"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/a$e$b;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lleakcanary/a$e$b;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/a$e$b;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/a$e$b;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/a$e$b;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/a$e$b;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/a$e$b;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    return-void
.end method
