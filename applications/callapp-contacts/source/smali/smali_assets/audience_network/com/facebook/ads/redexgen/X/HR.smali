.class public Lcom/facebook/ads/redexgen/X/HR;
.super Ljava/io/IOException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/bM;
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

    .line 36408
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 36409
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/HR;->A01:Lcom/facebook/ads/redexgen/X/HM;

    .line 36410
    iput p3, p0, Lcom/facebook/ads/redexgen/X/HR;->A00:I

    .line 36411
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/HM;I)V
    .locals 0

    .line 36412
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 36413
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/HR;->A01:Lcom/facebook/ads/redexgen/X/HM;

    .line 36414
    iput p3, p0, Lcom/facebook/ads/redexgen/X/HR;->A00:I

    .line 36415
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/HM;I)V
    .locals 0

    .line 36416
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36417
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/HR;->A01:Lcom/facebook/ads/redexgen/X/HM;

    .line 36418
    iput p4, p0, Lcom/facebook/ads/redexgen/X/HR;->A00:I

    .line 36419
    return-void
.end method
