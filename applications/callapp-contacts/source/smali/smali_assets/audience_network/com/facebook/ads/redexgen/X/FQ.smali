.class public final Lcom/facebook/ads/redexgen/X/FQ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/FS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadEventInfo"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:J

.field public final A03:Lcom/facebook/ads/redexgen/X/HM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HM;JJJ)V
    .locals 0

    .line 32394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32395
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FQ;->A03:Lcom/facebook/ads/redexgen/X/HM;

    .line 32396
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/FQ;->A01:J

    .line 32397
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/FQ;->A02:J

    .line 32398
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/FQ;->A00:J

    .line 32399
    return-void
.end method
