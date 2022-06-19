.class public final Lcom/facebook/ads/redexgen/X/A6;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaSourceRefreshInfo"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Af;

.field public final A01:Lcom/facebook/ads/redexgen/X/FE;

.field public final A02:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FE;Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;)V
    .locals 0

    .line 20822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20823
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/A6;->A01:Lcom/facebook/ads/redexgen/X/FE;

    .line 20824
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/A6;->A00:Lcom/facebook/ads/redexgen/X/Af;

    .line 20825
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/A6;->A02:Ljava/lang/Object;

    .line 20826
    return-void
.end method
