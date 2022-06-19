.class public final Lcom/facebook/ads/redexgen/X/A4;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Df;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfoUpdate"
.end annotation


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/AK;

.field public final A03:Lcom/facebook/ads/redexgen/X/H7;

.field public final A04:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/AO;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Z

.field public final A06:Z

.field public final A07:Z

.field public final A08:Z

.field public final A09:Z

.field public final A0A:Z

.field public final A0B:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/A4;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AK;Lcom/facebook/ads/redexgen/X/AK;Ljava/util/Set;Lcom/facebook/ads/redexgen/X/H7;ZIIZZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/AK;",
            "Lcom/facebook/ads/redexgen/X/AK;",
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/AO;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/H7;",
            "ZIIZZZ)V"
        }
    .end annotation

    .line 20772
    .local p7, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/facebook/ads/internal/exoplayer2/Player$EventListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20773
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/A4;->A02:Lcom/facebook/ads/redexgen/X/AK;

    .line 20774
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/A4;->A04:Ljava/util/Set;

    .line 20775
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/A4;->A03:Lcom/facebook/ads/redexgen/X/H7;

    .line 20776
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/A4;->A08:Z

    .line 20777
    iput p6, p0, Lcom/facebook/ads/redexgen/X/A4;->A00:I

    .line 20778
    iput p7, p0, Lcom/facebook/ads/redexgen/X/A4;->A01:I

    .line 20779
    iput-boolean p8, p0, Lcom/facebook/ads/redexgen/X/A4;->A09:Z

    .line 20780
    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/A4;->A06:Z

    .line 20781
    const/4 v2, 0x0

    if-nez p10, :cond_0

    iget v1, p2, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    if-eq v1, v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A07:Z

    .line 20782
    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    if-ne v1, v0, :cond_1

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/AK;->A07:Ljava/lang/Object;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AK;->A07:Ljava/lang/Object;

    if-eq v1, v0, :cond_4

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A0A:Z

    .line 20783
    iget-boolean v1, p2, Lcom/facebook/ads/redexgen/X/AK;->A08:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/AK;->A08:Z

    if-eq v1, v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A05:Z

    .line 20784
    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/AK;->A06:Lcom/facebook/ads/redexgen/X/H8;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/AK;->A06:Lcom/facebook/ads/redexgen/X/H8;

    if-eq v1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/A4;->A0B:Z

    .line 20785
    return-void

    .line 20786
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 20787
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 20788
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hfNUa"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5iEOAQo4ynt6BKlDHmWjgrcs4ae"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "v8fV31Oel9XWEKGqG2rD8r0e8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FkGOg"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qFFyXdBph3MOGm6dJL47NPILvcYb5YIy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EWfLXHD6vH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MkU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "qJ5nwEFHui6mTai0ZnYCiSwodTuj0OwB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/A4;->A0C:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 5

    .line 20789
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A0A:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A01:I

    if-nez v0, :cond_1

    .line 20790
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/A4;->A04:Ljava/util/Set;

    sget-object v2, Lcom/facebook/ads/redexgen/X/A4;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/A4;->A0C:[Ljava/lang/String;

    const-string v1, "JhYUWprfKnQw9JiWqyuvjQh4Y"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "UrNjPv4Oj7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/AO;

    .line 20791
    .local v0, "listener":Lcom/facebook/ads/redexgen/X/AO;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A02:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/AK;->A03:Lcom/facebook/ads/redexgen/X/Af;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A02:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/AK;->A07:Ljava/lang/Object;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A01:I

    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AO;->ABo(Lcom/facebook/ads/redexgen/X/Af;Ljava/lang/Object;I)V

    .line 20792
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/AO;
    goto :goto_0

    .line 20793
    :cond_1
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/A4;->A08:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/A4;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    if-eqz v3, :cond_3

    .line 20794
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A04:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/AO;

    .line 20795
    .restart local v0    # "listener":Lcom/facebook/ads/redexgen/X/AO;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A00:I

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/AO;->ABD(I)V

    .line 20796
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/AO;
    goto :goto_2

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/A4;->A0C:[Ljava/lang/String;

    const-string v1, "iAWlM0xKSrgn8lKFfmfpzwkOp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "JvTwu46Y5i"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    goto :goto_1

    .line 20797
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A0B:Z

    if-eqz v0, :cond_4

    .line 20798
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/A4;->A03:Lcom/facebook/ads/redexgen/X/H7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A02:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A06:Lcom/facebook/ads/redexgen/X/H8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/H8;->A02:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/H7;->A0W(Ljava/lang/Object;)V

    .line 20799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A04:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/AO;

    .line 20800
    .restart local v0    # "listener":Lcom/facebook/ads/redexgen/X/AO;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A02:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/AK;->A05:Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A02:Lcom/facebook/ads/redexgen/X/AK;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A06:Lcom/facebook/ads/redexgen/X/H8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/H8;->A01:Lcom/facebook/ads/redexgen/X/H5;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AO;->ABp(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H5;)V

    .line 20801
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/AO;
    goto :goto_3

    .line 20802
    :cond_4
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A05:Z

    if-eqz v0, :cond_6

    .line 20803
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/A4;->A04:Ljava/util/Set;

    sget-object v2, Lcom/facebook/ads/redexgen/X/A4;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/A4;->A0C:[Ljava/lang/String;

    const-string v1, "wDb3d3CPZ2jfUnX3JCi9ZgWZnMJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "8HT"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/AO;

    .line 20804
    .restart local v0    # "listener":Lcom/facebook/ads/redexgen/X/AO;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A02:Lcom/facebook/ads/redexgen/X/AK;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A08:Z

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/AO;->AAi(Z)V

    .line 20805
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/AO;
    goto :goto_4

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/A4;->A0C:[Ljava/lang/String;

    const-string v1, "qTVNkvGoQAIvH5PwGk362EIA4Pcw4ym8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "qpfkm71X6B6FCtCW3vl6uWRSkEAZxjTG"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    goto :goto_4

    .line 20806
    :cond_6
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A07:Z

    if-eqz v0, :cond_7

    .line 20807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A04:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/AO;

    .line 20808
    .restart local v0    # "listener":Lcom/facebook/ads/redexgen/X/AO;
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/A4;->A06:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A02:Lcom/facebook/ads/redexgen/X/AK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/AK;->A00:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/AO;->ABB(ZI)V

    .line 20809
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/AO;
    goto :goto_5

    .line 20810
    :cond_7
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A09:Z

    if-eqz v0, :cond_9

    .line 20811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A4;->A04:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/A4;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/A4;->A0C:[Ljava/lang/String;

    const-string v1, "Gbw5b"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "oBFR9"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/AO;

    .line 20812
    .restart local v0    # "listener":Lcom/facebook/ads/redexgen/X/AO;
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/AO;->ABa()V

    .line 20813
    .end local v0    # "listener":Lcom/facebook/ads/redexgen/X/AO;
    goto :goto_6

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 20814
    :cond_9
    return-void
.end method
