.class public final Lcom/facebook/ads/redexgen/X/Pv;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Px;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadConfig"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/Pw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Pw;J)V
    .locals 0

    .line 48703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48704
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pv;->A01:Lcom/facebook/ads/redexgen/X/Pw;

    .line 48705
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Pv;->A00:J

    .line 48706
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Pw;JLcom/facebook/ads/redexgen/X/Pu;)V
    .locals 0

    .line 48707
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Pv;-><init>(Lcom/facebook/ads/redexgen/X/Pw;J)V

    return-void
.end method
