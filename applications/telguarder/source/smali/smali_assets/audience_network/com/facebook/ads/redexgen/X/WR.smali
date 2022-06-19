.class public final Lcom/facebook/ads/redexgen/X/WR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8H;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/WN;->A76(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8D;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/WN;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WN;Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 0

    .line 64362
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WR;->A01:Lcom/facebook/ads/redexgen/X/WN;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/WR;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A6V()Ljava/lang/String;
    .locals 1

    .line 64363
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KK;->A04(Lcom/facebook/ads/redexgen/X/8D;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A7z()Z
    .locals 1

    .line 64364
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    return v0
.end method
