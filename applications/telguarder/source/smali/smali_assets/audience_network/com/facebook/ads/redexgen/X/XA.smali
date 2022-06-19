.class public final Lcom/facebook/ads/redexgen/X/XA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/X6;->A0H()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/X6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/X6;)V
    .locals 0

    .line 64954
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XA;->A00:Lcom/facebook/ads/redexgen/X/X6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 3

    .line 64955
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/XA;->A00:Lcom/facebook/ads/redexgen/X/X6;

    .line 64956
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/72;->A02(J)J

    move-result-wide v0

    .line 64957
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/6V;->A07(J)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
