.class public Lcom/millennialmedia/internal/video/LightboxView$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->crossFadeCurtainWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/video/LightboxView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$14;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$14;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {p1}, Lcom/millennialmedia/internal/video/LightboxView;->access$600(Lcom/millennialmedia/internal/video/LightboxView;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$14;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    const-wide/16 v0, 0x9c4

    const-wide/16 v2, 0x1f4

    invoke-static {p1, v0, v1, v2, v3}, Lcom/millennialmedia/internal/video/LightboxView;->access$500(Lcom/millennialmedia/internal/video/LightboxView;JJ)V

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$14;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/millennialmedia/internal/video/LightboxView;->access$1302(Lcom/millennialmedia/internal/video/LightboxView;Z)Z

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
