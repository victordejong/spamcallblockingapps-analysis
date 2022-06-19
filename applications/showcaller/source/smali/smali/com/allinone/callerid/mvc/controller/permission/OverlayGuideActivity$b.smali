.class Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b;
.super Ljava/lang/Object;
.source "OverlayGuideActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b;->a:Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b;->a:Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;->X(Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b;->a:Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;->Y(Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;)Landroid/widget/Switch;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b;->a:Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;->X(Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b$a;-><init>(Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
