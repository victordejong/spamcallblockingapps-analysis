.class public Landroidx/viewpager2/adapter/FragmentStateAdapter$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Loe;


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Ljava/lang/Runnable;


# virtual methods
.method public b(Lqe;Lme$a;)V
    .locals 1

    sget-object v0, Lme$a;->ON_DESTROY:Lme$a;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;->a:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;->b:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-interface {p1}, Lqe;->getLifecycle()Lme;

    move-result-object p1

    invoke-virtual {p1, p0}, Lme;->c(Lpe;)V

    :cond_0
    return-void
.end method
