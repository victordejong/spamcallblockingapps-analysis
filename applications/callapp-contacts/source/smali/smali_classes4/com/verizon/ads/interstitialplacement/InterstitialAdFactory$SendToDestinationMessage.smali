.class Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$SendToDestinationMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SendToDestinationMessage"
.end annotation


# instance fields
.field final a:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

.field final b:Lcom/verizon/ads/ErrorInfo;

.field final c:Lcom/verizon/ads/AdSession;


# direct methods
.method constructor <init>(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;Lcom/verizon/ads/AdSession;Lcom/verizon/ads/ErrorInfo;)V
    .locals 0

    .line 970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$SendToDestinationMessage;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    .line 973
    iput-object p3, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$SendToDestinationMessage;->b:Lcom/verizon/ads/ErrorInfo;

    .line 974
    iput-object p2, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$SendToDestinationMessage;->c:Lcom/verizon/ads/AdSession;

    return-void
.end method
