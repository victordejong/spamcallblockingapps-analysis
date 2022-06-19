.class Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b$a;
.super Ljava/lang/Object;
.source "OverlayGuideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b$a;->d:Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b$a;->d:Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b;->a:Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;->Y(Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b$a;->d:Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b;->a:Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;->X(Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b$a;->d:Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b;->a:Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;->X(Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b$a;->d:Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity$b;->a:Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;

    invoke-static {v1}, Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;->Z(Lcom/allinone/callerid/mvc/controller/permission/OverlayGuideActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
