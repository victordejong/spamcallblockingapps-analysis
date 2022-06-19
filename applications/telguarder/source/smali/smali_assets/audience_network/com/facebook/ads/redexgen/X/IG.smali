.class public final Lcom/facebook/ads/redexgen/X/IG;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/II;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PpsData"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 37885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37886
    iput p1, p0, Lcom/facebook/ads/redexgen/X/IG;->A00:I

    .line 37887
    iput p2, p0, Lcom/facebook/ads/redexgen/X/IG;->A01:I

    .line 37888
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/IG;->A02:Z

    .line 37889
    return-void
.end method
