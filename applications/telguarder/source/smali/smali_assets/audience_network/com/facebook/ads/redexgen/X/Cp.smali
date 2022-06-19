.class public final Lcom/facebook/ads/redexgen/X/Cp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Cq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Results"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:[I

.field public final A03:[I

.field public final A04:[J

.field public final A05:[J


# direct methods
.method public constructor <init>([J[II[J[IJ)V
    .locals 0

    .line 25577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25578
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cp;->A04:[J

    .line 25579
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Cp;->A03:[I

    .line 25580
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Cp;->A00:I

    .line 25581
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Cp;->A05:[J

    .line 25582
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Cp;->A02:[I

    .line 25583
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/Cp;->A01:J

    .line 25584
    return-void
.end method

.method public synthetic constructor <init>([J[II[J[IJLcom/facebook/ads/redexgen/X/Co;)V
    .locals 0

    .line 25585
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/Cp;-><init>([J[II[J[IJ)V

    return-void
.end method
