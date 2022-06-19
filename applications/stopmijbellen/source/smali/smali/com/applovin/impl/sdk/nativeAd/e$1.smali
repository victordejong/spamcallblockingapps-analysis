.class Lcom/applovin/impl/sdk/nativeAd/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/nativeAd/e;->b(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;

.field public final synthetic b:Lcom/applovin/impl/sdk/nativeAd/e;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/nativeAd/e;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/e$1;->b:Lcom/applovin/impl/sdk/nativeAd/e;

    iput-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/e$1;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e$1;->b:Lcom/applovin/impl/sdk/nativeAd/e;

    const-string v1, "Preparing native ad view components..."

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Lcom/applovin/impl/sdk/nativeAd/e;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e$1;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->setUpNativeAdViewComponents()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e$1;->b:Lcom/applovin/impl/sdk/nativeAd/e;

    const-string v1, "Successfully prepared native ad view components"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/e;->b(Lcom/applovin/impl/sdk/nativeAd/e;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e$1;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->getAdEventTracker()Lcom/applovin/impl/sdk/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/b;->c()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e$1;->b:Lcom/applovin/impl/sdk/nativeAd/e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/nativeAd/e;->b(Lcom/applovin/impl/sdk/nativeAd/e;)Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e$1;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;

    invoke-interface {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;->onNativeAdLoaded(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAd;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/e$1;->b:Lcom/applovin/impl/sdk/nativeAd/e;

    const-string v2, "Failed to prepare native ad view components"

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Lcom/applovin/impl/sdk/nativeAd/e;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/e$1;->b:Lcom/applovin/impl/sdk/nativeAd/e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/nativeAd/e;->a(Lcom/applovin/impl/sdk/nativeAd/e;)V

    return-void
.end method
