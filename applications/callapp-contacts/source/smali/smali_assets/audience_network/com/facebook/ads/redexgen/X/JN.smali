.class public final Lcom/facebook/ads/redexgen/X/JN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;
.implements Lcom/facebook/ads/AdView$AdViewLoadConfig;


# instance fields
.field public A00:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/4v;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 0

    .line 39993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39994
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JN;->A01:Lcom/facebook/ads/redexgen/X/4v;

    .line 39995
    return-void
.end method


# virtual methods
.method public final A00()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 39996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JN;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/Ad$LoadAdConfig;
    .locals 1

    .line 39997
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JN;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/AdView$AdViewLoadConfig;
    .locals 0

    .line 39998
    return-object p0
.end method

.method public final withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;
    .locals 1

    .line 39999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JN;->A01:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4v;->A0D(Lcom/facebook/ads/AdListener;)V

    .line 40000
    return-object p0
.end method

.method public final bridge synthetic withBid(Ljava/lang/String;)Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .locals 1

    .line 40001
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/JN;->withBid(Ljava/lang/String;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withBid(Ljava/lang/String;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;
    .locals 0

    .line 40002
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JN;->A00:Ljava/lang/String;

    .line 40003
    return-object p0
.end method
