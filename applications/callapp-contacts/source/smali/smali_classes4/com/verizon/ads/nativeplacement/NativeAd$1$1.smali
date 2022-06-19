.class Lcom/verizon/ads/nativeplacement/NativeAd$1$1;
.super Lcom/verizon/ads/support/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/nativeplacement/NativeAd$1;->onClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/nativeplacement/NativeAd$1;


# direct methods
.method constructor <init>(Lcom/verizon/ads/nativeplacement/NativeAd$1;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1$1;->a:Lcom/verizon/ads/nativeplacement/NativeAd$1;

    invoke-direct {p0}, Lcom/verizon/ads/support/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1$1;->a:Lcom/verizon/ads/nativeplacement/NativeAd$1;

    iget-object v0, v0, Lcom/verizon/ads/nativeplacement/NativeAd$1;->a:Lcom/verizon/ads/nativeplacement/NativeAd;

    iget-object v0, v0, Lcom/verizon/ads/nativeplacement/NativeAd;->b:Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1$1;->a:Lcom/verizon/ads/nativeplacement/NativeAd$1;

    iget-object v0, v0, Lcom/verizon/ads/nativeplacement/NativeAd$1;->a:Lcom/verizon/ads/nativeplacement/NativeAd;

    iget-object v0, v0, Lcom/verizon/ads/nativeplacement/NativeAd;->b:Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;

    iget-object v1, p0, Lcom/verizon/ads/nativeplacement/NativeAd$1$1;->a:Lcom/verizon/ads/nativeplacement/NativeAd$1;

    iget-object v1, v1, Lcom/verizon/ads/nativeplacement/NativeAd$1;->a:Lcom/verizon/ads/nativeplacement/NativeAd;

    invoke-interface {v0, v1}, Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;->onClosed(Lcom/verizon/ads/nativeplacement/NativeAd;)V

    :cond_0
    return-void
.end method
