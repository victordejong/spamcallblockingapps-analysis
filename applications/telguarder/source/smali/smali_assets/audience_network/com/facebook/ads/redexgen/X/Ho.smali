.class public final Lcom/facebook/ads/redexgen/X/Ho;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Te;

.field public A01:Z

.field public final A02:I

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/facebook/ads/redexgen/X/Tc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ho;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ho;->A02()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 36914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36915
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ho;->A02:I

    .line 36916
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ho;->A03:Ljava/lang/String;

    .line 36917
    sget-object v0, Lcom/facebook/ads/redexgen/X/Te;->A04:Lcom/facebook/ads/redexgen/X/Te;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A00:Lcom/facebook/ads/redexgen/X/Te;

    .line 36918
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A04:Ljava/util/TreeSet;

    .line 36919
    return-void
.end method

.method public static A00(ILjava/io/DataInputStream;)Lcom/facebook/ads/redexgen/X/Ho;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36920
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 36921
    .local p0, "id":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 36922
    .local p1, "key":Ljava/lang/String;
    new-instance v3, Lcom/facebook/ads/redexgen/X/Ho;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Ho;-><init>(ILjava/lang/String;)V

    .line 36923
    .local v1, "cachedContent":Lcom/facebook/ads/redexgen/X/Ho;
    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    .line 36924
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    .line 36925
    .local v0, "length":J
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ht;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ht;-><init>()V

    .line 36926
    .local v0, "mutations":Lcom/facebook/ads/redexgen/X/Ht;
    invoke-static {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Hs;->A05(Lcom/facebook/ads/redexgen/X/Ht;J)V

    .line 36927
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Ho;->A0G(Lcom/facebook/ads/redexgen/X/Ht;)Z

    .line 36928
    .end local v0    # "mutations":Lcom/facebook/ads/redexgen/X/Ht;
    .end local v0
    :goto_0
    return-object v3

    .line 36929
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Te;->A00(Ljava/io/DataInputStream;)Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/Ho;->A00:Lcom/facebook/ads/redexgen/X/Te;

    goto :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ho;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ho;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x65t
        0x23t
        0x24t
        0x2ct
        0x29t
        0x20t
        0x21t
        0x6bt
        0x28t
        0x7ct
        0x67t
        0x28t
        0x7ft
        0x48t
        0x43t
        0x4ct
        0x40t
        0x44t
        0x43t
        0x4at
        0xdt
        0x42t
        0x4bt
        0xdt
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ROjvlGgigsytewMP8g"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "dtvbTHMEVQs3yZsQO3QdKF2a8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XaE"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "JCPFiPWF7HpNQXl23Bby4pemct2iU5sA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sd9zYmmL5Wymzv1jblfZWaHcFtPuMMVG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pgzF95O1uIi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yXqYyuJ5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NIJN1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ho;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A04(I)I
    .locals 6

    .line 36930
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A02:I

    .line 36931
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A03:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 36932
    .end local p0    # "result":I
    .local p1, "result":I
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 36933
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A00:Lcom/facebook/ads/redexgen/X/Te;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hs;->A00(Lcom/facebook/ads/redexgen/X/Hr;)J

    move-result-wide v4

    .line 36934
    .local v0, "length":J
    mul-int/lit8 v3, v1, 0x1f

    const/16 v0, 0x20

    ushr-long v1, v4, v0

    xor-long/2addr v1, v4

    long-to-int v0, v1

    add-int/2addr v3, v0

    .line 36935
    .end local p1    # "result":I
    .end local v0    # "length":J
    .restart local p0    # "result":I
    .end local p1
    .restart local p0    # "result":I
    :goto_0
    return v3

    .line 36936
    .end local p0    # "result":I
    .restart local p1    # "result":I
    :cond_0
    mul-int/lit8 v3, v1, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A00:Lcom/facebook/ads/redexgen/X/Te;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Te;->hashCode()I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_0
.end method

.method public final A05(JJ)J
    .locals 10

    .line 36937
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ho;->A07(J)Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    .line 36938
    .local p0, "span":Lcom/facebook/ads/redexgen/X/Tc;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hl;->A01()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36939
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hl;->A02()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    neg-long v0, v2

    return-wide v0

    :cond_0
    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/Hl;->A01:J

    goto :goto_0

    .line 36940
    :cond_1
    add-long v8, p1, p3

    .line 36941
    .local p1, "queryEndPosition":J
    iget-wide v1, v5, Lcom/facebook/ads/redexgen/X/Hl;->A02:J

    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/Hl;->A01:J

    add-long/2addr v1, v3

    .line 36942
    .local p3, "currentEndPosition":J
    cmp-long v0, v1, v8

    if-gez v0, :cond_3

    .line 36943
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ho;->A04:Ljava/util/TreeSet;

    const/4 v0, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Tc;

    .line 36944
    .local v0, "next":Lcom/facebook/ads/redexgen/X/Tc;
    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/Hl;->A02:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_4

    .line 36945
    :cond_3
    :goto_1
    sub-long/2addr v1, p1

    invoke-static {v1, v2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 36946
    :cond_4
    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/Hl;->A02:J

    iget-wide v5, v5, Lcom/facebook/ads/redexgen/X/Hl;->A01:J

    add-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 36947
    cmp-long v0, v1, v8

    if-ltz v0, :cond_2

    goto :goto_1
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/Hr;
    .locals 1

    .line 36948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A00:Lcom/facebook/ads/redexgen/X/Te;

    return-object v0
.end method

.method public final A07(J)Lcom/facebook/ads/redexgen/X/Tc;
    .locals 6

    .line 36949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A03:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Tc;->A01(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v5

    .line 36950
    .local p0, "lookupSpan":Lcom/facebook/ads/redexgen/X/Tc;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Tc;

    .line 36951
    .local p1, "floorSpan":Lcom/facebook/ads/redexgen/X/Tc;
    if-eqz v4, :cond_0

    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/Hl;->A02:J

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/Hl;->A01:J

    add-long/2addr v2, v0

    cmp-long v0, v2, p1

    if-lez v0, :cond_0

    .line 36952
    return-object v4

    .line 36953
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Tc;

    .line 36954
    .local v2, "ceilSpan":Lcom/facebook/ads/redexgen/X/Tc;
    if-nez v0, :cond_1

    .line 36955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A03:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Tc;->A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    .line 36956
    :goto_0
    return-object v0

    .line 36957
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ho;->A03:Ljava/lang/String;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Hl;->A02:J

    sub-long/2addr v0, p1

    invoke-static {v2, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/Tc;->A03(Ljava/lang/String;JJ)Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v0

    goto :goto_0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/Tc;)Lcom/facebook/ads/redexgen/X/Tc;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Hf;
        }
    .end annotation

    .line 36958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 36959
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A02:I

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Tc;->A09(I)Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v4

    .line 36960
    .local p0, "newCacheSpan":Lcom/facebook/ads/redexgen/X/Tc;
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Hl;->A03:Ljava/io/File;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Hl;->A03:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 36962
    return-object v4

    .line 36963
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc

    const/16 v1, 0xc

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ho;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A03:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    const/4 v1, 0x4

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ho;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Hl;->A03:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ho;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hf;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hf;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A09()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lcom/facebook/ads/redexgen/X/Tc;",
            ">;"
        }
    .end annotation

    .line 36964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A04:Ljava/util/TreeSet;

    return-object v0
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/Tc;)V
    .locals 1

    .line 36965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 36966
    return-void
