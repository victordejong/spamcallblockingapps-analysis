.class public Lcom/applovin/impl/sdk/nativeAd/b;
.super Lcom/applovin/impl/sdk/nativeAd/c;
.source "SourceFile"


# instance fields
.field private final c:Lcom/applovin/impl/sdk/ad/c;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/c;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;Lcom/applovin/impl/sdk/l;)V
    .locals 2

    const-string v0, "adtoken_zone"

    invoke-static {v0}, Lcom/applovin/impl/sdk/ad/d;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v0

    const-string v1, "TaskFetchNativeTokenAd"

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/applovin/impl/sdk/nativeAd/c;-><init>(Lcom/applovin/impl/sdk/ad/d;Ljava/lang/String;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdLoadListener;Lcom/applovin/impl/sdk/l;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->c:Lcom/applovin/impl/sdk/ad/c;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->c:Lcom/applovin/impl/sdk/ad/c;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adtoken"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/b;->c:Lcom/applovin/impl/sdk/ad/c;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/c;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adtoken_prefix"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
