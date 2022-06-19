.class Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$r;
.super Ljava/lang/Object;
.source "ShowTipActivityNew.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$r;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$r;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->Z(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f0801f2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$r;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->Z(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {}, Lcom/allinone/callerid/util/h1;->p()Landroid/view/animation/Animation;

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
