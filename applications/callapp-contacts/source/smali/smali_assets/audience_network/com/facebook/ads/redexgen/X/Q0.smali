.class public final Lcom/facebook/ads/redexgen/X/Q0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Q2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadConfig"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/Q1;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Q1;J)V
    .locals 0

    .line 48668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48669
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Q0;->A01:Lcom/facebook/ads/redexgen/X/Q1;

    .line 48670
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Q0;->A00:J

    .line 48671
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Q1;JLcom/facebook/ads/redexgen/X/Pz;)V
    .locals 0

    .line 48672
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Q0;-><init>(Lcom/facebook/ads/redexgen/X/Q1;J)V

    return-void
.end method
