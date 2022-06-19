.class public final Lcom/facebook/ads/redexgen/X/UT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/FZ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClippingSampleStream"
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/FZ;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Bs;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/UT;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bs;Lcom/facebook/ads/redexgen/X/FZ;)V
    .locals 0

    .line 56420
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Lcom/facebook/ads/redexgen/X/Bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56421
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/UT;->A01:Lcom/facebook/ads/redexgen/X/FZ;

    .line 56422
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "25IwN6vurur"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "97g8a"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FlobbDaQeCDrbXUd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "t0wgdhxZu68gZJHrAPtQvgOkww6OAx74"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "S69jtIfQwyOXLwAtBQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yHzb2pVoyfmtZXEoyXIjBMNrSY7dgVg4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "UNsFsMVZq9UB3bPBj2qHsGXbL4ldTF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ebti9AGlEvdyqgg296sQOf3f2kmfx1gP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/UT;->A03:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 1

    .line 56423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A00:Z

    .line 56424
    return-void
.end method

.method public final A8B()Z
    .locals 4

    .line 56425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Lcom/facebook/ads/redexgen/X/Bs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bs;->A04()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UT;->A01:Lcom/facebook/ads/redexgen/X/FZ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/UT;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/UT;->A03:[Ljava/lang/String;

    const-string v1, "L0OkBHFntq1"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "QVzJE"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/FZ;->A8B()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A91()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56426
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A01:Lcom/facebook/ads/redexgen/X/FZ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/FZ;->A91()V

    .line 56427
    return-void
.end method

.method public final ACn(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/Vt;Z)I
    .locals 12

    .line 56428
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Lcom/facebook/ads/redexgen/X/Bs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bs;->A04()Z

    move-result v0

    const/4 v8, -0x3

    if-eqz v0, :cond_0

    .line 56429
    return v8

    .line 56430
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A00:Z

    const/4 v6, 0x4

    const/4 v5, -0x4

    if-eqz v0, :cond_2

    .line 56431
    invoke-virtual {p2, v6}, Lcom/facebook/ads/redexgen/X/BV;->A02(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/UT;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 56432
    sget-object v2, Lcom/facebook/ads/redexgen/X/UT;->A03:[Ljava/lang/String;

    const-string v1, "haE6Q2KuHzz6BdwuYpaSOsDgZcK9OkAZ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v5

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 56433
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A01:Lcom/facebook/ads/redexgen/X/FZ;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/FZ;->ACn(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/Vt;Z)I

    move-result v7

    .line 56434
    .local p0, "result":I
    const/4 v9, -0x5

    const-wide/high16 v10, -0x8000000000000000L

    if-ne v7, v9, :cond_7

    .line 56435
    iget-object v7, p1, Lcom/facebook/ads/redexgen/X/AD;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 56436
    .local p1, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/Format;->A06:I

    if-nez v0, :cond_3

    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/Format;->A07:I

    if-eqz v0, :cond_4

    .line 56437
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Lcom/facebook/ads/redexgen/X/Bs;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Bs;->A01:J

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    cmp-long v0, v1, v5

    if-eqz v0, :cond_6

    const/4 v3, 0x0

    .line 56438
    .local p2, "encoderDelay":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Lcom/facebook/ads/redexgen/X/Bs;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Bs;->A00:J

    cmp-long v0, v1, v10

    if-eqz v0, :cond_5

    .line 56439
    .local p3, "encoderPadding":I
    :goto_1
    invoke-virtual {v7, v3, v4}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H(II)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/AD;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 56440
    .end local p2    # "encoderDelay":I
    .end local p3    # "encoderPadding":I
    :cond_4
    return v9

    .line 56441
    :cond_5
    iget v4, v7, Lcom/facebook/ads/internal/exoplayer2/Format;->A07:I

    goto :goto_1

    .line 56442
    :cond_6
    iget v3, v7, Lcom/facebook/ads/internal/exoplayer2/Format;->A06:I

    goto :goto_0

    .line 56443
    .end local p1    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Lcom/facebook/ads/redexgen/X/Bs;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Bs;->A00:J

    cmp-long v2, v0, v10

    if-eqz v2, :cond_a

    if-ne v7, v5, :cond_8

    iget-wide v3, p2, Lcom/facebook/ads/redexgen/X/Vt;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Lcom/facebook/ads/redexgen/X/Bs;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Bs;->A00:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_9

    :cond_8
    if-ne v7, v8, :cond_a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Lcom/facebook/ads/redexgen/X/Bs;

    .line 56444
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bs;->A5m()J

    move-result-wide v1

    cmp-long v0, v1, v10

    if-nez v0, :cond_a

    .line 56445
    :cond_9
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Vt;->A07()V

    .line 56446
    invoke-virtual {p2, v6}, Lcom/facebook/ads/redexgen/X/BV;->A02(I)V

    .line 56447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A00:Z

    .line 56448
    return v5

    .line 56449
    :cond_a
    return v7
.end method

.method public final AE3(J)I
    .locals 1

    .line 56450
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A02:Lcom/facebook/ads/redexgen/X/Bs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bs;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56451
    const/4 v0, -0x3

    return v0

    .line 56452
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UT;->A01:Lcom/facebook/ads/redexgen/X/FZ;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/FZ;->AE3(J)I

    move-result v0

    return v0
.end method
