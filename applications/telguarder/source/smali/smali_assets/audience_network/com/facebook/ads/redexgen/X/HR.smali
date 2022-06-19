.class public Lcom/facebook/ads/redexgen/X/HR;
.super Ljava/io/IOException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/To;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpDataSourceException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/upstream/HttpDataSource$HttpDataSourceException$Type;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/HM;


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/HM;I)V
    .locals 0

    .line 36509
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 36510
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/HR;->A01:Lcom/facebook/ads/redexgen/X/HM;

    .line 36511
    iput p3, p0, Lcom/facebook/ads/redexgen/X/HR;->A00:I

    .line 36512
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/HM;I)V
    .locals 0

    .line 36513
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 36514
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/HR;->A01:Lcom/facebook/ads/redexgen/X/HM;

    .line 36515
    iput p3, p0, Lcom/facebook/ads/redexgen/X/HR;->A00:I

    .line 36516
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/HM;I)V
    .locals 0

    .line 36517
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36518
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/HR;->A01:Lcom/facebook/ads/redexgen/X/HM;

    .line 36519
    iput p4, p0, Lcom/facebook/ads/redexgen/X/HR;->A00:I

    .line 36520
    return-void
.end method
