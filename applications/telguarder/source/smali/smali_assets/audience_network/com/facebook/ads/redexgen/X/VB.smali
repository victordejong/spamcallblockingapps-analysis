.class public final Lcom/facebook/ads/redexgen/X/VB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/D9;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnseekableOggSeeker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/DA;)V
    .locals 0

    .line 58843
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VB;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4P()Lcom/facebook/ads/redexgen/X/CP;
    .locals 3

    .line 58844
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(J)V

    return-object v0
.end method

.method public final ACl(Lcom/facebook/ads/redexgen/X/CH;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 58845
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final AEC(J)J
    .locals 2

    .line 58846
    const-wide/16 v0, 0x0

    return-wide v0
.end method
