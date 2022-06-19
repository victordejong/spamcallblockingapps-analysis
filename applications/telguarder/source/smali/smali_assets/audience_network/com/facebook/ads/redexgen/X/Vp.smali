.class public final Lcom/facebook/ads/redexgen/X/Vp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/C0;
.implements Lcom/facebook/ads/redexgen/X/Bh;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;,
        Lcom/facebook/ads/redexgen/X/Bq;,
        Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSessionManager$Mode;,
        Lcom/facebook/ads/redexgen/X/Br;,
        Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/ads/redexgen/X/C1;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/C0<",
        "TT;>;",
        "Lcom/facebook/ads/redexgen/X/Bh<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Landroid/os/Looper;

.field public A02:[B

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/Bn;

.field public final A05:Lcom/facebook/ads/redexgen/X/C7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/C7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final A06:Lcom/facebook/ads/redexgen/X/CB;

.field public final A07:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Vq<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final A09:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Vq<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final A0A:Ljava/util/UUID;

.field public final A0B:Z

.field public volatile A0C:Lcom/facebook/ads/redexgen/X/Bq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Vp<",
            "TT;>.MediaDrmHandler;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vp;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vp;->A03()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    .locals 8

    .line 61649
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A01:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 61650
    .local p0, "matchingSchemeDatas":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;>;"
    const/4 v3, 0x0

    .local p1, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A01:I

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-ge v3, v0, :cond_5

    .line 61651
    invoke-virtual {p0, v3}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A02(I)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v4

    .line 61652
    .local p2, "schemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    invoke-virtual {v4, p1}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A03(Ljava/util/UUID;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/facebook/ads/redexgen/X/9u;->A01:Ljava/util/UUID;

    .line 61653
    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const-string v1, "DltwDhX8voSwjzqeDHPc6ZT59"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "GyswlqN5lrMPNP4KQAa32G9Zi"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v7, :cond_2

    sget-object v0, Lcom/facebook/ads/redexgen/X/9u;->A02:Ljava/util/UUID;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A03(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v5, 0x1

    .line 61654
    .local v0, "uuidMatches":Z
    :cond_2
    if-eqz v5, :cond_4

    iget-object v0, v4, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A04:[B

    if-nez v0, :cond_3

    if-eqz p2, :cond_4

    .line 61655
    :cond_3
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61656
    .end local p2    # "schemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v0    # "uuidMatches":Z
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61657
    .end local p1    # "i":I
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61658
    const/4 v0, 0x0

    return-object v0

    .line 61659
    :cond_6
    sget-object v0, Lcom/facebook/ads/redexgen/X/9u;->A05:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61660
    const/4 v7, 0x0

    .restart local p1    # "i":I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    goto :goto_1

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge v7, v3, :cond_b

    .line 61661
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    .line 61662
    .local p2, "matchingSchemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    invoke-virtual {v3}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A02()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v3, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A04:[B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cz;->A00([B)I

    move-result v2

    .line 61663
    .local v3, "version":I
    :goto_3
    sget v0, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_9

    if-nez v2, :cond_9

    .line 61664
    return-object v3

    .line 61665
    :cond_8
    const/4 v2, -0x1

    goto :goto_3

    .line 61666
    :cond_9
    sget v0, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    if-lt v0, v1, :cond_a

    if-ne v2, v4, :cond_a

    .line 61667
    return-object v3

    .line 61668
    .end local p2    # "matchingSchemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v3    # "version":I
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 61669
    .end local p1    # "i":I
    :cond_b
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c

    return-object v3

    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const-string v1, "Ws"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object v3
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vp;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Vp;)Ljava/util/List;
    .locals 0

    .line 61670
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A09:Ljava/util/List;

    return-object p0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x6c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vp;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x1at
        0x3bt
        0x38t
        0x3ft
        0x2bt
        0x32t
        0x2at
        0x1at
        0x2ct
        0x33t
        0xdt
        0x3bt
        0x2dt
        0x2dt
        0x37t
        0x31t
        0x30t
        0x13t
        0x39t
        0x2ct
        0x38t
        0xet
        0x11t
        0x35t
        0x12t
        0x15t
        0x8t
        0x38t
        0x1dt
        0x8t
        0x1dt
        0x5ct
        0x13t
        0x12t
        0x10t
        0x5t
        0x5ct
        0x1ft
        0x13t
        0x12t
        0x8t
        0x1dt
        0x15t
        0x12t
        0xft
        0x5ct
        0x1ft
        0x13t
        0x11t
        0x11t
        0x13t
        0x12t
        0x5ct
        0x2ct
        0x2ft
        0x2ft
        0x34t
        0x5ct
        0x2ft
        0x1ft
        0x14t
        0x19t
        0x11t
        0x19t
        0x38t
        0x1dt
        0x8t
        0x1dt
        0x52t
        0x5ct
        0x3dt
        0xft
        0xft
        0x9t
        0x11t
        0x15t
        0x12t
        0x1bt
        0x5ct
        0xft
        0x9t
        0xct
        0xct
        0x13t
        0xet
        0x8t
        0x5ct
        0x1at
        0x13t
        0xet
        0x46t
        0x5ct
        0x4dt
        0x4ct
        0x4dt
        0x1ft
        0x63t
        0x62t
        0x63t
        0x73t
        0x4at
        0x4ct
        0x47t
        0x4at
        0x68t
        0x6et
        0x65t
        0x78t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "RK9GH0lGES32xXtSUtflG4dUA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "d9J5Sp5ZftcE5TrZawo3taQZAruCYgR0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DBJURZ6s312Q8aamHP7N3HLKPf8lzoNR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "INOPrKwR3zFNI352JiA0LXV2RLgiwTzG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wWUbKtLpMu7qKiRj7lna6m3DM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A05(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Bo;)V
    .locals 1

    .line 61671
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Vp;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A04:Lcom/facebook/ads/redexgen/X/Bn;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Bn;->A04(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Bo;)V

    .line 61672
    return-void
.end method

.method public final A2Q(Landroid/os/Looper;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/redexgen/X/Bz;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/facebook/ads/redexgen/X/Bz<",
            "TT;>;"
        }
    .end annotation

    .line 61673
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vp;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    move-object/from16 v4, p0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vp;->A01:Landroid/os/Looper;

    const/4 v3, 0x0

    move-object/from16 v15, p1

    if-eqz v0, :cond_0

    if-ne v0, v15, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 61674
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const-string v1, "CGsPvkp4V55iHeez38Fpttzm6"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "0gbqcun7JHtu5971SSxcOM62Y"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vp;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61675
    iput-object v15, v4, Lcom/facebook/ads/redexgen/X/Vp;->A01:Landroid/os/Looper;

    .line 61676
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vp;->A0C:Lcom/facebook/ads/redexgen/X/Bq;

    if-nez v0, :cond_2

    .line 61677
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bq;

    invoke-direct {v0, v4, v15}, Lcom/facebook/ads/redexgen/X/Bq;-><init>(Lcom/facebook/ads/redexgen/X/Vp;Landroid/os/Looper;)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/Vp;->A0C:Lcom/facebook/ads/redexgen/X/Bq;

    .line 61678
    :cond_2
    const/4 v10, 0x0

    .line 61679
    .local p0, "schemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/Vp;->A02:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    goto :goto_1

    .line 61680
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const-string v1, "jsJTEhWcQiFa9o43qGtaz1aeguo3A7fH"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "bJJyi8sU2nDKgTygqarOr4As35ACFudz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v6, 0x0

    if-nez v5, :cond_5

    .line 61681
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vp;->A0A:Ljava/util/UUID;

    move-object/from16 v1, p2

    invoke-static {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Vp;->A00(Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v10

    .line 61682
    if-nez v10, :cond_5

    .line 61683
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vp;->A0A:Ljava/util/UUID;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Br;

    invoke-direct {v2, v0, v6}, Lcom/facebook/ads/redexgen/X/Br;-><init>(Ljava/util/UUID;Lcom/facebook/ads/redexgen/X/Bp;)V

    .line 61684
    .local v15, "error":Lcom/facebook/ads/redexgen/X/Br;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vp;->A04:Lcom/facebook/ads/redexgen/X/Bn;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Bn;->A05(Ljava/lang/Exception;)V

    .line 61685
    new-instance v1, Lcom/facebook/ads/redexgen/X/Bx;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/Bx;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vo;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Vo;-><init>(Lcom/facebook/ads/redexgen/X/Bx;)V

    return-object v0

    .line 61686
    .end local p0    # "schemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    .local v0, "schemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    :cond_5
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Vp;->A0B:Z

    if-nez v0, :cond_8

    .line 61687
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vp;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 61688
    .end local p0
    .end local v15    # "error":Lcom/facebook/ads/redexgen/X/Br;
    .local v2, "session":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    :goto_2
    if-nez v6, :cond_6

    .line 61689
    new-instance v6, Lcom/facebook/ads/redexgen/X/Vq;

    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/Vp;->A0A:Ljava/util/UUID;

    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/Vp;->A05:Lcom/facebook/ads/redexgen/X/C7;

    iget v11, v4, Lcom/facebook/ads/redexgen/X/Vp;->A00:I

    iget-object v12, v4, Lcom/facebook/ads/redexgen/X/Vp;->A02:[B

    iget-object v13, v4, Lcom/facebook/ads/redexgen/X/Vp;->A07:Ljava/util/HashMap;

    iget-object v14, v4, Lcom/facebook/ads/redexgen/X/Vp;->A06:Lcom/facebook/ads/redexgen/X/CB;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Vp;->A04:Lcom/facebook/ads/redexgen/X/Bn;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Vp;->A03:I

    move-object/from16 v9, p0

    move-object/from16 v16, v1

    move/from16 v17, v0

    invoke-direct/range {v6 .. v17}, Lcom/facebook/ads/redexgen/X/Vq;-><init>(Ljava/util/UUID;Lcom/facebook/ads/redexgen/X/C7;Lcom/facebook/ads/redexgen/X/Bh;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;I[BLjava/util/HashMap;Lcom/facebook/ads/redexgen/X/CB;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/Bn;I)V

    .line 61690
    .end local v2    # "session":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    .restart local p0    # "schemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vp;->A09:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61691
    .end local p0    # "schemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    .restart local v2    # "session":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    :cond_6
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Vq;->A0H()V

    .line 61692
    return-object v6

    .line 61693
    :cond_7
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vp;->A09:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/Vq;

    goto :goto_2

    .line 61694
    .end local p0
    :cond_8
    const/4 v3, 0x0

    .line 61695
    .restart local p0    # "schemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    if-eqz v10, :cond_9

    iget-object v6, v10, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A04:[B

    .line 61696
    .local v15, "initData":[B
    :cond_9
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Vp;->A09:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Vq;

    .line 61697
    .local v4, "existingSession":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    invoke-virtual {v1, v6}, Lcom/facebook/ads/redexgen/X/Vq;->A0N([B)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 61698
    move-object v6, v1

    goto :goto_2

    .line 61699
    :cond_b
    move-object v6, v3

    goto :goto_2
.end method

.method public final A3u(Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Z
    .locals 7
    .param p1    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 61700
    .local v6, "this":Lcom/facebook/ads/redexgen/X/Vp;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A02:[B

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 61701
    return v3

    .line 61702
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A0A:Ljava/util/UUID;

    invoke-static {p1, v0, v3}, Lcom/facebook/ads/redexgen/X/Vp;->A00(Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v0

    .line 61703
    .local p0, "schemeData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;
    const/4 v6, 0x0

    if-nez v0, :cond_2

    .line 61704
    iget v4, p1, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_b

    invoke-virtual {p1, v6}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A02(I)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v5

    sget-object v4, Lcom/facebook/ads/redexgen/X/9u;->A02:Ljava/util/UUID;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_5

    invoke-virtual {v5, v4}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A03(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61705
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14

    const/16 v1, 0x48

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A0A:Ljava/util/UUID;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61706
    :cond_2
    iget-object v5, p1, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;->A02:Ljava/lang/String;

    .line 61707
    .local v3, "schemeType":Ljava/lang/String;
    if-eqz v5, :cond_3

    const/16 v4, 0x64

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v1, 0x0

    const/16 v0, 0x19

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Vp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61708
    :cond_3
    :goto_1
    return v3

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const-string v1, "l31TwWOc5mrPKHfkLLp2zdFxc"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "ZPEThkiIv8GXoNCukoSttuiz4"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v1, 0x4

    const/16 v0, 0x74

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Vp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const-string v1, "U3"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v5, v4}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;->A03(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_0

    .line 61709
    :cond_6
    const/16 v2, 0x5c

    const/4 v1, 0x4

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 61710
    const/16 v2, 0x60

    const/4 v1, 0x4

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vp;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 61711
    const/16 v2, 0x68

    const/4 v1, 0x4

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vp;->A01(III)Ljava/lang/String;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const-string v1, "GTksA8UgKxuoRfXlBnDeOjn3K"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "0XxU6nAc56T0CKfpQ8B1Y7133"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 61712
    :cond_7
    :goto_2
    sget v1, Lcom/facebook/ads/redexgen/X/Ic;->A02:I

    const/16 v0, 0x19

    if-lt v1, v0, :cond_8

    :goto_3
    return v3

    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const-string v1, "EfdhNtE99lP4Id3f3NTODyvSI"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "RMO7UvH2Uvr8Cpb7rw53lwHHc"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    .line 61713
    :cond_a
    return v3

    .line 61714
    :cond_b
    return v6
.end method

.method public final ABJ()V
    .locals 2

    .line 61715
    .local v1, "this":Lcom/facebook/ads/redexgen/X/Vp;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Vq;

    .line 61716
    .local v0, "session":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Vq;->A0I()V

    .line 61717
    .end local v0    # "session":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    goto :goto_0

    .line 61718
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61719
    return-void
.end method

.method public final ABK(Ljava/lang/Exception;)V
    .locals 2

    .line 61720
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vp;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Vq;

    .line 61721
    .local p1, "session":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Vq;->A0L(Ljava/lang/Exception;)V

    .line 61722
    .end local p1    # "session":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    goto :goto_0

    .line 61723
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61724
    return-void
.end method

.method public final ACf(Lcom/facebook/ads/redexgen/X/Vq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Vq<",
            "TT;>;)V"
        }
    .end annotation

    .line 61725
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Vp;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    .local v0, "session":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A08:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 61727
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vq;->A0J()V

    .line 61728
    :cond_0
    return-void
.end method

.method public final AD5(Lcom/facebook/ads/redexgen/X/Bz;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Bz<",
            "TT;>;)V"
        }
    .end annotation

    .line 61729
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Vp;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    .local v0, "session":Lcom/facebook/ads/redexgen/X/Bz;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSession<TT;>;"
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/Vo;

    if-eqz v0, :cond_0

    .line 61730
    return-void

    .line 61731
    :cond_0
    check-cast p1, Lcom/facebook/ads/redexgen/X/Vq;

    .line 61732
    .local p0, "drmSession":Lcom/facebook/ads/redexgen/X/Vq;, "Lcom/facebook/ads/internal/exoplayer2/drm/DefaultDrmSession<TT;>;"
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vq;->A0M()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61733
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vp;->A09:Ljava/util/List;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 61734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vp;->A08:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 61735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vp;->A08:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Vq;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vq;->A0J()V

    .line 61736
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vp;->A08:Ljava/util/List;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_4

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Vq;->A0J()V

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vp;->A0E:[Ljava/lang/String;

    const-string v1, "2c"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 61737
    :cond_5
    return-void
.end method
