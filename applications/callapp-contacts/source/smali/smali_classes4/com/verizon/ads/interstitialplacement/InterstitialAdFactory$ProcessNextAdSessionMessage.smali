.class Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$ProcessNextAdSessionMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessNextAdSessionMessage"
.end annotation


# instance fields
.field final a:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;


# direct methods
.method constructor <init>(Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;)V
    .locals 0

    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 986
    iput-object p1, p0, Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$ProcessNextAdSessionMessage;->a:Lcom/verizon/ads/interstitialplacement/InterstitialAdFactory$InterstitialAdRequest;

    return-void
.end method
