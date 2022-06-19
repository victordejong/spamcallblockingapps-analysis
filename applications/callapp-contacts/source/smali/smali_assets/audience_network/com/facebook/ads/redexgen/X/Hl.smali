.class public Lcom/facebook/ads/redexgen/X/Hl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/redexgen/X/Hl;",
        ">;"
    }
.end annotation


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:J

.field public final A03:Ljava/io/File;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A04:Ljava/lang/String;

.field public final A05:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJLjava/io/File;)V
    .locals 1
    .param p8    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36642
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hl;->A04:Ljava/lang/String;

    .line 36643
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Hl;->A02:J

    .line 36644
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/Hl;->A01:J

    .line 36645
    if-eqz p8, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hl;->A05:Z

    .line 36646
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/Hl;->A03:Ljava/io/File;

    .line 36647
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/Hl;->A00:J

    .line 36648
    return-void

    .line 36649
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/Hl;)I
    .locals 5
    .param p1    # Lcom/facebook/ads/redexgen/X/Hl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36650
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hl;->A04:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36651
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hl;->A04:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 36652
    :cond_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Hl;->A02:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A02:J

    sub-long/2addr v3, v0

    .line 36653
    .local p0, "startOffsetDiff":J
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final A01()Z
    .locals 1

    .line 36654
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hl;->A05:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final A02()Z
    .locals 5

    .line 36655
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Hl;->A01:J

    const-wide/16 v1, -0x1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36656
    check-cast p1, Lcom/facebook/ads/redexgen/X/Hl;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Hl;->A00(Lcom/facebook/ads/redexgen/X/Hl;)I

    move-result v0

    return v0
.end method
