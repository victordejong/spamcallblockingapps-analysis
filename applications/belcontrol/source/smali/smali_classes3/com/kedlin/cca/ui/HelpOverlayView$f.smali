.class public Lcom/kedlin/cca/ui/HelpOverlayView$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/HelpOverlayView;->t()Ljava/lang/Runnable;
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

    iput-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView$f;->a:Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView$f;->a:Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-static {v0}, Lcom/kedlin/cca/ui/HelpOverlayView;->g(Lcom/kedlin/cca/ui/HelpOverlayView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a026a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v1, p0, Lcom/kedlin/cca/ui/HelpOverlayView$f;->a:Lcom/kedlin/cca/ui/HelpOverlayView;

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

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->B(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->e(Landroid/view/View;)V

    :cond_0
    return-void
.end method
