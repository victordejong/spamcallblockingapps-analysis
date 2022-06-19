.class public Lcom/kedlin/cca/ui/HelpOverlayView$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/HelpOverlayView;->l(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:F

.field public final synthetic b:Lcom/kedlin/cca/ui/HelpOverlayView;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/HelpOverlayView;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView$c;->b:Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView$c;->a:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/kedlin/cca/ui/HelpOverlayView$c;->a:F

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    add-float/2addr p1, p2

    iget p2, p0, Lcom/kedlin/cca/ui/HelpOverlayView$c;->a:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x40a00000    # 5.0f

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/kedlin/cca/ui/HelpOverlayView$c;->b:Lcom/kedlin/cca/ui/HelpOverlayView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->performClick()Z

    :cond_1
    return v0
.end method
