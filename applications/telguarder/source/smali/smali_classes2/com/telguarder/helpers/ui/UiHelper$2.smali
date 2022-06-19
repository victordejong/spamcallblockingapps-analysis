.class final Lcom/telguarder/helpers/ui/UiHelper$2;
.super Ljava/lang/Object;
.source "UiHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/ui/UiHelper;->simulateLinkEffect(Landroid/view/View;IILcom/telguarder/helpers/ui/UiHelper$LinkEffectCompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field cancelClick:Z

.field lastY:F

.field final synthetic val$colorDown:I

.field final synthetic val$colorUp:I

.field final synthetic val$completion:Lcom/telguarder/helpers/ui/UiHelper$LinkEffectCompletionHandler;


# direct methods
.method constructor <init>(ILcom/telguarder/helpers/ui/UiHelper$LinkEffectCompletionHandler;I)V
    .locals 0

    .line 315
    iput p1, p0, Lcom/telguarder/helpers/ui/UiHelper$2;->val$colorDown:I

    iput-object p2, p0, Lcom/telguarder/helpers/ui/UiHelper$2;->val$completion:Lcom/telguarder/helpers/ui/UiHelper$LinkEffectCompletionHandler;

    iput p3, p0, Lcom/telguarder/helpers/ui/UiHelper$2;->val$colorUp:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 317
    iput-boolean p1, p0, Lcom/telguarder/helpers/ui/UiHelper$2;->cancelClick:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 320
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 335
    :cond_0
    iget v0, p0, Lcom/telguarder/helpers/ui/UiHelper$2;->lastY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    .line 337
    check-cast p1, Landroid/widget/TextView;

    iget p2, p0, Lcom/telguarder/helpers/ui/UiHelper$2;->val$colorUp:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    iput-boolean v1, p0, Lcom/telguarder/helpers/ui/UiHelper$2;->cancelClick:Z

    .line 340
    :cond_1
    iget-object p1, p0, Lcom/telguarder/helpers/ui/UiHelper$2;->val$completion:Lcom/telguarder/helpers/ui/UiHelper$LinkEffectCompletionHandler;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/telguarder/helpers/ui/UiHelper$LinkEffectCompletionHandler;->actionMove()V

    goto :goto_0

    .line 328
    :cond_2
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    iget v0, p0, Lcom/telguarder/helpers/ui/UiHelper$2;->val$colorUp:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    iget-boolean p2, p0, Lcom/telguarder/helpers/ui/UiHelper$2;->cancelClick:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/telguarder/helpers/ui/UiHelper$2;->val$completion:Lcom/telguarder/helpers/ui/UiHelper$LinkEffectCompletionHandler;

    if-eqz p2, :cond_4

    .line 330
    invoke-interface {p2}, Lcom/telguarder/helpers/ui/UiHelper$LinkEffectCompletionHandler;->actionUp()V

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 322
    :cond_3
    check-cast p1, Landroid/widget/TextView;

    iget v0, p0, Lcom/telguarder/helpers/ui/UiHelper$2;->val$colorDown:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/telguarder/helpers/ui/UiHelper$2;->lastY:F

    const/4 p1, 0x0

    .line 324
    iput-boolean p1, p0, Lcom/telguarder/helpers/ui/UiHelper$2;->cancelClick:Z

    .line 325
    iget-object p1, p0, Lcom/telguarder/helpers/ui/UiHelper$2;->val$completion:Lcom/telguarder/helpers/ui/UiHelper$LinkEffectCompletionHandler;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/telguarder/helpers/ui/UiHelper$LinkEffectCompletionHandler;->actionDown()V

    :cond_4
    :goto_0
    return v1
.end method
