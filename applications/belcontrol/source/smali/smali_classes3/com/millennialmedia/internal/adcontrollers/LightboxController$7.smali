.class public Lcom/millennialmedia/internal/adcontrollers/LightboxController$7;
.super Landroid/view/animation/Animation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adcontrollers/LightboxController;->attachLightboxView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

.field public final synthetic val$displaySize:Landroid/graphics/Point;

.field public final synthetic val$distanceToDefaultPosY:I


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adcontrollers/LightboxController;Landroid/graphics/Point;I)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$7;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    iput-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$7;->val$displaySize:Landroid/graphics/Point;

    iput p3, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$7;->val$distanceToDefaultPosY:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$7;->val$displaySize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$7;->val$distanceToDefaultPosY:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$7;->val$displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    iget v0, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$7;->val$distanceToDefaultPosY:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    sub-float p1, p2, p1

    :goto_0
    iget-object p2, p0, Lcom/millennialmedia/internal/adcontrollers/LightboxController$7;->this$0:Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-static {p2}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;->access$000(Lcom/millennialmedia/internal/adcontrollers/LightboxController;)Lcom/millennialmedia/internal/video/LightboxView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    return-void
.end method
