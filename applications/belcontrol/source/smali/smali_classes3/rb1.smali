.class public Lrb1;
.super Lyd;
.source ""

# interfaces
.implements Lsb1$b;
.implements Lua1;


# static fields
.field public static final r:Ljava/lang/String;


# instance fields
.field public n:Ljava/lang/String;

.field public o:Lsb1;

.field public p:Landroid/app/Activity;

.field public q:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lqb1;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_HELP_OVERLAY_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrb1;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lyd;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lrb1;->n:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lrb1;->q:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic p(Lrb1;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lrb1;->t(I)V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public B()V
    .locals 0

    return-void
.end method

.method public C()V
    .locals 0

    return-void
.end method

.method public D(Lsb1;)V
    .locals 0

    return-void
.end method

.method public E(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lsb1$c;)V
    .locals 0

    iget-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public b(Ljava/lang/Object;Z)V
    .locals 0

    return-void
.end method

.method public c(Lsb1$d;Z)V
    .locals 0

    return-void
.end method

.method public f(Lta1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g(Lsb1$c;)V
    .locals 0

    return-void
.end method

.method public h(Lta1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/kedlin/cca/core/service/BackgroundWorker;->b(Landroidx/fragment/app/FragmentActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lrb1;->p:Landroid/app/Activity;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lrb1;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Loe1;->w(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lrb1;->r:Ljava/lang/String;

    check-cast v0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

    invoke-virtual {v0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->getHelpCode()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    sget-object v0, Lrb1;->r:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    instance-of v1, v0, Lyb1;

    if-eqz v1, :cond_2

    check-cast v0, Lyb1;

    iget-object v1, p0, Lrb1;->n:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lyb1;->e(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    invoke-static {v0}, Lbc1;->c(Landroid/content/Context;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lbc1;->b(Z)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lyd;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Lsb1;

    invoke-direct {p1, p0}, Lsb1;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Lrb1;->o:Lsb1;

    invoke-virtual {p1, p0}, Lsb1;->l(Lsb1$b;)Lsb1;

    iget-object p1, p0, Lrb1;->o:Lsb1;

    invoke-virtual {p0, p1}, Lrb1;->D(Lsb1;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lrb1;->x(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, -0x1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lrb1;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    if-eqz p1, :cond_1

    if-eq v0, p2, :cond_1

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lrb1$a;

    invoke-direct {p2, p0, v0}, Lrb1$a;-><init>(Lrb1;I)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method

.method public q(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/16 v3, 0x64

    if-nez p1, :cond_1

    :goto_0
    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Landroid/widget/ListView;->smoothScrollBy(II)V

    goto :goto_1

    :cond_1
    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-lt p1, v2, :cond_2

    iget p1, v1, Landroid/graphics/Rect;->top:I

    if-gt p1, v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final r()V
    .locals 1

    invoke-virtual {p0}, Lrb1;->u()Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lrb1;->s(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;)V

    :cond_0
    return-void
.end method

.method public s(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;)V
    .locals 0

    invoke-virtual {p1}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->Y()V

    invoke-virtual {p1, p0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->setCallingFragment(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0}, Lrb1;->C()V

    return-void
.end method

.method public final t(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->K(Landroid/view/View;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment;->L(Landroid/view/View;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lrb1;->r()V

    return-void
.end method

.method public final u()Lcom/kedlin/cca/ui/HelpOverlayViewContainer;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const v2, 0x7f0a02f6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

    return-object v0

    :cond_2
    return-object v1
.end method

.method public v()Lsb1;
    .locals 1

    iget-object v0, p0, Lrb1;->o:Lsb1;

    return-object v0
.end method

.method public w(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public x(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lrb1;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".FRAGMENT_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrb1;->n:Ljava/lang/String;

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lrb1;->p:Landroid/app/Activity;

    instance-of v1, v0, Lyb1;

    if-eqz v1, :cond_3

    check-cast v0, Lyb1;

    iget-object p1, p0, Lrb1;->n:Ljava/lang/String;

    invoke-interface {v0, p1}, Lyb1;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public y(I)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-lt p1, v0, :cond_1

    if-le p1, v1, :cond_2

    :cond_1
    move p1, v0

    :cond_2
    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-static {v1, p1}, Lle1;->c(Landroid/widget/ListAdapter;I)I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lyd;->l()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final z()Z
    .locals 1

    invoke-virtual {p0}, Lrb1;->u()Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
