.class public abstract Lcom/facebook/ads/redexgen/X/U4;
.super Lcom/facebook/ads/redexgen/X/H7;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/H2;
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/H2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/U4;->A0S()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55829
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/H7;-><init>()V

    return-void
.end method

.method public static A0R([Lcom/facebook/ads/redexgen/X/AY;Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 55830
    array-length v5, p0

    .line 55831
    .local p0, "bestRendererIndex":I
    const/4 v4, 0x0

    .line 55832
    .local p1, "bestFormatSupportLevel":I
    const/4 v3, 0x0

    .local v5, "rendererIndex":I
    :goto_0
    array-length v0, p0

    if-ge v3, v0, :cond_2

    .line 55833
    aget-object v2, p0, v3

    .line 55834
    .local v4, "rendererCapability":Lcom/facebook/ads/redexgen/X/AY;
    const/4 v1, 0x0

    .local v3, "trackIndex":I
    :goto_1
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    if-ge v1, v0, :cond_1

    .line 55835
    invoke-virtual {p1, v1}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/AY;->AEI(Lcom/facebook/ads/internal/exoplayer2/Format;)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 55836
    .local v0, "formatSupportLevel":I
    if-le v0, v4, :cond_0

    .line 55837
    move v5, v3

    .line 55838
    move v4, v0

    .line 55839
    const/4 v0, 0x4

    if-ne v4, v0, :cond_0

    .line 55840
    return v5

    .line 55841
    .end local v0    # "formatSupportLevel":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 55842
    .end local v4    # "rendererCapability":Lcom/facebook/ads/redexgen/X/AY;
    .end local v3    # "trackIndex":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55843
    .end local v5    # "rendererIndex":I
    :cond_2
    return v5
.end method

.method public static A0S()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "egrbDBpZLl2Q"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4zV8dkLzBWbwR4G4nwTAp1nQ65fA8lFU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "88ggZgrKzboEYw2K59xN6xDjkJGWv0iY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "kQAFgpO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wcEUqOwXLsXKl8GzhkuDrKA0udrbNpbq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EoVysdalf7gjDh1nnWTtRvEWzatSViUX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Flmb3fPtvOj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7JyYukV94xb5PlS80OaSIT4b58iN8trk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/U4;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A0T(Lcom/facebook/ads/redexgen/X/AY;Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 55844
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    new-array v2, v0, [I

    .line 55845
    .local p0, "formatSupport":[I
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    if-ge v1, v0, :cond_0

    .line 55846
    invoke-virtual {p1, v1}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/AY;->AEI(Lcom/facebook/ads/internal/exoplayer2/Format;)I

    move-result v0

    aput v0, v2, v1

    .line 55847
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55848
    .end local p1    # "i":I
    :cond_0
    return-object v2
.end method

.method public static A0U([Lcom/facebook/ads/redexgen/X/AY;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 55849
    array-length v0, p0

    new-array v2, v0, [I

    .line 55850
    .local p0, "mixedMimeTypeAdaptationSupport":[I
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 55851
    aget-object v0, p0, v1

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AY;->AEK()I

    move-result v0

    aput v0, v2, v1

    .line 55852
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55853
    .end local v0    # "i":I
    :cond_0
    return-object v2
.end method


# virtual methods
.method public final A0V([Lcom/facebook/ads/redexgen/X/AY;Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;)Lcom/facebook/ads/redexgen/X/H8;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 55854
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [I

    .line 55855
    .local p2, "rendererTrackGroupCounts":[I
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    .line 55856
    .local p1, "rendererTrackGroups":[[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v11, v0, [[[I

    .line 55857
    .local p2, "rendererFormatSupports":[[[I
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    .line 55858
    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    new-array v0, v0, [Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    aput-object v0, v3, v1

    .line 55859
    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    new-array v0, v0, [[I

    aput-object v0, v11, v1

    .line 55860
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55861
    .end local v0    # "i":I
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/U4;->A0U([Lcom/facebook/ads/redexgen/X/AY;)[I

    move-result-object v10

    .line 55862
    .local v0, "rendererMixedMimeTypeAdaptationSupports":[I
    const/4 v6, 0x0

    .local v0, "groupIndex":I
    :goto_1
    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    if-ge v6, v0, :cond_4

    .line 55863
    invoke-virtual {p2, v6}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    move-result-object v2

    .line 55864
    .local v0, "group":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    invoke-static {p1, v2}, Lcom/facebook/ads/redexgen/X/U4;->A0R([Lcom/facebook/ads/redexgen/X/AY;Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)I

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/U4;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_1

    .line 55865
    .local v4, "rendererIndex":I
    sget-object v7, Lcom/facebook/ads/redexgen/X/U4;->A01:[Ljava/lang/String;

    const-string v1, "S2evwtGfF00"

    const/4 v0, 0x6

    aput-object v1, v7, v0

    const-string v1, "xCTUDOwK3xqp"

    const/4 v0, 0x0

    aput-object v1, v7, v0

    array-length v0, p1

    if-ne v5, v0, :cond_3

    .line 55866
    iget v0, v2, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    new-array v8, v0, [I

    .line 55867
    .local v0, "rendererFormatSupport":[I
    :goto_2
    aget v9, v4, v5

    .line 55868
    .local v0, "rendererTrackGroupCount":I
    aget-object v0, v3, v5

    aput-object v2, v0, v9

    .line 55869
    aget-object v7, v11, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/U4;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/U4;->A01:[Ljava/lang/String;

    const-string v1, "8M2bTqxCPB6zzdJhZ4c99eUR34OLv3TO"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    aput-object v8, v7, v9

    .line 55870
    aget v0, v4, v5

    add-int/lit8 v0, v0, 0x1

    aput v0, v4, v5

    .line 55871
    .end local v0    # "rendererTrackGroupCount":I
    .end local v4    # "rendererIndex":I
    .end local v0
    .end local v0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 55872
    :cond_3
    aget-object v0, p1, v5

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/U4;->A0T(Lcom/facebook/ads/redexgen/X/AY;Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)[I

    move-result-object v8

    goto :goto_2

    .line 55873
    .end local v0
    :cond_4
    array-length v0, p1

    new-array v9, v0, [Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 55874
    .local v0, "rendererTrackGroupArrays":[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;
    array-length v0, p1

    new-array v8, v0, [I

    .line 55875
    .local v11, "rendererTrackTypes":[I
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_3
    array-length v0, p1

    if-ge v5, v0, :cond_5

    .line 55876
    aget v2, v4, v5

    .line 55877
    .local v0, "rendererTrackGroupCount":I
    aget-object v0, v3, v5

    .line 55878
    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Ic;->A0l([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;-><init>([Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)V

    aput-object v0, v9, v5

    .line 55879
    aget-object v0, v11, v5

    .line 55880
    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Ic;->A0l([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    aput-object v0, v11, v5

    .line 55881
    aget-object v0, p1, v5

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AY;->A7R()I

    move-result v0

    aput v0, v8, v5

    .line 55882
    .end local v0    # "rendererTrackGroupCount":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 55883
    .end local v0
    :cond_5
    array-length v0, p1

    aget v1, v4, v0

    .line 55884
    .local v1, "unmappedTrackGroupCount":I
    array-length v0, p1

    aget-object v0, v3, v0

    .line 55885
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ic;->A0l([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    new-instance v12, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    invoke-direct {v12, v0}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;-><init>([Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)V

    .line 55886
    .local v3, "unmappedTrackGroupArray":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;
    new-instance v7, Lcom/facebook/ads/redexgen/X/H2;

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/H2;-><init>([I[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;[I[[[ILcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;)V

    .line 55887
    .local v0, "mappedTrackInfo":Lcom/facebook/ads/redexgen/X/H2;
    move-object v0, p0

    invoke-virtual {v0, v7, v11, v10}, Lcom/facebook/ads/redexgen/X/U4;->A0X(Lcom/facebook/ads/redexgen/X/H2;[[[I[I)Landroid/util/Pair;

    move-result-object v0

    .line 55888
    .local v4, "result":Landroid/util/Pair;, "Landroid/util/Pair<[Lcom/facebook/ads/internal/exoplayer2/RendererConfiguration;[Lcom/facebook/ads/internal/exoplayer2/trackselection/TrackSelection;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Lcom/facebook/ads/redexgen/X/AZ;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/facebook/ads/redexgen/X/H4;

    new-instance v0, Lcom/facebook/ads/redexgen/X/H8;

    invoke-direct {v0, v2, v1, v7}, Lcom/facebook/ads/redexgen/X/H8;-><init>([Lcom/facebook/ads/redexgen/X/AZ;[Lcom/facebook/ads/redexgen/X/H4;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final A0W(Ljava/lang/Object;)V
    .locals 0

    .line 55889
    check-cast p1, Lcom/facebook/ads/redexgen/X/H2;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/U4;->A00:Lcom/facebook/ads/redexgen/X/H2;

    .line 55890
    return-void
.end method

.method public abstract A0X(Lcom/facebook/ads/redexgen/X/H2;[[[I[I)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/H2;",
            "[[[I[I)",
            "Landroid/util/Pair<",
            "[",
            "Lcom/facebook/ads/redexgen/X/AZ;",
            "[",
            "Lcom/facebook/ads/redexgen/X/H4;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation
.end method
