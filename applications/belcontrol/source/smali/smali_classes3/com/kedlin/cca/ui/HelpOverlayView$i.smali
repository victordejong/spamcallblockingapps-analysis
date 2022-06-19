.class public Lcom/kedlin/cca/ui/HelpOverlayView$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kedlin/cca/ui/HelpOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/ViewGroup;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Boolean;

.field public f:I

.field public g:I

.field public h:Lcom/kedlin/cca/ui/HelpOverlayView$h;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:[I

.field public final synthetic p:Lcom/kedlin/cca/ui/HelpOverlayView;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/HelpOverlayView;Landroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/kedlin/cca/ui/HelpOverlayView$h;IILjava/lang/Boolean;I)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView$i;->p:Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView$i;->d:Ljava/lang/Boolean;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView$i;->o:[I

    iput-object p2, p0, Lcom/kedlin/cca/ui/HelpOverlayView$i;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/kedlin/cca/ui/HelpOverlayView$i;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/kedlin/cca/ui/HelpOverlayView$i;->b:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/kedlin/cca/ui/HelpOverlayView$i;->h:Lcom/kedlin/cca/ui/HelpOverlayView$h;

    iput p6, p0, Lcom/kedlin/cca/ui/HelpOverlayView$i;->f:I

    iput p7, p0, Lcom/kedlin/cca/ui/HelpOverlayView$i;->g:I

    iput-object p8, p0, Lcom/kedlin/cca/ui/HelpOverlayView$i;->d:Ljava/lang/Boolean;

    iput p9, p0, Lcom/kedlin/cca/ui/HelpOverlayView$i;->m:I

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/kedlin/cca/ui/HelpOverlayView$i;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/kedlin/cca/ui/HelpOverlayView$i;->o:[I

    aget v1, v3, v1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    aget v2, v0, v1

    aget v1, v3, v1

    if-ne v2, v1, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView$i;->o:[I

    iget-object v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView$i;->p:Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-static {v0}, Lcom/kedlin/cca/ui/HelpOverlayView;->i(Lcom/kedlin/cca/ui/HelpOverlayView;)V

    return-void
.end method
