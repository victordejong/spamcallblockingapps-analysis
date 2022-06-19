.class Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a$a;->b:Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a$a;->b:Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a;->a:Lcom/callerid/block/mvc/controller/OverlayGuideActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/OverlayGuideActivity;->S(Lcom/callerid/block/mvc/controller/OverlayGuideActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a$a;->b:Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a;

    iget-object v1, v1, Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a;->a:Lcom/callerid/block/mvc/controller/OverlayGuideActivity;

    invoke-static {v1}, Lcom/callerid/block/mvc/controller/OverlayGuideActivity;->R(Lcom/callerid/block/mvc/controller/OverlayGuideActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a$a;->b:Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/OverlayGuideActivity$a;->a:Lcom/callerid/block/mvc/controller/OverlayGuideActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/OverlayGuideActivity;->Q(Lcom/callerid/block/mvc/controller/OverlayGuideActivity;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
