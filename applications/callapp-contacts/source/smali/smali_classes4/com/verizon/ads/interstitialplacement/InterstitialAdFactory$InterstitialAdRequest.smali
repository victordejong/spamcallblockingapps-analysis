.class Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InterstitialAdRequest"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Lcom/verizon/ads/Bid;

.field d:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdDestination;

.field e:Lcom/verizon/ads/AdSession;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/verizon/ads/AdSession;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->f:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, p1, v0}, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;-><init>(Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;Lcom/verizon/ads/Bid;)V

    return-void
.end method

.method constructor <init>(Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;Lcom/verizon/ads/Bid;)V
    .locals 1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->f:Ljava/util/List;

    .line 205
    iput-object p2, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->c:Lcom/verizon/ads/Bid;

    .line 206
    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;->g:Lcom/verizon/ads/interstitialplacement/InterstitialAd$InterstitialAdListener;

    return-void
.end method
