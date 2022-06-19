.class public Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapterPlugin;
.super Lcom/verizon/ads/Plugin;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapterPlugin$InterstitialVASTContentFilter;
    }
.end annotation


# static fields
.field private static final i:Lcom/verizon/ads/Logger;

.field private static final j:Ljava/net/URI;

.field private static final k:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapterPlugin;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapterPlugin;->i:Lcom/verizon/ads/Logger;

    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapterPlugin;->j:Ljava/net/URI;

    .line 30
    sput-object v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapterPlugin;->k:Ljava/net/URL;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 59
    sget-object v6, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapterPlugin;->j:Ljava/net/URI;

    sget-object v7, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapterPlugin;->k:Ljava/net/URL;

    const-string v2, "com.verizon.ads.interstitialvastadapter"

    const-string v3, "Interstitial VAST Adapter"

    const-string v4, "1.3.0-f061f79"

    const-string v5, "Verizon"

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/verizon/ads/Plugin;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/net/URL;I)V

    return-void
.end method


# virtual methods
.method public final onPluginDisabled()V
    .locals 0

    return-void
.end method

.method public final onPluginEnabled()V
    .locals 0

    return-void
.end method

.method public final prepare()Z
    .locals 3

    .line 68
    sget-object v0, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapterPlugin;->i:Lcom/verizon/ads/Logger;

    const-string v1, "Preparing InterstitialVASTAdapterPlugin"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 70
    const-class v0, Lcom/verizon/ads/interstitialplacement/InterstitialAd;

    const-class v1, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapter;

    new-instance v2, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapterPlugin$InterstitialVASTContentFilter;

    invoke-direct {v2}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapterPlugin$InterstitialVASTContentFilter;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/verizon/ads/interstitialvastadapter/InterstitialVASTAdapterPlugin;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/verizon/ads/ContentFilter;)V

    const/4 v0, 0x1

    return v0
.end method
