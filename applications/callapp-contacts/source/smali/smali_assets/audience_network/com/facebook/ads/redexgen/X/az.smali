.class public final Lcom/facebook/ads/redexgen/X/az;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GC;


# static fields
.field public static A04:[B


# instance fields
.field public final A00:I

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/ay;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:[J

.field public final A03:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/az;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/ay;",
            ">;)V"
        }
    .end annotation

    .line 68838
    .local v5, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/webvtt/WebvttCue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68839
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/az;->A01:Ljava/util/List;

    .line 68840
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/az;->A00:I

    .line 68841
    iget v0, p0, Lcom/facebook/ads/redexgen/X/az;->A00:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/az;->A02:[J

    .line 68842
    const/4 v6, 0x0

    .local p0, "cueIndex":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/az;->A00:I

    if-ge v6, v0, :cond_0

    .line 68843
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/ay;

    .line 68844
    .local p1, "cue":Lcom/facebook/ads/redexgen/X/ay;
    mul-int/lit8 v4, v6, 0x2

    .line 68845
    .local v0, "arrayIndex":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/az;->A02:[J

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/ay;->A01:J

    aput-wide v0, v2, v4

    .line 68846
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/az;->A02:[J

    add-int/lit8 v2, v4, 0x1

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/ay;->A00:J

    aput-wide v0, v3, v2

    .line 68847
    .end local p1    # "cue":Lcom/facebook/ads/redexgen/X/ay;
    .end local v0    # "arrayIndex":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 68848
    .end local p0    # "cueIndex":I
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/az;->A02:[J

    array-length v0, v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/az;->A03:[J

    .line 68849
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/az;->A03:[J

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 68850
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/az;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7d

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

    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/az;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x5t
    .end array-data
.end method


# virtual methods
.method public final A63(J)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;"
        }
    .end annotation

    .line 68851
    const/4 v3, 0x0

    .line 68852
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/text/Cue;>;"
    const/4 v5, 0x0

    .line 68853
    .local p1, "firstNormalCue":Lcom/facebook/ads/redexgen/X/ay;
    const/4 v2, 0x0

    .line 68854
    .local v2, "normalCueTextBuilder":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x0

    .local v3, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/az;->A00:I

    if-ge v4, v0, :cond_5

    .line 68855
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/az;->A02:[J

    mul-int/lit8 v0, v4, 0x2

    aget-wide v6, v1, v0

    cmp-long v0, v6, p1

    if-gtz v0, :cond_1

    mul-int/lit8 v0, v4, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-wide v6, v1, v0

    cmp-long v0, p1, v6

    if-gez v0, :cond_1

    .line 68856
    if-nez v3, :cond_0

    .line 68857
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 68858
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/az;->A01:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/ay;

    .line 68859
    .local v5, "cue":Lcom/facebook/ads/redexgen/X/ay;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/ay;->A00()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68860
    if-nez v5, :cond_2

    .line 68861
    move-object v5, v7

    .line 68862
    .end local v5    # "cue":Lcom/facebook/ads/redexgen/X/ay;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68863
    :cond_2
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x7e

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/az;->A00(III)Ljava/lang/String;

    move-result-object v1

    if-nez v2, :cond_3

    .line 68864
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 68865
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/GB;->A0C:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/GB;->A0C:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 68866
    :cond_3
    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/GB;->A0C:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 68867
    :cond_4
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68868
    .end local v3    # "i":I
    :cond_5
    if-eqz v2, :cond_7

    .line 68869
    new-instance v0, Lcom/facebook/ads/redexgen/X/ay;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/ay;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68870
    :cond_6
    :goto_2
    if-eqz v3, :cond_8

    .line 68871
    return-object v3

    .line 68872
    :cond_7
    if-eqz v5, :cond_6

    .line 68873
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 68874
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A6S(I)J
    .locals 2

    .line 68875
    const/4 v1, 0x1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 68876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/az;->A03:[J

    array-length v0, v0

    if-ge p1, v0, :cond_0

    :goto_1
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 68877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/az;->A03:[J

    aget-wide v0, v0, p1

    return-wide v0

    .line 68878
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 68879
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A6T()I
    .locals 1

    .line 68880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/az;->A03:[J

    array-length v0, v0

    return v0
.end method

.method public final A6n(J)I
    .locals 2

    .line 68881
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/az;->A03:[J

    const/4 v0, 0x0

    invoke-static {v1, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0A([JJZZ)I

    move-result v1

    .line 68882
    .local p0, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/az;->A03:[J

    array-length v0, v0

    if-ge v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
