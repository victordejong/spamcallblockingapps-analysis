.class Lcom/verizon/ads/inlineplacement/InlineAdFactory$RefreshAdRequest;
.super Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/inlineplacement/InlineAdFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefreshAdRequest"
.end annotation


# instance fields
.field h:Lcom/verizon/ads/inlineplacement/InlineAdView;


# direct methods
.method constructor <init>(Lcom/verizon/ads/inlineplacement/InlineAdView;)V
    .locals 0

    .line 1046
    invoke-direct {p0}, Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdRequest;-><init>()V

    .line 1048
    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$RefreshAdRequest;->h:Lcom/verizon/ads/inlineplacement/InlineAdView;

    .line 1049
    sget-object p1, Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;->VIEW:Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;

    iput-object p1, p0, Lcom/verizon/ads/inlineplacement/InlineAdFactory$RefreshAdRequest;->d:Lcom/verizon/ads/inlineplacement/InlineAdFactory$AdDestination;

    return-void
.end method
