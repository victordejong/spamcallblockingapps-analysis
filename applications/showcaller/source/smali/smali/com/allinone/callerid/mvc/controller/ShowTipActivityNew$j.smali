.class Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$j;
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$j;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$j;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->g0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;I)I

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$j;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->i0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$j;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->q0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$j;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->x0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$j;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->x0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-static {}, Lcom/allinone/callerid/util/h1;->p()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$j;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->r0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/ImageView;

    move-result-object p1

    const v1, 0x7f08018a

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$j;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->s0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$j;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100333

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$j;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->y0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$j;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->y0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-static {}, Lcom/allinone/callerid/util/h1;->r()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_0

    .line 10
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 11
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v1, "fake_call_per_show"

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$j;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->t0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew$j;->a:Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;->t0(Lcom/allinone/callerid/mvc/controller/ShowTipActivityNew;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-static {}, Lcom/allinone/callerid/util/h1;->t()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
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
