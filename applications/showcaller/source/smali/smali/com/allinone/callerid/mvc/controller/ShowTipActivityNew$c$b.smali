.class Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c$b;
.super Ljava/lang/Object;
.source "ShowTipActivityNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c$b;->d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c$b;->d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->x0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c$b;->d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->x0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static {}, Lcom/allinone/callerid/util/h1;->p()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c$b;->d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->y0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c$b;->d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->y0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {}, Lcom/allinone/callerid/util/h1;->r()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c$b;->d:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$c;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->g0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;I)I

    return-void
.end method
