.class Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$4;
.super Ljava/lang/Object;
.source "PhoneEventBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->setCallLogListTouchListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$4;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 234
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 235
    invoke-static {}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->getInstance()Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$4;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->access$600(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;I)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    invoke-virtual {p1, v1, v2, p2}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->handleTouchEvent(III)V

    return v0

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$4;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenu:Lcom/capricorn/ArcMenu;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$4;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {p1}, Lcom/capricorn/ArcMenu;->isMenuVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 239
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$4;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-static {p1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->access$200(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    :cond_1
    return v0
.end method
