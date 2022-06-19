.class Lcom/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig;
.super Lcom/verizon/ads/support/VASActivity$VASActivityConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/interstitialwebadapter/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WebViewActivityConfig"
.end annotation


# instance fields
.field private a:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;


# direct methods
.method constructor <init>(Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig;->a:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig;)Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/verizon/ads/interstitialwebadapter/WebViewActivity$WebViewActivityConfig;->a:Lcom/verizon/ads/interstitialwebadapter/InterstitialWebAdapter;

    return-object p0
.end method
