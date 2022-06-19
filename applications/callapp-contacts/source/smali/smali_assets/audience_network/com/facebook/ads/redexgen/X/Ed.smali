.class public final Lcom/facebook/ads/redexgen/X/Ed;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/offline/DownloadManager$TaskState$State;
    }
.end annotation


# instance fields
.field public final A00:F

.field public final A01:I

.field public final A02:I

.field public final A03:J

.field public final A04:Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

.field public final A05:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(ILcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;IFJLjava/lang/Throwable;)V
    .locals 0

    .line 29550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29551
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ed;->A02:I

    .line 29552
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ed;->A04:Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    .line 29553
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Ed;->A01:I

    .line 29554
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Ed;->A00:F

    .line 29555
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/Ed;->A03:J

    .line 29556
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Ed;->A05:Ljava/lang/Throwable;

    .line 29557
    return-void
.end method

.method public synthetic constructor <init>(ILcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;IFJLjava/lang/Throwable;Lcom/facebook/ads/redexgen/X/ET;)V
    .locals 0

    .line 29558
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/Ed;-><init>(ILcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;IFJLjava/lang/Throwable;)V

    return-void
.end method
