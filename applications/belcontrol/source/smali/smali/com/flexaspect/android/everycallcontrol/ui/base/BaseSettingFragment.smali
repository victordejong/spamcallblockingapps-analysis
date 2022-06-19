.class public abstract Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lfv0;",
        ">",
        "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public l:Landroidx/recyclerview/widget/RecyclerView;

.field public m:Lnu0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;-><init>()V

    new-instance v0, Lnu0;

    invoke-direct {v0}, Lnu0;-><init>()V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    return-void
.end method

.method private synthetic K(ILkq0;)V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public J(ZILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lkq0;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkq0;

    invoke-virtual {p3}, Lkq0;->d()Lk01;

    move-result-object v0

    invoke-interface {v0, p1}, Lk01;->a(Z)V

    invoke-virtual {p3, p1}, Lkq0;->g(Z)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lev0;

    invoke-direct {v0, p0, p2, p3}, Lev0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;ILkq0;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic L(ILkq0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->K(ILkq0;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0539

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->l:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseSettingFragment;->m:Lnu0;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method
