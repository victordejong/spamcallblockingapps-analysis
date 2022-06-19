.class Lcom/telguarder/features/main/MainActivity$5;
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

    .line 458
    iput-object p1, p0, Lcom/telguarder/features/main/MainActivity$5;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 461
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 462
    check-cast p1, Landroid/widget/ImageButton;

    const p2, 0x7f0700bb

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 463
    iget-object p1, p0, Lcom/telguarder/features/main/MainActivity$5;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {p1}, Lcom/telguarder/features/main/MainActivity;->access$100(Lcom/telguarder/features/main/MainActivity;)V

    .line 464
    iget-object p1, p0, Lcom/telguarder/features/main/MainActivity$5;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {p1}, Lcom/telguarder/features/main/MainActivity;->access$500(Lcom/telguarder/features/main/MainActivity;)V

    .line 465
    iget-object p1, p0, Lcom/telguarder/features/main/MainActivity$5;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {p1}, Lcom/telguarder/features/main/MainActivity;->access$200(Lcom/telguarder/features/main/MainActivity;)V

    .line 466
    iget-object p1, p0, Lcom/telguarder/features/main/MainActivity$5;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {p1}, Lcom/telguarder/features/main/MainActivity;->access$400(Lcom/telguarder/features/main/MainActivity;)V

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 468
    iget-object p2, p0, Lcom/telguarder/features/main/MainActivity$5;->this$0:Lcom/telguarder/features/main/MainActivity;

    invoke-static {p2, p1}, Lcom/telguarder/features/phoneNumberBlocker/BlockListActivity;->openBlockList(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
