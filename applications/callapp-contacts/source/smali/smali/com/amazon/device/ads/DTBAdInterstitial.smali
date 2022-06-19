.class public Lcom/amazon/device/ads/DTBAdInterstitial;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static b:Lcom/amazon/device/ads/DTBAdInterstitial;


# instance fields
.field a:Lcom/amazon/device/ads/DTBAdView;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdInterstitialListener;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdInterstitial;->c:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/amazon/device/ads/DTBAdView;

    invoke-direct {v0, p1, p2}, Lcom/amazon/device/ads/DTBAdView;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdInterstitialListener;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdInterstitial;->a:Lcom/amazon/device/ads/DTBAdView;

    .line 39
    sput-object p0, Lcom/amazon/device/ads/DTBAdInterstitial;->b:Lcom/amazon/device/ads/DTBAdInterstitial;

    return-void
.end method

.method static a()Lcom/amazon/device/ads/DTBAdInterstitial;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/device/ads/DTBAdInterstitial;->b:Lcom/amazon/device/ads/DTBAdInterstitial;

    return-object v0
.end method
