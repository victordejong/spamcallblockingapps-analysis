.class final Landroidx/lifecycle/LifecycleController$observer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;Landroidx/lifecycle/j$b;Landroidx/lifecycle/d;Lkotlinx/coroutines/bv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "source",
        "Landroidx/lifecycle/LifecycleOwner;",
        "<anonymous parameter 1>",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "onStateChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/k;

.field final synthetic b:Lkotlinx/coroutines/bv;


# direct methods
.method constructor <init>(Landroidx/lifecycle/k;Lkotlinx/coroutines/bv;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->a:Landroidx/lifecycle/k;

    iput-object p2, p0, Landroidx/lifecycle/LifecycleController$observer$1;->b:Lkotlinx/coroutines/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/p;Landroidx/lifecycle/j$a;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {p1}, Landroidx/lifecycle/p;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p2

    const-string v0, "source.lifecycle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/lifecycle/j;->getCurrentState()Landroidx/lifecycle/j$b;

    move-result-object p2

    sget-object v1, Landroidx/lifecycle/j$b;->DESTROYED:Landroidx/lifecycle/j$b;

    if-ne p2, v1, :cond_0

    .line 36
    iget-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->a:Landroidx/lifecycle/k;

    iget-object p2, p0, Landroidx/lifecycle/LifecycleController$observer$1;->b:Lkotlinx/coroutines/bv;

    const/4 v0, 0x0

    .line 1192
    invoke-interface {p2, v0}, Lkotlinx/coroutines/bv;->a(Ljava/util/concurrent/CancellationException;)V

    .line 72
    invoke-virtual {p1}, Landroidx/lifecycle/k;->a()V

    return-void

    .line 37
    :cond_0
    invoke-interface {p1}, Landroidx/lifecycle/p;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/j;->getCurrentState()Landroidx/lifecycle/j$b;

    move-result-object p1

    iget-object p2, p0, Landroidx/lifecycle/LifecycleController$observer$1;->a:Landroidx/lifecycle/k;

    .line 2026
    iget-object p2, p2, Landroidx/lifecycle/k;->a:Landroidx/lifecycle/j$b;

    .line 37
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/j$b;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    const/4 p2, 0x1

    if-gez p1, :cond_1

    .line 38
    iget-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->a:Landroidx/lifecycle/k;

    .line 3026
    iget-object p1, p1, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/d;

    .line 3042
    iput-boolean p2, p1, Landroidx/lifecycle/d;->a:Z

    return-void

    .line 40
    :cond_1
    iget-object p1, p0, Landroidx/lifecycle/LifecycleController$observer$1;->a:Landroidx/lifecycle/k;

    .line 4026
    iget-object p1, p1, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/d;

    .line 4047
    iget-boolean v0, p1, Landroidx/lifecycle/d;->a:Z

    if-eqz v0, :cond_3

    .line 4050
    iget-boolean v0, p1, Landroidx/lifecycle/d;->b:Z

    xor-int/2addr p2, v0

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 4053
    iput-boolean p2, p1, Landroidx/lifecycle/d;->a:Z

    .line 4054
    invoke-virtual {p1}, Landroidx/lifecycle/d;->a()V

    goto :goto_0

    .line 4050
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot resume a finished dispatcher"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_3
    :goto_0
    return-void
.end method
