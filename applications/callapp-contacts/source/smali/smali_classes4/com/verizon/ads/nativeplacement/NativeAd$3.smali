.class Lcom/verizon/ads/nativeplacement/NativeAd$3;
.super Lcom/verizon/ads/support/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/nativeplacement/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/ErrorInfo;

.field final synthetic b:Lcom/verizon/ads/nativeplacement/NativeAd;


# direct methods
.method constructor <init>(Lcom/verizon/ads/nativeplacement/NativeAd;Lcom/verizon/ads/ErrorInfo;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAd$3;->b:Lcom/verizon/ads/nativeplacement/NativeAd;

    iput-object p2, p0, Lcom/verizon/ads/nativeplacement/NativeAd$3;->a:Lcom/verizon/ads/ErrorInfo;

    invoke-direct {p0}, Lcom/verizon/ads/support/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 3

    .line 597
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd$3;->b:Lcom/verizon/ads/nativeplacement/NativeAd;

    iget-object v0, v0, Lcom/verizon/ads/nativeplacement/NativeAd;->b:Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd$3;->b:Lcom/verizon/ads/nativeplacement/NativeAd;

    iget-object v0, v0, Lcom/verizon/ads/nativeplacement/NativeAd;->b:Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;

    iget-object v1, p0, Lcom/verizon/ads/nativeplacement/NativeAd$3;->b:Lcom/verizon/ads/nativeplacement/NativeAd;

    iget-object v2, p0, Lcom/verizon/ads/nativeplacement/NativeAd$3;->a:Lcom/verizon/ads/ErrorInfo;

    invoke-interface {v0, v1, v2}, Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;->onError(Lcom/verizon/ads/nativeplacement/NativeAd;Lcom/verizon/ads/ErrorInfo;)V

    :cond_0
    return-void
.end method
