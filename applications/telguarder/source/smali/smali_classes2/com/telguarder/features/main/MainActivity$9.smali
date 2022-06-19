.class Lcom/telguarder/features/main/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/main/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/main/MainActivity;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/telguarder/features/main/MainActivity$9;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 591
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 592
    iget-object p2, p0, Lcom/telguarder/features/main/MainActivity$9;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {p2}, Lcom/telguarder/features/main/MainActivity;->access$100(Lcom/telguarder/features/main/MainActivity;)V

    .line 593
    iget-object p2, p0, Lcom/telguarder/features/main/MainActivity$9;->this$0:Lcom/telguarder/features/main/MainActivity;

    const v0, 0x7f050048

    invoke-static {p2, v0}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 594
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 595
    iget-object p2, p0, Lcom/telguarder/features/main/MainActivity$9;->this$0:Lcom/telguarder/features/main/MainActivity;

    const v0, 0x7f05004a

    invoke-static {p2, v0}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 596
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
