.class Lcom/verizon/ads/nativeplacement/NativeAdFactory$3;
.super Lcom/verizon/ads/support/SafeRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdFactoryListener;

.field final synthetic b:Lcom/verizon/ads/nativeplacement/NativeAd;

.field final synthetic c:Lcom/verizon/ads/nativeplacement/NativeAdFactory;


# direct methods
.method constructor <init>(Lcom/verizon/ads/nativeplacement/NativeAdFactory;Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdFactoryListener;Lcom/verizon/ads/nativeplacement/NativeAd;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$3;->c:Lcom/verizon/ads/nativeplacement/NativeAdFactory;

    iput-object p2, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$3;->a:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdFactoryListener;

    iput-object p3, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$3;->b:Lcom/verizon/ads/nativeplacement/NativeAd;

    invoke-direct {p0}, Lcom/verizon/ads/support/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 6

    .line 850
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$3;->a:Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdFactoryListener;

    iget-object v1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$3;->c:Lcom/verizon/ads/nativeplacement/NativeAdFactory;

    iget-object v2, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$3;->b:Lcom/verizon/ads/nativeplacement/NativeAd;

    invoke-interface {v0, v1, v2}, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdFactoryListener;->onLoaded(Lcom/verizon/ads/nativeplacement/NativeAdFactory;Lcom/verizon/ads/nativeplacement/NativeAd;)V

    .line 851
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$3;->b:Lcom/verizon/ads/nativeplacement/NativeAd;

    invoke-static {}, Lcom/verizon/ads/nativeplacement/NativeAdFactory;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 1521
    sget-object v3, Lcom/verizon/ads/nativeplacement/NativeAd;->a:Landroid/os/Handler;

    new-instance v4, Lcom/verizon/ads/nativeplacement/NativeAd$2;

    invoke-direct {v4, v0, v1, v2}, Lcom/verizon/ads/nativeplacement/NativeAd$2;-><init>(Lcom/verizon/ads/nativeplacement/NativeAd;J)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
