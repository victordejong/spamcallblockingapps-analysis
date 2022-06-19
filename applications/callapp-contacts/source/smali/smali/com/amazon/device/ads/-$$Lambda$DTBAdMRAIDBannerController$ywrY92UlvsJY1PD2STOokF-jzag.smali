.class public final synthetic Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$ywrY92UlvsJY1PD2STOokF-jzag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$ywrY92UlvsJY1PD2STOokF-jzag;->f$0:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    iput p2, p0, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$ywrY92UlvsJY1PD2STOokF-jzag;->f$1:I

    iput-boolean p3, p0, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$ywrY92UlvsJY1PD2STOokF-jzag;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$ywrY92UlvsJY1PD2STOokF-jzag;->f$0:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    iget v1, p0, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$ywrY92UlvsJY1PD2STOokF-jzag;->f$1:I

    iget-boolean v2, p0, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$ywrY92UlvsJY1PD2STOokF-jzag;->f$2:Z

    invoke-static {v0, v1, v2, p1}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->lambda$ywrY92UlvsJY1PD2STOokF-jzag(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;IZLandroid/animation/ValueAnimator;)V

    return-void
.end method
