.class public Lcom/kedlin/cca/ui/HelpOverlayViewContainer$a;
.super Landroidx/viewpager/widget/ViewPager$l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/ui/HelpOverlayViewContainer;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer$a;->a:Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$l;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager$l;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer$a;->a:Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

    invoke-static {v0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->S(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer$a;->a:Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

    invoke-static {v0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->S(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer$a;->a:Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

    invoke-static {v1}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->T(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kedlin/cca/ui/HelpOverlayView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/kedlin/cca/ui/HelpOverlayView;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer$a;->a:Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

    invoke-static {v0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->S(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kedlin/cca/ui/HelpOverlayView;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/kedlin/cca/ui/HelpOverlayView;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer$a;->a:Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

    invoke-static {v0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->T(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;)I

    move-result v0

    iget-object v1, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer$a;->a:Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

    invoke-static {v1, p1}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->U(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;I)I

    iget-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayViewContainer$a;->a:Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

    invoke-static {p1, v0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->V(Lcom/kedlin/cca/ui/HelpOverlayViewContainer;I)V

    return-void
.end method
