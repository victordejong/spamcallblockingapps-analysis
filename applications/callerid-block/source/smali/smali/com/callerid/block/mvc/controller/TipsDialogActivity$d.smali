.class Lcom/callerid/block/mvc/controller/TipsDialogActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/TipsDialogActivity;->l0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/mvc/controller/TipsDialogActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/TipsDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d;->b:Lcom/callerid/block/mvc/controller/TipsDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d;->b:Lcom/callerid/block/mvc/controller/TipsDialogActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/TipsDialogActivity;->Z(Lcom/callerid/block/mvc/controller/TipsDialogActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0801a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d;->b:Lcom/callerid/block/mvc/controller/TipsDialogActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/TipsDialogActivity;->a0(Lcom/callerid/block/mvc/controller/TipsDialogActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d;->b:Lcom/callerid/block/mvc/controller/TipsDialogActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/TipsDialogActivity;->b0(Lcom/callerid/block/mvc/controller/TipsDialogActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d;->b:Lcom/callerid/block/mvc/controller/TipsDialogActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/TipsDialogActivity;->c0(Lcom/callerid/block/mvc/controller/TipsDialogActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d;->b:Lcom/callerid/block/mvc/controller/TipsDialogActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/TipsDialogActivity;->d0(Lcom/callerid/block/mvc/controller/TipsDialogActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d;->b:Lcom/callerid/block/mvc/controller/TipsDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010037

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/mvc/controller/TipsDialogActivity;->f0(Lcom/callerid/block/mvc/controller/TipsDialogActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d;->b:Lcom/callerid/block/mvc/controller/TipsDialogActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/TipsDialogActivity;->e0(Lcom/callerid/block/mvc/controller/TipsDialogActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d;->b:Lcom/callerid/block/mvc/controller/TipsDialogActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/TipsDialogActivity;->g0(Lcom/callerid/block/mvc/controller/TipsDialogActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d;->b:Lcom/callerid/block/mvc/controller/TipsDialogActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/TipsDialogActivity;->e0(Lcom/callerid/block/mvc/controller/TipsDialogActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d;->b:Lcom/callerid/block/mvc/controller/TipsDialogActivity;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    const v2, 0x7f010012

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/mvc/controller/TipsDialogActivity;->T(Lcom/callerid/block/mvc/controller/TipsDialogActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d;->b:Lcom/callerid/block/mvc/controller/TipsDialogActivity;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    const v2, 0x7f010013

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/mvc/controller/TipsDialogActivity;->V(Lcom/callerid/block/mvc/controller/TipsDialogActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d;->b:Lcom/callerid/block/mvc/controller/TipsDialogActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/TipsDialogActivity;->S(Lcom/callerid/block/mvc/controller/TipsDialogActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d$a;-><init>(Lcom/callerid/block/mvc/controller/TipsDialogActivity$d;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d;->b:Lcom/callerid/block/mvc/controller/TipsDialogActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/TipsDialogActivity;->U(Lcom/callerid/block/mvc/controller/TipsDialogActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d$b;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d$b;-><init>(Lcom/callerid/block/mvc/controller/TipsDialogActivity$d;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d;->b:Lcom/callerid/block/mvc/controller/TipsDialogActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/TipsDialogActivity;->W(Lcom/callerid/block/mvc/controller/TipsDialogActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d;->b:Lcom/callerid/block/mvc/controller/TipsDialogActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/TipsDialogActivity;->W(Lcom/callerid/block/mvc/controller/TipsDialogActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/TipsDialogActivity$d;->b:Lcom/callerid/block/mvc/controller/TipsDialogActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/TipsDialogActivity;->S(Lcom/callerid/block/mvc/controller/TipsDialogActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
