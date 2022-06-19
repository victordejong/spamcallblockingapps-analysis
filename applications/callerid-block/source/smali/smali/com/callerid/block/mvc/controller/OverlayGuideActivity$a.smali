.class Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/OverlayGuideActivity;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/OverlayGuideActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/OverlayGuideActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a;->a:Lcom/callerid/block/mvc/controller/OverlayGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a;->a:Lcom/callerid/block/mvc/controller/OverlayGuideActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/OverlayGuideActivity;->Q(Lcom/callerid/block/mvc/controller/OverlayGuideActivity;)Landroid/widget/Switch;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a;->a:Lcom/callerid/block/mvc/controller/OverlayGuideActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/OverlayGuideActivity;->S(Lcom/callerid/block/mvc/controller/OverlayGuideActivity;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a$a;-><init>(Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a;)V

    const-wide/16 v1, 0x5dc

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
