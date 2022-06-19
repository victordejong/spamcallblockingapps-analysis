.class Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->y0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->v0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->e0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->Y(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->Y(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-static {}, Lcom/allinone/callerid/util/h1;->p()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->z0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->k0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->x0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->k0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->A0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->k0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->Z(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->l0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->w0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f$a;-><init>(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$f;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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
