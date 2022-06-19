.class public final Lcom/facebook/ads/redexgen/X/Av;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Tf;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/Tf;",
        "Ljava/util/Comparator<",
        "Lcom/facebook/ads/redexgen/X/Hl;",
        ">;"
    }
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public final A01:J

.field public final A02:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/facebook/ads/redexgen/X/Hl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Av;->A01()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 22103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22104
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Av;->A01:J

    .line 22105
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A02:Ljava/util/TreeSet;

    .line 22106
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Hl;Lcom/facebook/ads/redexgen/X/Hl;)I
    .locals 5

    .line 22107
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/Hl;->A00:J

    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/Hl;->A00:J

    sub-long/2addr v3, v0

    .line 22108
    .local p0, "lastAccessTimestampDelta":J
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 22109
    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/Hl;->A00(Lcom/facebook/ads/redexgen/X/Hl;)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Av;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Av;->A03:[Ljava/lang/String;

    const-string v1, "xoO2oO4x2R3mzZg1o9HEfYvAO55kFuna"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "bMOVMzd3DDFBVHkUNg9SGhfzd6Pc0PXE"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    .line 22110
    :cond_1
    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/Hl;->A00:J

    iget-wide v1, p2, Lcom/facebook/ads/redexgen/X/Hl;->A00:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jvAP9B4DnIVRIVzMpDEqZA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "PHOVVN9aPs1tqycedFNeQrLyQUrjWGYF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mFOHeZ9OMeZV3C7Ulu44m5QhIvMEF6ED"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "F1vYGN4zZX9ZYZWogPcbOF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "j34L6wLicR37ja8cHCTMzVReua5BxXoO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KnYlJ7gx36mKn7hsR4guMowPY0JZriob"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hXnIEOjZPRtpuHQ0kdBBFGvlSegs3hvY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5Hi6kRh9tDr3ofR2cId1Tauw3LftwTm0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Av;->A03:[Ljava/lang/String;

    return-void
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/Hh;J)V
    .locals 5

    .line 22111
    :catch_0
    :goto_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Av;->A00:J

    add-long/2addr v3, p2

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Av;->A01:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A02:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22112
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A02:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Hl;

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->ADA(Lcom/facebook/ads/redexgen/X/Hl;)V

    goto :goto_0

    .line 22113
    :cond_0
    return-void
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Hf; {:try_start_0 .. :try_end_0} :catch_0
.end method


# virtual methods
.method public final ABf(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/Hl;)V
    .locals 4

    .line 22114
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A02:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 22115
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Av;->A00:J

    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/Hl;->A01:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Av;->A00:J

    .line 22116
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Av;->A02(Lcom/facebook/ads/redexgen/X/Hh;J)V

    .line 22117
    return-void
.end method

.method public final ABg(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/Hl;)V
    .locals 4

    .line 22118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Av;->A02:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 22119
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Av;->A00:J

    iget-wide v0, p2, Lcom/facebook/ads/redexgen/X/Hl;->A01:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Av;->A00:J

    .line 22120
    return-void
.end method

.method public final ABh(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/Hl;Lcom/facebook/ads/redexgen/X/Hl;)V
    .locals 0

    .line 22121
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Av;->ABg(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 22122
    invoke-virtual {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/Av;->ABf(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/Hl;)V

    .line 22123
    return-void
.end method

.method public final ABi(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/String;JJ)V
    .locals 0

    .line 22124
    invoke-direct {p0, p1, p5, p6}, Lcom/facebook/ads/redexgen/X/Av;->A02(Lcom/facebook/ads/redexgen/X/Hh;J)V

    .line 22125
    return-void
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 22126
    check-cast p1, Lcom/facebook/ads/redexgen/X/Hl;

    check-cast p2, Lcom/facebook/ads/redexgen/X/Hl;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Av;->A00(Lcom/facebook/ads/redexgen/X/Hl;Lcom/facebook/ads/redexgen/X/Hl;)I

    move-result v0

    return v0
.end method
