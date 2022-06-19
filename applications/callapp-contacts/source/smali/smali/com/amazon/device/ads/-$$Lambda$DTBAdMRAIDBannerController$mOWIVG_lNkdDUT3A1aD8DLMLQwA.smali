.class public final synthetic Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$mOWIVG_lNkdDUT3A1aD8DLMLQwA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$mOWIVG_lNkdDUT3A1aD8DLMLQwA;->f$0:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    iput-boolean p2, p0, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$mOWIVG_lNkdDUT3A1aD8DLMLQwA;->f$1:Z

    iput p3, p0, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$mOWIVG_lNkdDUT3A1aD8DLMLQwA;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$mOWIVG_lNkdDUT3A1aD8DLMLQwA;->f$0:Lcom/amazon/device/ads/DTBAdMRAIDBannerController;

    iget-boolean v1, p0, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$mOWIVG_lNkdDUT3A1aD8DLMLQwA;->f$1:Z

    iget v2, p0, Lcom/amazon/device/ads/-$$Lambda$DTBAdMRAIDBannerController$mOWIVG_lNkdDUT3A1aD8DLMLQwA;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/DTBAdMRAIDBannerController;->lambda$mOWIVG_lNkdDUT3A1aD8DLMLQwA(Lcom/amazon/device/ads/DTBAdMRAIDBannerController;ZI)V

    return-void
.end method
