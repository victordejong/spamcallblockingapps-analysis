.class public abstract Lcom/facebook/ads/redexgen/X/U5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/H4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Gs;
    }
.end annotation


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:[J

.field public final A02:[Lcom/facebook/ads/internal/exoplayer2/Format;

.field public final A03:I

.field public final A04:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

.field public final A05:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/U5;->A02()V

    return-void
.end method

.method public varargs constructor <init>(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;[I)V
    .locals 3

    .line 55891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55892
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 55893
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A04:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    .line 55894
    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A03:I

    .line 55895
    iget v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A03:I

    new-array v0, v0, [Lcom/facebook/ads/internal/exoplayer2/Format;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A02:[Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 55896
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_1
    array-length v0, p2

    if-ge v2, v0, :cond_1

    .line 55897
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/U5;->A02:[Lcom/facebook/ads/internal/exoplayer2/Format;

    aget v0, p2, v2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    aput-object v0, v1, v2

    .line 55898
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 55899
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 55900
    .end local p0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/U5;->A02:[Lcom/facebook/ads/internal/exoplayer2/Format;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gs;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Gs;-><init>(Lcom/facebook/ads/redexgen/X/Gr;)V

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 55901
    iget v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A03:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A05:[I

    .line 55902
    const/4 v2, 0x0

    .restart local p0    # "i":I
    :goto_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A03:I

    if-ge v2, v0, :cond_2

    .line 55903
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/U5;->A05:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A02:[Lcom/facebook/ads/internal/exoplayer2/Format;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A00(Lcom/facebook/ads/internal/exoplayer2/Format;)I

    move-result v0

    aput v0, v1, v2

    .line 55904
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 55905
    .end local p0    # "i":I
    :cond_2
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A01:[J

    .line 55906
    return-void
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bUM8q0jiBLqrYpfwJI1WBQJocQmErcQw"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "N22"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1R1vydkcMQqmSk0xADiqPBUU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "syIYIN6XfiMn2bSMeeDkzy6GEew3uyYZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "VmOHSNXuZryJ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2l6SJKx5nKo0MewsqluGiRF8r1w94"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "BhnL352sUbEMGrSJLP72f9YOfQIO3z3t"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7wzQ6yxqpjIFhrIlwnV46RO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/U5;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03(IJ)Z
    .locals 3

    .line 55907
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A01:[J

    aget-wide v1, v0, p1

    cmp-long v0, v1, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public A55()V
    .locals 0

    .line 55908
    return-void
.end method

.method public final A6X(I)Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 1

    .line 55909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A02:[Lcom/facebook/ads/internal/exoplayer2/Format;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final A6c(I)I
    .locals 1

    .line 55910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A05:[I

    aget v0, v0, p1

    return v0
.end method

.method public final A7A()Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 2

    .line 55911
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/U5;->A02:[Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/U5;->A7B()I

    move-result v0

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A7P()Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    .locals 1

    .line 55912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A04:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public AB8(F)V
    .locals 0

    .line 55913
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 55914
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 55915
    return v3

    .line 55916
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 55917
    .end local v3
    :cond_1
    return v2

    .line 55918
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/U5;

    sget-object v2, Lcom/facebook/ads/redexgen/X/U5;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 55919
    .local v3, "other":Lcom/facebook/ads/redexgen/X/U5;
    sget-object v2, Lcom/facebook/ads/redexgen/X/U5;->A06:[Ljava/lang/String;

    const-string v1, "zILpInoPAkjdkPSZM7RqQZNj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "6NvDQXz8xGFL4WVJN8iD2YE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/U5;->A04:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/U5;->A04:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/U5;->A05:[I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/U5;->A05:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .line 55920
    iget v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A00:I

    if-nez v0, :cond_0

    .line 55921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A04:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A05:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/U5;->A00:I

    .line 55922
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A00:I

    return v0
.end method

.method public final length()I
    .locals 1

    .line 55923
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A05:[I

    array-length v0, v0

    return v0
.end method
