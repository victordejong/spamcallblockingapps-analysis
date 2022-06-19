.class public final Lcom/facebook/ads/redexgen/X/To;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Tn;
    }
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/5G;

.field public A01:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/To;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5G;Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)V
    .locals 0

    .line 55516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55517
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/To;->A00:Lcom/facebook/ads/redexgen/X/5G;

    .line 55518
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/To;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 55519
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/To;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    .line 55520
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/To;)Lcom/facebook/ads/redexgen/X/5G;
    .locals 0

    .line 55521
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/To;->A00:Lcom/facebook/ads/redexgen/X/5G;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/To;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 0

    .line 55522
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/To;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/To;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x57

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/To;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x3bt
        0x34t
        0x21t
        0x3ct
        0x23t
        0x30t
        0x64t
        0x7ft
        0x7at
        0x7ft
        0x7et
        0x66t
        0x7ft
    .end array-data
.end method


# virtual methods
.method public final AA7(Lcom/facebook/ads/redexgen/X/Jl;)V
    .locals 1

    .line 55523
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tl;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Tl;-><init>(Lcom/facebook/ads/redexgen/X/To;Lcom/facebook/ads/redexgen/X/Jl;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KS;->A00(Lcom/facebook/ads/redexgen/X/KO;)V

    .line 55524
    return-void
.end method

.method public final AAw(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Rp;",
            ">;)V"
        }
    .end annotation

    .line 55525
    .local v5, "nativeAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/To;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 55526
    .local p0, "manager":Lcom/facebook/ads/redexgen/X/7D;
    const/4 v3, 0x6

    const/4 v2, 0x7

    const/16 v1, 0x46

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/To;->A02(III)Ljava/lang/String;

    move-result-object v1

    .line 55527
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

    check-cast v2, Lcom/facebook/ads/redexgen/X/Rp;

    .line 55528
    .local v0, "nativeAdapter":Lcom/facebook/ads/redexgen/X/Rp;
    const/4 v5, 0x6

    const/4 v4, 0x7

    const/16 v3, 0x46

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/To;->A02(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55529
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Rp;->A0T()Ljava/lang/String;

    move-result-object v1

    .line 55530
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/To;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    sget-object v3, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    invoke-virtual {v4, v3}, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55531
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Rp;->A0M()Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 55532
    new-instance v7, Lcom/facebook/ads/redexgen/X/7A;

    .line 55533
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Rp;->A0M()Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/JY;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 55534
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Rp;->A0M()Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/JY;->getHeight()I

    move-result v9

    .line 55535
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Rp;->A0M()Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/JY;->getWidth()I

    move-result v10

    .line 55536
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Rp;->A0T()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x2

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/To;->A02(III)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 55537
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/7D;->A0T(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 55538
    :cond_2
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Rp;->A0L()Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 55539
    new-instance v7, Lcom/facebook/ads/redexgen/X/7A;

    .line 55540
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Rp;->A0L()Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/JY;->getUrl()Ljava/lang/String;

    move-result-object v8

    .line 55541
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Rp;->A0L()Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/JY;->getHeight()I

    move-result v9

    .line 55542
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Rp;->A0L()Lcom/facebook/ads/redexgen/X/JY;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/JY;->getWidth()I

    move-result v10

    .line 55543
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Rp;->A0T()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x0

    const/4 v4, 0x6

    const/4 v3, 0x2

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/To;->A02(III)Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 55544
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/7D;->A0T(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 55545
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Rp;->A0V()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 55546
    new-instance v7, Lcom/facebook/ads/redexgen/X/7C;

    .line 55547
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Rp;->A0V()Ljava/lang/String;

    move-result-object v8

    .line 55548
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Rp;->A0T()Ljava/lang/String;

    move-result-object v9

    .line 55549
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Rp;->A0P()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const/4 v4, 0x0

    const/4 v3, 0x6

    const/4 v2, 0x2

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/To;->A02(III)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/7C;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 55550
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/7D;->A0Y(Lcom/facebook/ads/redexgen/X/7C;)V

    goto/16 :goto_0

    .line 55551
    :cond_4
    new-instance v5, Lcom/facebook/ads/redexgen/X/Tn;

    invoke-direct {v5, p0, p1}, Lcom/facebook/ads/redexgen/X/Tn;-><init>(Lcom/facebook/ads/redexgen/X/To;Ljava/util/List;)V

    const/4 v4, 0x0

    const/4 v3, 0x6

    const/4 v2, 0x2

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/To;->A02(III)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/76;

    invoke-direct {v2, v1, v3}, Lcom/facebook/ads/redexgen/X/76;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v2}, Lcom/facebook/ads/redexgen/X/7D;->A0S(Lcom/facebook/ads/redexgen/X/75;Lcom/facebook/ads/redexgen/X/76;)V

    .line 55552
    return-void
.end method
