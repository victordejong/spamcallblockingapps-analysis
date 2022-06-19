.class public Lcom/applovin/impl/sdk/nativeAd/c;
.super Lcom/applovin/impl/sdk/e/h;
.source "SourceFile"


# instance fields
.field private final c:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/d;Ljava/lang/String;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;Lcom/applovin/impl/sdk/l;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/applovin/impl/sdk/e/h;-><init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/impl/sdk/network/j;Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V

    iput-object p3, p0, Lcom/applovin/impl/sdk/nativeAd/c;->c:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/e/a;
    .locals 3

    new-instance v0, Lcom/applovin/impl/sdk/nativeAd/d;

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/c;->c:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-direct {v0, p1, v1, v2}, Lcom/applovin/impl/sdk/nativeAd/d;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;Lcom/applovin/impl/sdk/l;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/e/h;->a(I)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/c;->c:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;->onNativeAdLoadFailed(I)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/h;->i(Lcom/applovin/impl/sdk/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/h;->j(Lcom/applovin/impl/sdk/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
