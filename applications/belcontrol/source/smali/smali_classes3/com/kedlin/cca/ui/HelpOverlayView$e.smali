.class public Lcom/kedlin/cca/ui/HelpOverlayView$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/HelpOverlayView;->A()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/ui/HelpOverlayView;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/HelpOverlayView;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView$e;->a:Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView$e;->a:Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-static {v0}, Lcom/kedlin/cca/ui/HelpOverlayView;->g(Lcom/kedlin/cca/ui/HelpOverlayView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a026a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Lcom/kedlin/cca/ui/HelpOverlayView$e;->a:Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-static {v1}, Lcom/kedlin/cca/ui/HelpOverlayView;->g(Lcom/kedlin/cca/ui/HelpOverlayView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0392

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->H(Landroid/view/View;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView$e;->a:Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-static {v0}, Lcom/kedlin/cca/ui/HelpOverlayView;->h(Lcom/kedlin/cca/ui/HelpOverlayView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kedlin/cca/ui/HelpOverlayView$e;->a:Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-virtual {v1}, Lcom/kedlin/cca/ui/HelpOverlayView;->t()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
