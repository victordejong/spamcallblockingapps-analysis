.class Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;
.super Ljava/lang/Object;
.source "PhoneCallWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private initialTouchY:F

.field private initialY:I

.field final synthetic this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 336
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1000(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Lcom/venmo/view/TooltipView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/venmo/view/TooltipView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1000(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Lcom/venmo/view/TooltipView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/venmo/view/TooltipView;->setVisibility(I)V

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1100(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x50

    if-ne v0, v2, :cond_2

    .line 349
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1100(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->initialTouchY:F

    sub-float/2addr p2, v3

    float-to-int p2, p2

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1100(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->initialTouchY:F

    sub-float/2addr p2, v3

    float-to-int p2, p2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 353
    :goto_0
    iget-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-virtual {p2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->isWidgetVisible()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 354
    :try_start_0
    iget-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1400(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {p2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1300(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1100(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Error during call widget move"

    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return v1

    .line 342
    :cond_4
    iget p2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->initialY:I

    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1100(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq p2, v0, :cond_5

    .line 343
    iget-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1100(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1100(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {p2, p1, v0, v2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1200(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;II)V

    :cond_5
    return v1

    .line 338
    :cond_6
    iget-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1100(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->initialY:I

    .line 339
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$5;->initialTouchY:F

    return v1
.end method
