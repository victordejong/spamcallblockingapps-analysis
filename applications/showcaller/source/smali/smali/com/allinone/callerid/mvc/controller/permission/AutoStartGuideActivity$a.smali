.class Lcom/allinone/callerid/mvc/controller/permission/AutoStartGuideActivity$a;
.super Ljava/lang/Object;
.source "AutoStartGuideActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/permission/AutoStartGuideActivity;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/permission/AutoStartGuideActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/permission/AutoStartGuideActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/permission/AutoStartGuideActivity$a;->a:Lcom/allinone/callerid/mvc/controller/permission/AutoStartGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/permission/AutoStartGuideActivity$a;->a:Lcom/allinone/callerid/mvc/controller/permission/AutoStartGuideActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/permission/AutoStartGuideActivity;->X(Lcom/allinone/callerid/mvc/controller/permission/AutoStartGuideActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/permission/AutoStartGuideActivity$a;->a:Lcom/allinone/callerid/mvc/controller/permission/AutoStartGuideActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/permission/AutoStartGuideActivity;->W(Lcom/allinone/callerid/mvc/controller/permission/AutoStartGuideActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

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
