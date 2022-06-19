.class public final Lleakcanary/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u000c\u001a\u00020\rH\u0002J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001c\u0010\u0012\u001a\u00020\r2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0014H\u0016J\u0010\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0014H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lleakcanary/internal/ReferenceCleaner;",
        "Landroid/os/MessageQueue$IdleHandler;",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;",
        "inputMethodManager",
        "Landroid/view/inputmethod/InputMethodManager;",
        "mHField",
        "Ljava/lang/reflect/Field;",
        "mServedViewField",
        "finishInputLockedMethod",
        "Ljava/lang/reflect/Method;",
        "(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V",
        "clearInputMethodManagerLeak",
        "",
        "extractActivity",
        "Landroid/app/Activity;",
        "sourceContext",
        "Landroid/content/Context;",
        "onGlobalFocusChanged",
        "oldFocus",
        "Landroid/view/View;",
        "newFocus",
        "onViewAttachedToWindow",
        "v",
        "onViewDetachedFromWindow",
        "queueIdle",
        "",
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
.field private final a:Landroid/view/inputmethod/InputMethodManager;

.field private final b:Ljava/lang/reflect/Field;

.field private final c:Ljava/lang/reflect/Field;

.field private final d:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 1

    const-string v0, "inputMethodManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mHField"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mServedViewField"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finishInputLockedMethod"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lleakcanary/internal/d;->a:Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lleakcanary/internal/d;->b:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lleakcanary/internal/d;->c:Ljava/lang/reflect/Field;

    iput-object p4, p0, Lleakcanary/internal/d;->d:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 33
    move-object v0, p0

    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 34
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object p1

    .line 35
    move-object v0, p0

    check-cast v0, Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {p1, v0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 36
    move-object p1, p0

    check-cast p1, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    move-object v0, p0

    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 42
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object p1

    .line 43
    move-object v0, p0

    check-cast v0, Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {p1, v0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 44
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object p1

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public final queueIdle()Z
    .locals 7

    const/4 v0, 0x0

    .line 1055
    :try_start_0
    iget-object v1, p0, Lleakcanary/internal/d;->b:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lleakcanary/internal/d;->a:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1057
    sget-object v1, Ld/a;->a:Ld/a;

    goto/16 :goto_6

    .line 1061
    :cond_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1063
    :try_start_1
    iget-object v2, p0, Lleakcanary/internal/d;->c:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lleakcanary/internal/d;->a:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_a

    .line 1066
    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-eq v3, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 1071
    move-object v3, p0

    check-cast v3, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1072
    move-object v3, p0

    check-cast v3, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_5

    .line 1074
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "servedView.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2102
    :goto_1
    instance-of v3, v2, Landroid/app/Application;

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    goto :goto_2

    .line 2105
    :cond_3
    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_4

    .line 2106
    move-object v6, v2

    check-cast v6, Landroid/app/Activity;

    goto :goto_2

    .line 2108
    :cond_4
    instance-of v3, v2, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_6

    .line 2110
    move-object v3, v2

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    if-ne v3, v2, :cond_5

    goto :goto_2

    :cond_5
    const-string v2, "baseContext"

    .line 2115
    invoke-static {v3, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz v6, :cond_9

    .line 1075
    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_4

    .line 1079
    :cond_7
    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1080
    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    const-string v3, "decorView"

    .line 1082
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-eq v2, v5, :cond_8

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_a

    .line 1087
    iget-object v2, p0, Lleakcanary/internal/d;->d:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lleakcanary/internal/d;->a:Landroid/view/inputmethod/InputMethodManager;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1077
    :cond_9
    :goto_4
    iget-object v2, p0, Lleakcanary/internal/d;->d:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lleakcanary/internal/d;->a:Landroid/view/inputmethod/InputMethodManager;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    :cond_a
    :goto_5
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1061
    :try_start_2
    monitor-exit v1

    goto :goto_6

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1094
    :catchall_1
    sget-object v1, Ld/a;->a:Ld/a;

    :goto_6
    return v0
.end method
