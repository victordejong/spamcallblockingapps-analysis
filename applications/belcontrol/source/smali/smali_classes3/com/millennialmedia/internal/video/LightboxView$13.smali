.class public Lcom/millennialmedia/internal/video/LightboxView$13;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->animateToExpand(Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/LightboxView;

.field public final synthetic val$wasCollapsing:Z


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    iput-boolean p2, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->val$wasCollapsing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->unmute()V

    :cond_0
    iget-boolean p1, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->val$wasCollapsing:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$900(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;->onClicked()V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$900(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;->onExpanded()V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$1000(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object v0, v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->videoExpand:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/millennialmedia/internal/video/LightboxView;->access$1100(Lcom/millennialmedia/internal/video/LightboxView;Ljava/util/List;I)V

    :cond_1
    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$13;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$2200(Lcom/millennialmedia/internal/video/LightboxView;)V

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
