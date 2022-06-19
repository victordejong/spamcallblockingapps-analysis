.class public final Lleakcanary/a$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lleakcanary/a$h;->apply(Landroid/app/Application;)V
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
        "leakcanary/AndroidLeakFixes$IMM_CUR_ROOT_VIEW$apply$2",
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
.field final synthetic a:Ljava/lang/reflect/Field;

.field final synthetic b:Landroid/view/inputmethod/InputMethodManager;

.field private final synthetic c:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2

    .line 499
    iput-object p1, p0, Lleakcanary/a$h$a;->a:Ljava/lang/reflect/Field;

    iput-object p2, p0, Lleakcanary/a$h$a;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 791
    const-class p1, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 793
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {}, Lleakcanary/internal/c;->a()Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    .line 792
    invoke-static {p2, v0, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 790
    iput-object p1, p0, Lleakcanary/a$h$a;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void

    .line 792
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.app.Application.ActivityLifecycleCallbacks"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/a$h$a;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    :try_start_0
    iget-object v0, p0, Lleakcanary/a$h$a;->a:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lleakcanary/a$h$a;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v1, "activity.window"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-ne p1, v0, :cond_0

    .line 506
    iget-object p1, p0, Lleakcanary/a$h$a;->a:Ljava/lang/reflect/Field;

    iget-object v0, p0, Lleakcanary/a$h$a;->b:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 509
    :catch_0
    sget-object p1, Ld/a;->a:Ld/a;

    :cond_0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/a$h$a;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/a$h$a;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/a$h$a;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/a$h$a;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lleakcanary/a$h$a;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    return-void
.end method
