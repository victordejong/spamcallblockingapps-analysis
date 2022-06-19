.class public Lcom/millennialmedia/internal/video/LightboxView$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->animateFromExpandedToDefault()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/LightboxView;

.field public final synthetic val$wasExpanding:Z


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    iput-boolean p2, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->val$wasExpanding:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$2000(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$100(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/MMVideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/millennialmedia/internal/video/MMVideoView;->mute()V

    :cond_0
    iget-boolean p1, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->val$wasExpanding:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$900(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;->onCollapsed()V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$1000(Lcom/millennialmedia/internal/video/LightboxView;)Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;->video:Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;

    iget-object v1, v1, Lcom/millennialmedia/internal/adcontrollers/LightboxController$Video;->trackingEvents:Ljava/util/Map;

    sget-object v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;->videoCollapse:Lcom/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {p1, v1, v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$1100(Lcom/millennialmedia/internal/video/LightboxView;Ljava/util/List;I)V

    :cond_1
    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$11;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1, v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$1302(Lcom/millennialmedia/internal/video/LightboxView;Z)Z

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
