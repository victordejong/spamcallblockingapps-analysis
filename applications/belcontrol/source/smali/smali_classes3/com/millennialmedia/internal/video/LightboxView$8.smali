.class public Lcom/millennialmedia/internal/video/LightboxView$8;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;->animateToDefault(Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public distanceToDefault:F

.field public final synthetic this$0:Lcom/millennialmedia/internal/video/LightboxView;

.field public translateX:F

.field public final synthetic val$defaultPosition:Landroid/graphics/Point;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$8;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    iput-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$8;->val$defaultPosition:Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$8;->val$defaultPosition:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/millennialmedia/internal/video/LightboxView$8;->translateX:F

    iget v0, p0, Lcom/millennialmedia/internal/video/LightboxView$8;->distanceToDefault:F

    mul-float p1, p1, v0

    add-float/2addr p1, p2

    :goto_0
    iget-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$8;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    iput p1, p0, Lcom/millennialmedia/internal/video/LightboxView$8;->width:I

    iget-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$8;->this$0:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getTranslationX()F

    move-result p1

    iput p1, p0, Lcom/millennialmedia/internal/video/LightboxView$8;->translateX:F

    iget-object p2, p0, Lcom/millennialmedia/internal/video/LightboxView$8;->val$defaultPosition:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/millennialmedia/internal/video/LightboxView$8;->distanceToDefault:F

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
