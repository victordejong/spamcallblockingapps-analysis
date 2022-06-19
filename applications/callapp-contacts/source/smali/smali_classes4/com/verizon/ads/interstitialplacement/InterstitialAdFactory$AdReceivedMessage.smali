.class Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdReceivedMessage"
.end annotation


# instance fields
.field final a:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

.field final b:Lcom/verizon/ads/AdSession;

.field final c:Lcom/verizon/ads/ErrorInfo;

.field final d:Z


# direct methods
.method constructor <init>(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;Z)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    .line 156
    iput-object p2, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage;->b:Lcom/verizon/ads/AdSession;

    .line 157
    iput-object p3, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage;->c:Lcom/verizon/ads/ErrorInfo;

    .line 158
    iput-boolean p4, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$AdReceivedMessage;->d:Z

    return-void
.end method
