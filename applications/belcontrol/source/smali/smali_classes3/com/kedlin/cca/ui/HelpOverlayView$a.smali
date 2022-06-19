.class public Lcom/kedlin/cca/ui/HelpOverlayView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/HelpOverlayView;->u(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView$a;->a:Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView$a;->a:Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-static {p1}, Lcom/kedlin/cca/ui/HelpOverlayView;->a(Lcom/kedlin/cca/ui/HelpOverlayView;)Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView$a;->a:Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-static {p1}, Lcom/kedlin/cca/ui/HelpOverlayView;->a(Lcom/kedlin/cca/ui/HelpOverlayView;)Lcom/kedlin/cca/ui/HelpOverlayViewContainer;

    move-result-object p1

    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView$a;->a:Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-virtual {p1, v0}, Lcom/kedlin/cca/ui/HelpOverlayViewContainer;->a0(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView$a;->a:Lcom/kedlin/cca/ui/HelpOverlayView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/kedlin/cca/ui/HelpOverlayView;->setVisibility(I)V

    return-void
.end method
