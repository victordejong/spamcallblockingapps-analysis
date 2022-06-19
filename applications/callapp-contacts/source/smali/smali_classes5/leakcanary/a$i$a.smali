.class public final Lleakcanary/a$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lleakcanary/a$i;->apply(Landroid/app/Application;)V
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001b\u0010\u0008\u001a\u00020\u00032\u0010\u0008\u0001\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\u000b\u001a\u00020\u00032\u0010\u0008\u0001\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\u000c\u001a\u00020\u00032\u0010\u0008\u0001\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J-\u0010\r\u001a\u00020\u00032\u0010\u0008\u0001\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00050\u00052\u0010\u0008\u0001\u0010\u000e\u001a\n \n*\u0004\u0018\u00010\u00070\u0007H\u0096\u0001J\u001b\u0010\u000f\u001a\u00020\u00032\u0010\u0008\u0001\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001J\u001b\u0010\u0010\u001a\u00020\u00032\u0010\u0008\u0001\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001\u00a8\u0006\u0011"
    }
    d2 = {
        "leakcanary/AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2",
        "Landroid/app/Application$ActivityLifecycleCallbacks;",
        "onActivityCreated",
        "",
        "activity",
        "Landroid/app/Activity;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onActivityDestroyed",
        "p0",
        "kotlin.jvm.PlatformType",
        "onActivityPaused",
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
.field final synthetic a:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic b:Ljava/lang/reflect/Field;

.field final synthetic c:Ljava/lang/reflect/Field;

.field final synthetic d:Ljava/lang/reflect/Method;

.field private final synthetic e:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lleakcanary/a$i$a;->a:Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lleakcanary/a$i$a;->b:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lleakcanary/a$i$a;->c:Ljava/lang/reflect/Field;

    iput-object p4, p0, Lleakcanary/a$i$a;->d:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    const-class p1, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 790
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Class;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    invoke-static {}, Lleakcanary/internal/c;->a()Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    .line 789
    invoke-static {p2, p3, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 787
    iput-object p1, p0, Lleakcanary/a$i$a;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void

    .line 789
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.app.Application.ActivityLifecycleCallbacks"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    sget-object p2, Lleakcanary/a;->Companion:Lleakcanary/a$e;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const-string v0, "activity.window"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lleakcanary/a$i$a$a;

    invoke-direct {v0, p0, p1}, Lleakcanary/a$i$a$a;-><init>(Lleakcanary/a$i$a;Landroid/app/Activity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1745
    invoke-virtual {p2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1746
    new-instance p1, Lleakcanary/a$e$c;

    invoke-direct {p1, v0}, Lleakcanary/a$e$c;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 1761
    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1762
    instance-of v1, v0, Lleakcanary/a$e$a;

    if-eqz v1, :cond_0

    .line 1763
    check-cast v0, Lleakcanary/a$e$a;

    goto :goto_0

    .line 1765
    :cond_0
    new-instance v1, Lleakcanary/a$e$a;

    const-string v2, "currentCallback"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lleakcanary/a$e$a;-><init>(Landroid/view/Window$Callback;)V

    .line 1766
    move-object v0, v1

    check-cast v0, Landroid/view/Window$Callback;

    invoke-virtual {p2, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    move-object v0, v1

    .line 1775
    :goto_0
    iget-object p2, v0, Lleakcanary/a$e$a;->a:Ljava/util/List;

    .line 1757
    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 1751
    :cond_1
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/a$i$a;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/a$i$a;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/a$i$a;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/a$i$a;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/a$i$a;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/a$i$a;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    return-void
.end method
