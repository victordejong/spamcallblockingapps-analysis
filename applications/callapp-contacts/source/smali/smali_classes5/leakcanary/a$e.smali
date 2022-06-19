.class public final Lleakcanary/a$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleakcanary/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lleakcanary/a$e$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001#B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eJ\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0002J%\u0010\u0013\u001a\u00020\n*\u00020\u000c2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\n0\u0015H\u0000\u00a2\u0006\u0002\u0008\u0017J\u001a\u0010\u0018\u001a\u00020\n*\u00020\u00192\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002J\u001a\u0010\u001c\u001a\u00020\n*\u00020\u00192\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\n0\u001aH\u0002J\u001a\u0010\u001e\u001a\u00020\n*\u00020\u001f2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\n0\u001aH\u0002J\u000c\u0010!\u001a\u00020\"*\u00020\u0019H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lleakcanary/AndroidLeakFixes$Companion;",
        "",
        "()V",
        "LG",
        "",
        "SAMSUNG",
        "backgroundExecutor",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "kotlin.jvm.PlatformType",
        "applyFixes",
        "",
        "application",
        "Landroid/app/Application;",
        "fixes",
        "",
        "Lleakcanary/AndroidLeakFixes;",
        "findAllHandlerThreads",
        "",
        "Landroid/os/HandlerThread;",
        "onActivityDestroyed",
        "block",
        "Lkotlin/Function1;",
        "Landroid/app/Activity;",
        "onActivityDestroyed$plumber_android_release",
        "onContentChanged",
        "Landroid/view/Window;",
        "Lkotlin/Function0;",
        "",
        "onDecorViewReady",
        "callback",
        "onEachIdle",
        "Landroid/os/Handler;",
        "onIdle",
        "wrapCallback",
        "Lleakcanary/AndroidLeakFixes$Companion$WindowDelegateCallback;",
        "WindowDelegateCallback",
        "plumber-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 672
    invoke-direct {p0}, Lleakcanary/a$e;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/Application;)V
    .locals 3

    .line 679
    const-class v0, Lleakcanary/a;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "EnumSet.allOf(AndroidLeakFixes::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Set;

    const-string v1, "application"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fixes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1787
    invoke-static {}, Lleakcanary/internal/b;->a()V

    .line 1682
    check-cast v0, Ljava/lang/Iterable;

    .line 1788
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lleakcanary/a;

    .line 1683
    invoke-static {v1}, Lleakcanary/a;->access$getApplied$p(Lleakcanary/a;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1684
    invoke-virtual {v1, p0}, Lleakcanary/a;->apply(Landroid/app/Application;)V

    const/4 v2, 0x1

    .line 1685
    invoke-static {v1, v2}, Lleakcanary/a;->access$setApplied$p(Lleakcanary/a;Z)V

    goto :goto_0

    .line 1687
    :cond_1
    sget-object v2, Ld/a;->a:Ld/a;

    .line 1789
    invoke-static {}, Ld/a;->a()Ld/a$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lleakcanary/a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " leak fix already applied."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Landroid/app/Application;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/app/Activity;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$onActivityDestroyed"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 736
    new-instance v0, Lleakcanary/a$e$b;

    invoke-direct {v0, p1}, Lleakcanary/a$e$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
