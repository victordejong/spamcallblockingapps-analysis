.class public abstract Lcom/facebook/ads/redexgen/X/8O;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/8K;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8O;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8K;)V
    .locals 0

    .line 17911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17912
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8O;->A00:Lcom/facebook/ads/redexgen/X/8K;

    .line 17913
    return-void
.end method

.method private A00()Ljava/lang/String;
    .locals 7

    .line 17914
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8O;->A0A()[Lcom/facebook/ads/redexgen/X/8I;

    move-result-object v6

    .line 17915
    .local p0, "columns":[Lcom/facebook/ads/redexgen/X/8I;
    array-length v0, v6

    const/4 v5, 0x1

    if-ge v0, v5, :cond_0

    .line 17916
    const/4 v0, 0x0

    return-object v0

    .line 17917
    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8O;->A01(III)Ljava/lang/String;

    move-result-object v2

    .line 17918
    .local v6, "result":Ljava/lang/String;
    const/4 v4, 0x0

    .local v5, "i":I
    :goto_0
    array-length v0, v6

    sub-int/2addr v0, v5

    if-ge v4, v0, :cond_1

    .line 17919
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v6, v4

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8I;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    const/4 v1, 0x2

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8O;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17920
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 17921
    .end local v5    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v6

    sub-int/2addr v0, v5

    aget-object v0, v6, v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8I;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17922
    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8O;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02(Ljava/lang/String;[Lcom/facebook/ads/redexgen/X/8I;)Ljava/lang/String;
    .locals 5

    .line 17923
    const/16 v2, 0x38

    const/4 v1, 0x7

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8O;->A01(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17924
    .local p0, "selectStatement":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local p1, "i":I
    :goto_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_0

    .line 17925
    aget-object v0, p1, v4

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17926
    const/16 v2, 0x14

    const/4 v1, 0x2

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8O;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17927
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 17928
    .end local p1    # "i":I
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17929
    const/4 v2, 0x6

    const/4 v1, 0x6

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8O;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17930
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17931
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A03(Ljava/lang/String;[Lcom/facebook/ads/redexgen/X/8I;Lcom/facebook/ads/redexgen/X/8I;)Ljava/lang/String;
    .locals 2

    .line 17932
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/8O;->A02(Ljava/lang/String;[Lcom/facebook/ads/redexgen/X/8I;)Ljava/lang/String;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17933
    .local p0, "selectStatement":Ljava/lang/StringBuilder;
    const/16 p0, 0xc

    const/4 v1, 0x7

    const/16 v0, 0x77

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/8O;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17934
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17935
    const/4 p0, 0x2

    const/4 v1, 0x4

    const/16 v0, 0x74

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/8O;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17936
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8O;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x55t
        0x5dt
        0x57t
        0x4at
        0x57t
        0x48t
        0x36t
        0x50t
        0x44t
        0x59t
        0x5bt
        0x36t
        0x54t
        0x23t
        0x3ct
        0x31t
        0x26t
        0x31t
        0x54t
        0x5ft
        0x4t
        0x8t
        0x4ft
        0x5et
        0x49t
        0x4dt
        0x58t
        0x49t
        0x2ct
        0x58t
        0x4dt
        0x4et
        0x40t
        0x49t
        0x2ct
        0x6t
        0x10t
        0xdt
        0x12t
        0x62t
        0x16t
        0x3t
        0x0t
        0xet
        0x7t
        0x62t
        0xbt
        0x4t
        0x62t
        0x7t
        0x1at
        0xbt
        0x11t
        0x16t
        0x11t
        0x62t
        0x22t
        0x34t
        0x3dt
        0x34t
        0x32t
        0x25t
        0x51t
    .end array-data
.end method


# virtual methods
.method public final A05()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 17937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8O;->A00:Lcom/facebook/ads/redexgen/X/8K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8K;->A0F()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public final A06(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 17938
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x16

    const/16 v1, 0xd

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8O;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8O;->A09()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8O;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8O;->A00()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x13

    const/4 v1, 0x1

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8O;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17939
    return-void
.end method

.method public final A07(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 17940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x23

    const/16 v1, 0x15

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8O;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8O;->A09()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17941
    return-void
.end method

.method public final A08()Z
    .locals 3

    .line 17942
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8O;->A05()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8O;->A09()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract A09()Ljava/lang/String;
.end method

.method public abstract A0A()[Lcom/facebook/ads/redexgen/X/8I;
.end method
