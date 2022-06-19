.class public final Lcom/facebook/ads/redexgen/X/ZP;
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

    .line 64546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/DA;)V
    .locals 0

    .line 64547
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZP;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4S()Lcom/facebook/ads/redexgen/X/CP;
    .locals 3

    .line 64548
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yt;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Yt;-><init>(J)V

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

    .line 64549
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final AEA(J)J
    .locals 2

    .line 64550
    const-wide/16 v0, 0x0

    return-wide v0
.end method
