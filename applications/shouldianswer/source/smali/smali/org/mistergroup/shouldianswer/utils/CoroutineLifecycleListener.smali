.class public final Lorg/mistergroup/shouldianswer/utils/CoroutineLifecycleListener;
.super Ljava/lang/Object;
.source "AsyncLoader.kt"

# interfaces
.implements Landroidx/lifecycle/j;


# instance fields
.field private final a:Lkotlinx/coroutines/ak;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/ak<",
            "*>;"
        }
    .end annotation
.end field


# virtual methods
.method public final cancelCoroutine()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/r;
        a = .enum Landroidx/lifecycle/g$a;->ON_DESTROY:Landroidx/lifecycle/g$a;
    .end annotation

    .line 18
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/CoroutineLifecycleListener;->a:Lkotlinx/coroutines/ak;

    invoke-interface {v0}, Lkotlinx/coroutines/ak;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/utils/CoroutineLifecycleListener;->a:Lkotlinx/coroutines/ak;

    invoke-interface {v0}, Lkotlinx/coroutines/ak;->o()V

    :cond_0
    return-void
.end method
