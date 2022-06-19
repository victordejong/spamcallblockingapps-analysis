.class public Lcom/millennialmedia/internal/video/LightboxView$16$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/millennialmedia/internal/video/LightboxView$16;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/LightboxView$16;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$16$1;->this$1:Lcom/millennialmedia/internal/video/LightboxView$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$16$1;->this$1:Lcom/millennialmedia/internal/video/LightboxView$16;

    iget-object p1, p1, Lcom/millennialmedia/internal/video/LightboxView$16;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$2302(Lcom/millennialmedia/internal/video/LightboxView;Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
