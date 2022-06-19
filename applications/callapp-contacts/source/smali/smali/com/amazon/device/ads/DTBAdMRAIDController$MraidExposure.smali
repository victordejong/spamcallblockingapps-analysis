.class Lcom/amazon/device/ads/DTBAdMRAIDController$MraidExposure;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/DTBAdMRAIDController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MraidExposure"
.end annotation


# instance fields
.field a:I

.field b:Landroid/graphics/Rect;

.field final synthetic c:Lcom/amazon/device/ads/DTBAdMRAIDController;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/DTBAdMRAIDController;ILandroid/graphics/Rect;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController$MraidExposure;->c:Lcom/amazon/device/ads/DTBAdMRAIDController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput p2, p0, Lcom/amazon/device/ads/DTBAdMRAIDController$MraidExposure;->a:I

    .line 390
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdMRAIDController$MraidExposure;->b:Landroid/graphics/Rect;

    return-void
.end method
