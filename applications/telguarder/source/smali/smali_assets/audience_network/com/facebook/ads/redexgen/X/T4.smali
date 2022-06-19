.class public final Lcom/facebook/ads/redexgen/X/T4;
.super Lcom/facebook/ads/redexgen/X/KQ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Au;->AA6(Lcom/facebook/ads/redexgen/X/Jn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Au;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Jn;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Au;Lcom/facebook/ads/redexgen/X/Jn;)V
    .locals 0

    .line 52975
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T4;->A00:Lcom/facebook/ads/redexgen/X/Au;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/T4;->A01:Lcom/facebook/ads/redexgen/X/Jn;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KQ;-><init>()V

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 3

    .line 52976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A00:Lcom/facebook/ads/redexgen/X/Au;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Au;->A01:Lcom/facebook/ads/NativeAdListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A00:Lcom/facebook/ads/redexgen/X/Au;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Au;->A00:Lcom/facebook/ads/NativeAdBase;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T4;->A01:Lcom/facebook/ads/redexgen/X/Jn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jn;->A00(Lcom/facebook/ads/redexgen/X/Jn;)Lcom/facebook/ads/AdError;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/NativeAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 52977
    return-void
.end method
