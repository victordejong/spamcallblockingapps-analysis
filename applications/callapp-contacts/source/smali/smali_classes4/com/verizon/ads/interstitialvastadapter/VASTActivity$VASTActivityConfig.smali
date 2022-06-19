.class Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;
.super Lcom/verizon/ads/support/VASActivity$VASActivityConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/interstitialvastadapter/VASTActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VASTActivityConfig"
.end annotation


# instance fields
.field private a:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;


# direct methods
.method constructor <init>(Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;->a:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;)Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/verizon/ads/interstitialvastadapter/VASTActivity$VASTActivityConfig;->a:Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    return-object p0
.end method
