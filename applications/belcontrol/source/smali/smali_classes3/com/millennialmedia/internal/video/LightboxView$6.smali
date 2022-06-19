.class public Lcom/millennialmedia/internal/video/LightboxView$6;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->animateToGone(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public distanceToOffscreen:F

.field public final synthetic this$0:Lcom/millennialmedia/internal/video/LightboxView;

.field public translateX:F

.field public width:I


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$6;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    iget p1, p0, Lcom/millennialmedia/internal/video/LightboxView$6;->width:I

    mul-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/millennialmedia/internal/video/LightboxView$6;->translateX:F

    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView$6;->distanceToOffscreen:F

    mul-float p1, p1, v0

    sub-float p1, p2, p1

    :goto_0
    iget-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$6;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    iput p1, p0, Lcom/millennialmedia/internal/video/LightboxView$6;->width:I

    iget-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$6;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getTranslationX()F

    move-result p2

    iput p2, p0, Lcom/millennialmedia/internal/video/LightboxView$6;->translateX:F

    int-to-float p1, p1

    add-float/2addr p2, p1

    iput p2, p0, Lcom/millennialmedia/internal/video/LightboxView$6;->distanceToOffscreen:F

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
