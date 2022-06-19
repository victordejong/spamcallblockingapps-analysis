.class public final Lcom/facebook/ads/redexgen/X/Zj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CG;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/DT;
    }
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;

.field public static final A09:Lcom/facebook/ads/redexgen/X/CJ;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/CI;

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public final A05:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/DT;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Lcom/facebook/ads/redexgen/X/IM;

.field public final A07:Lcom/facebook/ads/redexgen/X/IY;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 65842
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zj;->A00()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zi;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Zi;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zj;->A09:Lcom/facebook/ads/redexgen/X/CJ;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 65843
    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/IY;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/IY;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Zj;-><init>(Lcom/facebook/ads/redexgen/X/IY;)V

    .line 65844
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/IY;)V
    .locals 2

    .line 65845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65846
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zj;->A07:Lcom/facebook/ads/redexgen/X/IY;

    .line 65847
    const/16 v1, 0x1000

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A06:Lcom/facebook/ads/redexgen/X/IM;

    .line 65848
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A05:Landroid/util/SparseArray;

    .line 65849
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mExdGVP0maPlz"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mtU4GW9lJGPRgwi7WTtJ47xTDMOD9Jvz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "mnVK2jaR5CYO63Y95SEKprVffrLm5k0s"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WHnhbYArFQVibafDHBFVvoYN0aOa9WUH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "bzekXst0bt0AdcZvIiwJXkkJcIHRgIjU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "gyTL2jV1VgKAzlNybmW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "q"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Zj;->A08:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7q(Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 3

    .line 65850
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zj;->A01:Lcom/facebook/ads/redexgen/X/CI;

    .line 65851
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/Yt;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Yt;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CI;->ADX(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 65852
    return-void
.end method

.method public final ACk(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 65853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A06:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    invoke-interface {p1, v1, v3, v0, v6}, Lcom/facebook/ads/redexgen/X/CH;->ACN([BIIZ)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 65854
    return v2

    .line 65855
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 65856
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 65857
    .local p0, "nextStartCode":I
    const/16 v0, 0x1b9

    if-ne v1, v0, :cond_1

    .line 65858
    return v2

    .line 65859
    :cond_1
    const/16 v0, 0x1ba

    if-ne v1, v0, :cond_2

    .line 65860
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A06:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/16 v0, 0xa

    invoke-interface {p1, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 65861
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zj;->A06:Lcom/facebook/ads/redexgen/X/IM;

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 65862
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 65863
    .local p1, "packStuffingLength":I
    add-int/lit8 v0, v0, 0xe

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    .line 65864
    return v3

    .line 65865
    .end local p1    # "packStuffingLength":I
    :cond_2
    const/16 v0, 0x1bb

    const/4 v5, 0x2

    if-ne v1, v0, :cond_3

    .line 65866
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A06:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 65867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 65868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v0

    .line 65869
    .local p1, "systemHeaderLength":I
    add-int/lit8 v0, v0, 0x6

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    .line 65870
    return v3

    .line 65871
    .end local p1    # "systemHeaderLength":I
    :cond_3
    and-int/lit16 v0, v1, -0x100

    shr-int/lit8 v0, v0, 0x8

    if-eq v0, v6, :cond_4

    .line 65872
    invoke-interface {p1, v6}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    .line 65873
    return v3

    .line 65874
    :cond_4
    and-int/lit16 v7, v1, 0xff

    .line 65875
    .local v0, "streamId":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/DT;

    .line 65876
    .local v6, "payloadReader":Lcom/facebook/ads/redexgen/X/DT;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A02:Z

    if-nez v0, :cond_a

    .line 65877
    if-nez v4, :cond_6

    .line 65878
    const/4 v2, 0x0

    .line 65879
    .local v3, "elementaryStreamReader":Lcom/facebook/ads/redexgen/X/DM;
    const/16 v0, 0xbd

    if-ne v7, v0, :cond_7

    .line 65880
    new-instance v2, Lcom/facebook/ads/redexgen/X/ZU;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/ZU;-><init>()V

    .line 65881
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Zj;->A03:Z

    .line 65882
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A00:J

    .line 65883
    :cond_5
    :goto_0
    if-eqz v2, :cond_6

    .line 65884
    const/16 v0, 0x100

    new-instance v1, Lcom/facebook/ads/redexgen/X/Da;

    invoke-direct {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/Da;-><init>(II)V

    .line 65885
    .local v0, "idGenerator":Lcom/facebook/ads/redexgen/X/Da;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A01:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/DM;->A4V(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V

    .line 65886
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A07:Lcom/facebook/ads/redexgen/X/IY;

    new-instance v4, Lcom/facebook/ads/redexgen/X/DT;

    invoke-direct {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/DT;-><init>(Lcom/facebook/ads/redexgen/X/DM;Lcom/facebook/ads/redexgen/X/IY;)V

    .line 65887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65888
    .end local v3    # "elementaryStreamReader":Lcom/facebook/ads/redexgen/X/DM;
    .end local v0    # "idGenerator":Lcom/facebook/ads/redexgen/X/Da;
    :cond_6
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A03:Z

    if-eqz v0, :cond_d

    iget-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Zj;->A04:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zj;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65889
    :cond_7
    and-int/lit16 v1, v7, 0xe0

    const/16 v0, 0xc0

    if-ne v1, v0, :cond_8

    .line 65890
    new-instance v2, Lcom/facebook/ads/redexgen/X/Zg;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Zg;-><init>()V

    .line 65891
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Zj;->A03:Z

    .line 65892
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A00:J

    goto :goto_0

    .line 65893
    :cond_8
    and-int/lit16 v1, v7, 0xf0

    const/16 v0, 0xe0

    if-ne v1, v0, :cond_5

    .line 65894
    new-instance v2, Lcom/facebook/ads/redexgen/X/Zb;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Zb;-><init>()V

    .line 65895
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Zj;->A04:Z

    .line 65896
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A00:J

    goto :goto_0

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/Zj;->A08:[Ljava/lang/String;

    const-string v1, "GuNYv8iGB9fWJbOt3uu3Za7wMxPGJegg"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "GUiTHbar7DdTUGk0lHWf4lwKJeXDLMXK"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v7, :cond_d

    .line 65897
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Zj;->A00:J

    const-wide/16 v7, 0x2000

    add-long/2addr v1, v7

    .line 65898
    .local v3, "maxSearchPosition":J
    :goto_1
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v7

    cmp-long v0, v7, v1

    if-lez v0, :cond_a

    .line 65899
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Zj;->A02:Z

    .line 65900
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A01:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CI;->A5B()V

    .line 65901
    .end local v3    # "maxSearchPosition":J
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A06:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 65902
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 65903
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v0

    .line 65904
    .local p1, "payloadLength":I
    add-int/lit8 v5, v0, 0x6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zj;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_b

    .line 65905
    .local v1, "pesLength":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/Zj;->A08:[Ljava/lang/String;

    const-string v1, "LU8WC4TuN3WXFvWf57u6WvD8Lscdw8Rq"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v4, :cond_c

    .line 65906
    :goto_2
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/CH;->AE3(I)V

    .line 65907
    :goto_3
    return v3

    .line 65908
    .local v1, "pesLength":I
    :cond_b
    if-nez v4, :cond_c

    goto :goto_2

    .line 65909
    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    .line 65910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A06:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 65911
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zj;->A06:Lcom/facebook/ads/redexgen/X/IM;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 65912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/DT;->A03(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 65913
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zj;->A06:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IM;->A06()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Y(I)V

    goto :goto_3

    .line 65914
    :cond_d
    const-wide/32 v1, 0x100000

    goto :goto_1
.end method

.method public final ADW(JJ)V
    .locals 2

    .line 65915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A07:Lcom/facebook/ads/redexgen/X/IY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IY;->A09()V

    .line 65916
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 65917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zj;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/DT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/DT;->A02()V

    .line 65918
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65919
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

.method public final AE4(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 65920
    const/16 v0, 0xe

    new-array v5, v0, [B

    .line 65921
    .local p1, "scratch":[B
    const/4 v4, 0x0

    invoke-interface {p1, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 65922
    aget-byte v0, v5, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x18

    const/4 v3, 0x1

    aget-byte v0, v5, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    const/4 v8, 0x2

    aget-byte v0, v5, v8

    and-int/lit16 v0, v0, 0xff

    const/16 v6, 0x8

    shl-int/2addr v0, v6

    or-int/2addr v1, v0

    const/4 v7, 0x3

    aget-byte v0, v5, v7

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    const/16 v0, 0x1ba

    if-eq v0, v1, :cond_0

    .line 65923
    return v4

    .line 65924
    :cond_0
    const/4 v2, 0x4

    aget-byte v0, v5, v2

    and-int/lit16 v1, v0, 0xc4

    const/16 v0, 0x44

    if-eq v1, v0, :cond_1

    .line 65925
    return v4

    .line 65926
    :cond_1
    const/4 v0, 0x6

    aget-byte v0, v5, v0

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_2

    .line 65927
    return v4

    .line 65928
    :cond_2
    aget-byte v0, v5, v6

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_3

    .line 65929
    return v4

    .line 65930
    :cond_3
    const/16 v0, 0x9

    aget-byte v0, v5, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    .line 65931
    return v4

    .line 65932
    :cond_4
    const/16 v0, 0xc

    aget-byte v0, v5, v0

    and-int/2addr v0, v7

    if-eq v0, v7, :cond_5

    .line 65933
    return v4

    .line 65934
    :cond_5
    const/16 v6, 0xd

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zj;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zj;->A08:[Ljava/lang/String;

    const-string v1, "dWjhqjXulz1hd3AtKzuGBSPNQhOMyT1H"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    aget-byte v0, v5, v6

    and-int/lit8 v0, v0, 0x7

    .line 65935
    .local p0, "packStuffingLength":I
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->A3N(I)V

    .line 65936
    invoke-interface {p1, v5, v4, v7}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 65937
    aget-byte v0, v5, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x10

    aget-byte v0, v5, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    aget-byte v0, v5, v8

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    if-ne v3, v0, :cond_6

    const/4 v4, 0x1

    :cond_6
    return v4

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