.end method

.method public final A0B(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36967
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A02:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 36968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A03:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 36969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A00:Lcom/facebook/ads/redexgen/X/Te;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Te;->A0A(Ljava/io/DataOutputStream;)V

    .line 36970
    return-void
.end method

.method public final A0C(Z)V
    .locals 0

    .line 36971
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ho;->A01:Z

    .line 36972
    return-void
.end method

.method public final A0D()Z
    .locals 1

    .line 36973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final A0E()Z
    .locals 1

    .line 36974
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A01:Z

    return v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/Hl;)Z
    .locals 4

    .line 36975
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36976
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Hl;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 36977
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ho;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ho;->A06:[Ljava/lang/String;

    const-string v1, "6LeSa"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "P47gOAAWm7OvNRS8Bv"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 36978
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/Ht;)Z
    .locals 2

    .line 36979
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ho;->A00:Lcom/facebook/ads/redexgen/X/Te;

    .line 36980
    .local p0, "oldMetadata":Lcom/facebook/ads/redexgen/X/Te;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A00:Lcom/facebook/ads/redexgen/X/Te;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Te;->A09(Lcom/facebook/ads/redexgen/X/Ht;)Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A00:Lcom/facebook/ads/redexgen/X/Te;

    .line 36981
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A00:Lcom/facebook/ads/redexgen/X/Te;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Te;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36982
    const/4 v6, 0x1

    if-ne p0, p1, :cond_0

    .line 36983
    return v6

    .line 36984
    :cond_0
    const/4 v5, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ho;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ho;->A06:[Ljava/lang/String;

    const-string v1, "5OWhdUszcFl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "Muc"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ho;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ho;->A06:[Ljava/lang/String;

    const-string v1, "7zQaJE1auvW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "Xi1"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_2

    .line 36985
    .end local v6
    :cond_1
    return v5

    .line 36986
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ho;

    .line 36987
    .local v6, "that":Lcom/facebook/ads/redexgen/X/Ho;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ho;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Ho;->A02:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ho;->A03:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ho;->A03:Ljava/lang/String;

    .line 36988
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ho;->A04:Ljava/util/TreeSet;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ho;->A04:Ljava/util/TreeSet;

    .line 36989
    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ho;->A00:Lcom/facebook/ads/redexgen/X/Te;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Ho;->A00:Lcom/facebook/ads/redexgen/X/Te;

    .line 36990
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Te;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36991
    :goto_0
    return v6

    .line 36992
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .line 36993
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ho;->A04(I)I

    move-result v0

    .line 36994
    .local p0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ho;->A04:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 36995
    .end local p0    # "result":I
    .local v0, "result":I
    return v1
.end method
