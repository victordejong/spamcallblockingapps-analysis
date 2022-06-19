.class public final Lcom/facebook/ads/redexgen/X/aH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/aI;
    }
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/5G;

.field public A01:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/aH;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/aH;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5G;Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)V
    .locals 0

    .line 66806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66807
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aH;->A00:Lcom/facebook/ads/redexgen/X/5G;

    .line 66808
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aH;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 66809
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/aH;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 66810
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/aH;)Lcom/facebook/ads/redexgen/X/5G;
    .locals 0

    .line 66811
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aH;->A00:Lcom/facebook/ads/redexgen/X/5G;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/aH;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 0

    .line 66812
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aH;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/aH;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/aH;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/aH;->A04:[Ljava/lang/String;

    const-string v1, "MdmGKNh4C3mG92xgGyorPLR3SXO"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x58

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/aH;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x1at
        -0x27t
        -0x14t
        -0x1ft
        -0x12t
        -0x23t
        -0x1ct
        -0x23t
        -0x26t
        -0x23t
        -0x22t
        -0x1at
        -0x23t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2TNZv5rtJTplZyjTIrSAFwUR6QP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UjegX20Mk8HUIHIT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ti96PrkTuXG6IMzmEs5GDJe0LgUxYJn1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WKFIsio5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sT4eIPa9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0D70Whi8Ioa2N41OWBvmw3gUZoSjgMHO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iH11Sl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "erLbaj7N4o7d5mJ3hEM6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/aH;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final AA6(Lcom/facebook/ads/redexgen/X/Jn;)V
    .locals 1

    .line 66813
    new-instance v0, Lcom/facebook/ads/redexgen/X/aK;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/aK;-><init>(Lcom/facebook/ads/redexgen/X/aH;Lcom/facebook/ads/redexgen/X/Jn;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KU;->A00(Lcom/facebook/ads/redexgen/X/KQ;)V

    .line 66814
    return-void
.end method

.method public final AAw(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/c9;",
            ">;)V"
        }
    .end annotation

    .line 66815
    .local v5, "nativeAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aH;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 66816
    .local p0, "manager":Lcom/facebook/ads/redexgen/X/7D;
    const/4 v3, 0x6

    const/4 v2, 0x7

    const/16 v1, 0x17

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/aH;->A02(III)Ljava/lang/String;

    move-result-object v1

    .line 66817
    .local p1, "firstRequestId":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/c9;

    .line 66818
    .local v0, "nativeAdapter":Lcom/facebook/ads/redexgen/X/c9;
    const/4 v5, 0x6

    const/4 v4, 0x7

    const/16 v3, 0x17

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/aH;->A02(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66819
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/c9;->A0T()Ljava/lang/String;

    move-result-object v1

    .line 66820
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/aH;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    sget-object v3, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    invoke-virtual {v4, v3}, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66821
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/c9;->A0M()Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 66822
    new-instance v7, Lcom/facebook/ads/redexgen/X/7A;

    .line 66823
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/c9;->A0M()Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ja;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 66824
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/c9;->A0M()Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ja;->getHeight()I

    move-result v9

    .line 66825
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/c9;->A0M()Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ja;->getWidth()I

    move-result v10

    .line 66826
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/c9;->A0T()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/16 v3, 0x20

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/aH;->A02(III)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 66827
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/7D;->A0W(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 66828
    :cond_2
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/c9;->A0L()Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 66829
    new-instance v7, Lcom/facebook/ads/redexgen/X/7A;

    .line 66830
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/c9;->A0L()Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ja;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 66831
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/c9;->A0L()Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ja;->getHeight()I

    move-result v9

    .line 66832
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/c9;->A0L()Lcom/facebook/ads/redexgen/X/Ja;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ja;->getWidth()I

    move-result v10

    .line 66833
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/c9;->A0T()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/16 v3, 0x20

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/aH;->A02(III)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 66834
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/7D;->A0W(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 66835
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/c9;->A0V()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 66836
    new-instance v7, Lcom/facebook/ads/redexgen/X/7C;

    .line 66837
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/c9;->A0V()Ljava/lang/String;

    move-result-object v8

    .line 66838
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/c9;->A0T()Ljava/lang/String;

    move-result-object v9

    .line 66839
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/c9;->A0P()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const/4 v4, 0x0

    const/4 v3, 0x6

    const/16 v2, 0x20

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/aH;->A02(III)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/7C;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 66840
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/7D;->A0b(Lcom/facebook/ads/redexgen/X/7C;)V

    goto/16 :goto_0

    .line 66841
    :cond_4
    new-instance v5, Lcom/facebook/ads/redexgen/X/aI;

    invoke-direct {v5, p0, p1}, Lcom/facebook/ads/redexgen/X/aI;-><init>(Lcom/facebook/ads/redexgen/X/aH;Ljava/util/List;)V

    const/4 v4, 0x0

    const/4 v3, 0x6

    const/16 v2, 0x20

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/aH;->A02(III)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/76;

    invoke-direct {v2, v1, v3}, Lcom/facebook/ads/redexgen/X/76;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v2}, Lcom/facebook/ads/redexgen/X/7D;->A0V(Lcom/facebook/ads/redexgen/X/75;Lcom/facebook/ads/redexgen/X/76;)V

    .line 66842
    return-void
.end method
