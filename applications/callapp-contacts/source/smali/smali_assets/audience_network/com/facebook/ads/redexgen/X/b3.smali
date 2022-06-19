.class public abstract Lcom/facebook/ads/redexgen/X/b3;
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/b3;->A0S()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68948
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

    .line 68949
    array-length v5, p0

    .line 68950
    .local p0, "bestRendererIndex":I
    const/4 v4, 0x0

    .line 68951
    .local p1, "bestFormatSupportLevel":I
    const/4 v3, 0x0

    .local v5, "rendererIndex":I
    :goto_0
    array-length v0, p0

    if-ge v3, v0, :cond_2

    .line 68952
    aget-object v2, p0, v3

    .line 68953
    .local v4, "rendererCapability":Lcom/facebook/ads/redexgen/X/AY;
    const/4 v1, 0x0

    .local v3, "trackIndex":I
    :goto_1
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    if-ge v1, v0, :cond_1

    .line 68954
    invoke-virtual {p1, v1}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A02(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/AY;->AEG(Lcom/facebook/ads/internal/exoplayer2/Format;)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 68955
    .local v0, "formatSupportLevel":I
    if-le v0, v4, :cond_0

    .line 68956
    move v5, v3

    .line 68957
    move v4, v0

    .line 68958
    const/4 v0, 0x4

    if-ne v4, v0, :cond_0

    .line 68959
    return v5

    .line 68960
    .end local v0    # "formatSupportLevel":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68961
    .end local v4    # "rendererCapability":Lcom/facebook/ads/redexgen/X/AY;
    .end local v3    # "trackIndex":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68962
    .end local v5    # "rendererIndex":I
    :cond_2
    return v5
.end method

.method public static A0S()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "26JblF4b6dorFS8jU2vwriUxZ0G71mwq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Xnpi2o2sUEOze"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "R71e3dTOAhzB09tZHggtqRTS0V3by"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "x11tshWAsx1g8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "baPvwG8wSWpB2aFi4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NgcUJ4cAOsbj9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "II"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FdNrM275eXYBmZtzCUl1db95x7ONP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/b3;->A01:[Ljava/lang/String;

    return-void
.end method

.method public static A0T(Lcom/facebook/ads/redexgen/X/AY;Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 68963
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    new-array v2, v0, [I

    .line 68964
    .local p0, "formatSupport":[I
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    if-ge v1, v0, :cond_0

    .line 68965
    invoke-virtual {p1, v1}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A02(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/AY;->AEG(Lcom/facebook/ads/internal/exoplayer2/Format;)I

    move-result v0

    aput v0, v2, v1

    .line 68966
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68967
    .end local p1    # "i":I
    :cond_0
    return-object v2
.end method

.method public static A0U([Lcom/facebook/ads/redexgen/X/AY;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 68968
    array-length v0, p0

    new-array v5, v0, [I

    .line 68969
    .local p0, "mixedMimeTypeAdaptationSupport":[I
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/b3;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/b3;->A01:[Ljava/lang/String;

    const-string v1, "xB4ZDOqJN2K9OUw5kZCJNg4ll7dteaQM"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge v4, v3, :cond_0

    .line 68970
    aget-object v0, p0, v4

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AY;->AEI()I

    move-result v0

    aput v0, v5, v4

    .line 68971
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68972
    .end local v0    # "i":I
    :cond_0
    return-object v5

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0V([Lcom/facebook/ads/redexgen/X/AY;Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;)Lcom/facebook/ads/redexgen/X/H8;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 68973
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [I

    .line 68974
    .local p2, "rendererTrackGroupCounts":[I
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    .line 68975
    .local p1, "rendererTrackGroups":[[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v9, v0, [[[I

    .line 68976
    .local p2, "rendererFormatSupports":[[[I
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    .line 68977
    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    new-array v0, v0, [Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    aput-object v0, v3, v1

    .line 68978
    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    new-array v0, v0, [[I

    aput-object v0, v9, v1

    .line 68979
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68980
    .end local v0    # "i":I
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/b3;->A0U([Lcom/facebook/ads/redexgen/X/AY;)[I

    move-result-object v8

    .line 68981
    .local v0, "rendererMixedMimeTypeAdaptationSupports":[I
    const/4 v7, 0x0

    .local v0, "groupIndex":I
    :goto_1
    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    if-ge v7, v0, :cond_2

    .line 68982
    invoke-virtual {p2, v7}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    move-result-object v6

    .line 68983
    .local v0, "group":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    invoke-static {p1, v6}, Lcom/facebook/ads/redexgen/X/b3;->A0R([Lcom/facebook/ads/redexgen/X/AY;Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)I

    move-result v5

    .line 68984
    .local v4, "rendererIndex":I
    array-length v0, p1

    if-ne v5, v0, :cond_1

    .line 68985
    iget v0, v6, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    new-array v2, v0, [I

    .line 68986
    .local v0, "rendererFormatSupport":[I
    :goto_2
    aget v1, v4, v5

    .line 68987
    .local v0, "rendererTrackGroupCount":I
    aget-object v0, v3, v5

    aput-object v6, v0, v1

    .line 68988
    aget-object v0, v9, v5

    aput-object v2, v0, v1

    .line 68989
    aget v0, v4, v5

    add-int/lit8 v0, v0, 0x1

    aput v0, v4, v5

    .line 68990
    .end local v0    # "rendererTrackGroupCount":I
    .end local v4    # "rendererIndex":I
    .end local v0
    .end local v0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 68991
    :cond_1
    aget-object v0, p1, v5

    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/b3;->A0T(Lcom/facebook/ads/redexgen/X/AY;Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)[I

    move-result-object v2

    goto :goto_2

    .line 68992
    .end local v0
    :cond_2
    array-length v0, p1

    new-array v7, v0, [Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    .line 68993
    .local v0, "rendererTrackGroupArrays":[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;
    array-length v0, p1

    new-array v6, v0, [I

    .line 68994
    .local v9, "rendererTrackTypes":[I
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_3
    array-length v0, p1

    if-ge v5, v0, :cond_3

    .line 68995
    aget v2, v4, v5

    .line 68996
    .local v0, "rendererTrackGroupCount":I
    aget-object v0, v3, v5

    .line 68997
    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Ic;->A0l([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;-><init>([Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)V

    aput-object v0, v7, v5

    .line 68998
    aget-object v0, v9, v5

    .line 68999
    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Ic;->A0l([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    aput-object v0, v9, v5

    .line 69000
    aget-object v0, p1, v5

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AY;->A7P()I

    move-result v0

    aput v0, v6, v5

    .line 69001
    .end local v0    # "rendererTrackGroupCount":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 69002
    .end local v0
    :cond_3
    array-length v0, p1

    aget v1, v4, v0

    .line 69003
    .local v1, "unmappedTrackGroupCount":I
    array-length v0, p1

    aget-object v0, v3, v0

    .line 69004
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ic;->A0l([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    new-instance v10, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    invoke-direct {v10, v0}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;-><init>([Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)V

    .line 69005
    .local v3, "unmappedTrackGroupArray":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;
    new-instance v5, Lcom/facebook/ads/redexgen/X/H2;

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/H2;-><init>([I[Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;[I[[[ILcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;)V

    .line 69006
    .local v0, "mappedTrackInfo":Lcom/facebook/ads/redexgen/X/H2;
    move-object v0, p0

    invoke-virtual {v0, v5, v9, v8}, Lcom/facebook/ads/redexgen/X/b3;->A0X(Lcom/facebook/ads/redexgen/X/H2;[[[I[I)Landroid/util/Pair;

    move-result-object v0

    .line 69007
    .local v4, "result":Landroid/util/Pair;, "Landroid/util/Pair<[Lcom/facebook/ads/internal/exoplayer2/RendererConfiguration;[Lcom/facebook/ads/internal/exoplayer2/trackselection/TrackSelection;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [Lcom/facebook/ads/redexgen/X/AZ;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/facebook/ads/redexgen/X/H4;

    new-instance v0, Lcom/facebook/ads/redexgen/X/H8;

    invoke-direct {v0, v2, v1, v5}, Lcom/facebook/ads/redexgen/X/H8;-><init>([Lcom/facebook/ads/redexgen/X/AZ;[Lcom/facebook/ads/redexgen/X/H4;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final A0W(Ljava/lang/Object;)V
    .locals 0

    .line 69008
    check-cast p1, Lcom/facebook/ads/redexgen/X/H2;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b3;->A00:Lcom/facebook/ads/redexgen/X/H2;

    .line 69009
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
