.class Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/nativeplacement/NativeAdFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NativeAdRequest"
.end annotation


# instance fields
.field final a:Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;

.field b:Z

.field c:Z

.field d:Z

.field e:Lcom/verizon/ads/Bid;

.field f:Lcom/verizon/ads/nativeplacement/NativeAdFactory$AdDestination;

.field g:Lcom/verizon/ads/AdSession;

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/verizon/ads/AdSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/verizon/ads/Bid;ZLcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;)V
    .locals 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->h:Ljava/util/List;

    .line 197
    iput-boolean p2, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->d:Z

    .line 198
    iput-object p3, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->a:Lcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;

    .line 199
    iput-object p1, p0, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;->e:Lcom/verizon/ads/Bid;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, p1, v0}, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;-><init>(ZLcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;)V

    return-void
.end method

.method constructor <init>(ZLcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, v0, p1, p2}, Lcom/verizon/ads/nativeplacement/NativeAdFactory$NativeAdRequest;-><init>(Lcom/verizon/ads/Bid;ZLcom/verizon/ads/nativeplacement/NativeAd$NativeAdListener;)V

    return-void
.end method
