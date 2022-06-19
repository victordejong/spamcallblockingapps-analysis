.class public final Lcom/facebook/ads/redexgen/X/A9;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeekPosition"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:Lcom/facebook/ads/redexgen/X/Af;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Af;IJ)V
    .locals 0

    .line 20864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20865
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/A9;->A02:Lcom/facebook/ads/redexgen/X/Af;

    .line 20866
    iput p2, p0, Lcom/facebook/ads/redexgen/X/A9;->A00:I

    .line 20867
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/A9;->A01:J

    .line 20868
    return-void
.end method
