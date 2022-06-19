.class public final Lcom/facebook/ads/redexgen/X/Lt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Se;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlurTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:[I


# direct methods
.method public constructor <init>([IIIIIII)V
    .locals 0

    .line 43467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43468
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Lt;->A06:[I

    .line 43469
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Lt;->A05:I

    .line 43470
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Lt;->A01:I

    .line 43471
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Lt;->A02:I

    .line 43472
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Lt;->A04:I

    .line 43473
    iput p6, p0, Lcom/facebook/ads/redexgen/X/Lt;->A00:I

    .line 43474
    iput p7, p0, Lcom/facebook/ads/redexgen/X/Lt;->A03:I

    .line 43475
    return-void
.end method

.method private final A00()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lt;->A06:[I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Lt;->A05:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Lt;->A01:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Lt;->A02:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Lt;->A04:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Lt;->A00:I

    iget v6, p0, Lcom/facebook/ads/redexgen/X/Lt;->A03:I

    invoke-static/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Se;->A02([IIIIIII)V

    .line 43477
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43478
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Lt;->A00()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
