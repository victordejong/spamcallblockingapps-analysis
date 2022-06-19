.class public final Lcom/facebook/ads/redexgen/X/DF;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodeBook"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:Z

.field public final A04:[J


# direct methods
.method public constructor <init>(II[JIZ)V
    .locals 0

    .line 26497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26498
    iput p1, p0, Lcom/facebook/ads/redexgen/X/DF;->A00:I

    .line 26499
    iput p2, p0, Lcom/facebook/ads/redexgen/X/DF;->A01:I

    .line 26500
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/DF;->A04:[J

    .line 26501
    iput p4, p0, Lcom/facebook/ads/redexgen/X/DF;->A02:I

    .line 26502
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/DF;->A03:Z

    .line 26503
    return-void
.end method
