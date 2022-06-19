.class Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$3;
.super Ljava/lang/Object;
.source "PhoneEventBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->setMenuContainerTouchListener()V
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

    .line 208
    iput-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$3;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 211
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 212
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$3;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {p1, v1}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->access$402(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;F)F

    .line 213
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$3;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->access$502(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;F)F

    .line 214
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$3;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenu:Lcom/capricorn/ArcMenu;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$3;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {p1}, Lcom/capricorn/ArcMenu;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$3;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    iget-object p1, p1, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->mArcMenu:Lcom/capricorn/ArcMenu;

    invoke-virtual {p1, v0}, Lcom/capricorn/ArcMenu;->closeArcMenu(Z)V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 218
    :cond_1
    invoke-static {}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->getInstance()Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity$3;->this$0:Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;->access$600(Lcom/telguarder/features/phoneEventHistory/PhoneEventBaseActivity;I)I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    invoke-virtual {p1, v1, v2, p2}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;->handleTouchEvent(III)V

    return v0
.end method
