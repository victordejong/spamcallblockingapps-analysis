.class public Landroidx/viewpager2/adapter/FragmentStateAdapter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Loe;


# instance fields
.field public final synthetic a:Lj40;

.field public final synthetic b:Li40;


# virtual methods
.method public b(Lqe;Lme$a;)V
    .locals 0

    iget-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->b:Li40;

    invoke-virtual {p2}, Li40;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lqe;->getLifecycle()Lme;

    move-result-object p1

    invoke-virtual {p1, p0}, Lme;->c(Lpe;)V

    iget-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;->a:Lj40;

    invoke-virtual {p1}, Lj40;->b()Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    throw p1
.end method
