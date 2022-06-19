.class public final Lcom/facebook/ads/redexgen/X/W1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BG;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/W0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PositionTrackerListener"
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/W0;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/W1;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/W0;)V
    .locals 0

    .line 63044
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:Lcom/facebook/ads/redexgen/X/W0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/W0;Lcom/facebook/ads/redexgen/X/BJ;)V
    .locals 0

    .line 63045
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/W1;-><init>(Lcom/facebook/ads/redexgen/X/W0;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/W1;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x57

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x9b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/W1;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x79t
        0x7bt
        -0x26t
        0xet
        -0x3t
        0x2t
        0x8t
        -0x13t
        0xbt
        -0x6t
        -0x4t
        0x4t
        -0x2ft
        -0x11t
        -0xat
        -0x9t
        -0x6t
        -0xft
        -0xat
        -0x11t
        -0x58t
        -0xft
        -0xbt
        -0x8t
        -0x9t
        -0x5t
        -0x5t
        -0xft
        -0x16t
        -0xct
        0x1t
        -0x58t
        -0xct
        -0x17t
        -0x6t
        -0x11t
        -0x13t
        -0x58t
        -0x17t
        -0x3t
        -0x14t
        -0xft
        -0x9t
        -0x58t
        -0xct
        -0x17t
        -0x4t
        -0x13t
        -0xat
        -0x15t
        0x1t
        -0x3et
        -0x58t
        0x18t
        0x35t
        0x3at
        0x37t
        0x2et
        0x34t
        0x3at
        0x38t
        -0x1bt
        0x26t
        0x3at
        0x29t
        0x2et
        0x34t
        -0x1bt
        0x39t
        0x2et
        0x32t
        0x2at
        0x38t
        0x39t
        0x26t
        0x32t
        0x35t
        -0x1bt
        -0x13t
        0x2bt
        0x37t
        0x26t
        0x32t
        0x2at
        -0x1bt
        0x35t
        0x34t
        0x38t
        0x2et
        0x39t
        0x2et
        0x34t
        0x33t
        -0x1bt
        0x32t
        0x2et
        0x38t
        0x32t
        0x26t
        0x39t
        0x28t
        0x2dt
        -0x12t
        -0x1t
        -0x1bt
        0x17t
        0x34t
        0x39t
        0x36t
        0x2dt
        0x33t
        0x39t
        0x37t
        -0x1ct
        0x25t
        0x39t
        0x28t
        0x2dt
        0x33t
        -0x1ct
        0x38t
        0x2dt
        0x31t
        0x29t
        0x37t
        0x38t
        0x25t
        0x31t
        0x34t
        -0x1ct
        -0x14t
        0x37t
        0x3dt
        0x37t
        0x38t
        0x29t
        0x31t
        -0x1ct
        0x27t
        0x30t
        0x33t
        0x27t
        0x2ft
        -0x1ct
        0x31t
        0x2dt
        0x37t
        0x31t
        0x25t
        0x38t
        0x27t
        0x2ct
        -0x13t
        -0x2t
        -0x1ct
    .end array-data
.end method


# virtual methods
.method public final AAW(J)V
    .locals 4

    .line 63046
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc

    const/16 v1, 0x29

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    const/16 v1, 0xa

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63047
    return-void
.end method

.method public final ABE(JJJJ)V
    .locals 4

    .line 63048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x35

    const/16 v1, 0x34

    const/16 v0, 0x6e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x4

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A00(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:Lcom/facebook/ads/redexgen/X/W0;

    .line 63049
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W0;->A0B(Lcom/facebook/ads/redexgen/X/W0;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:Lcom/facebook/ads/redexgen/X/W0;

    .line 63050
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W0;->A0C(Lcom/facebook/ads/redexgen/X/W0;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63051
    .local p0, "message":Ljava/lang/String;
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/W0;->A0q:Z

    if-nez v0, :cond_0

    .line 63052
    const/4 v2, 0x2

    const/16 v1, 0xa

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63053
    return-void

    .line 63054
    :cond_0
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/BM;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/BM;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/BJ;)V

    throw v0
.end method

.method public final ABm(JJJJ)V
    .locals 4

    .line 63055
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x69

    const/16 v1, 0x32

    const/16 v0, 0x6d

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x4

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A00(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:Lcom/facebook/ads/redexgen/X/W0;

    .line 63056
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W0;->A0B(Lcom/facebook/ads/redexgen/X/W0;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:Lcom/facebook/ads/redexgen/X/W0;

    .line 63057
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W0;->A0C(Lcom/facebook/ads/redexgen/X/W0;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63058
    .local p0, "message":Ljava/lang/String;
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/W0;->A0q:Z

    if-nez v0, :cond_0

    .line 63059
    const/4 v2, 0x2

    const/16 v1, 0xa

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W1;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63060
    return-void

    .line 63061
    :cond_0
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/BM;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/BM;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/BJ;)V

    throw v0
.end method

.method public final ABt(IJ)V
    .locals 6

    .line 63062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:Lcom/facebook/ads/redexgen/X/W0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W0;->A0H(Lcom/facebook/ads/redexgen/X/W0;)Lcom/facebook/ads/redexgen/X/BA;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63063
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:Lcom/facebook/ads/redexgen/X/W0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W0;->A0A(Lcom/facebook/ads/redexgen/X/W0;)J

    move-result-wide v0

    sub-long/2addr v4, v0

    .line 63064
    .local p0, "elapsedSinceLastFeedMs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W1;->A00:Lcom/facebook/ads/redexgen/X/W0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W0;->A0H(Lcom/facebook/ads/redexgen/X/W0;)Lcom/facebook/ads/redexgen/X/BA;

    move-result-object v0

    move-wide v2, p2

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/BA;->ABu(IJJ)V

    .line 63065
    .end local p0    # "elapsedSinceLastFeedMs":J
    :cond_0
    return-void
.end method
