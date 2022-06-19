.class public final Lcom/facebook/ads/redexgen/X/VD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CG;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:Lcom/facebook/ads/redexgen/X/CJ;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/CI;

.field public A01:Lcom/facebook/ads/redexgen/X/DC;

.field public A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 58897
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VD;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VD;->A02()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/VE;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/VE;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/VD;->A05:Lcom/facebook/ads/redexgen/X/CJ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/IM;
    .locals 1

    .line 58899
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 58900
    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/VD;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x4e

    sget-object v2, Lcom/facebook/ads/redexgen/X/VD;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/VD;->A04:[Ljava/lang/String;

    const-string v1, "XBPvIUU9N0BR129NcGYsheGRisTouwWY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "4cOtlrU0ITixszhkki7HAomGZEfrdIWn"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    int-to-byte v0, p1

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VD;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x2at
        -0xft
        -0x7t
        -0x4t
        -0xbt
        -0xct
        -0x50t
        0x4t
        -0x1t
        -0x50t
        -0xct
        -0xbt
        0x4t
        -0xbt
        0x2t
        -0x3t
        -0x7t
        -0x2t
        -0xbt
        -0x50t
        -0xet
        -0x7t
        0x4t
        0x3t
        0x4t
        0x2t
        -0xbt
        -0xft
        -0x3t
        -0x50t
        0x4t
        0x9t
        0x0t
        -0xbt
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pwDSMCyuYADTG7SU4m61y0C8JIt5poWz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DaIu0za2lOH4BiPtjJMwDnYVmBLnyFWY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xpkZKvUmrJLyDQ3M5EH95okzSSCw2Niz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5n41ohXjH6HlYbdeKu7QU6N"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QgVik7rxSBGEbQep8apQh04"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HxOrWNEjDbP9ye5eNnAlY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KSbSmAn6pXE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WU8OuNB3Jlm"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VD;->A04:[Ljava/lang/String;

    return-void
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 58901
    new-instance v2, Lcom/facebook/ads/redexgen/X/D8;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/D8;-><init>()V

    .line 58902
    .local p0, "header":Lcom/facebook/ads/redexgen/X/D8;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/facebook/ads/redexgen/X/D8;->A04(Lcom/facebook/ads/redexgen/X/CH;Z)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget v1, v2, Lcom/facebook/ads/redexgen/X/D8;->A04:I

    const/4 v0, 0x2

    and-int/2addr v1, v0

    if-eq v1, v0, :cond_1

    .line 58903
    .end local v2
    .end local v0
    :cond_0
    return v4

    .line 58904
    :cond_1
    iget v1, v2, Lcom/facebook/ads/redexgen/X/D8;->A00:I

    const/16 v0, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 58905
    .local v2, "length":I
    new-instance v1, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    .line 58906
    .local v0, "scratch":Lcom/facebook/ads/redexgen/X/IM;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v4, v2}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 58907
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/VD;->A00(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/IM;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VF;->A05(Lcom/facebook/ads/redexgen/X/IM;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58908
    new-instance v0, Lcom/facebook/ads/redexgen/X/VF;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/VF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VD;->A01:Lcom/facebook/ads/redexgen/X/DC;

    .line 58909
    :goto_0
    return v3

    .line 58910
    :cond_2
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/VD;->A00(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/IM;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VA;->A07(Lcom/facebook/ads/redexgen/X/IM;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58911
    new-instance v0, Lcom/facebook/ads/redexgen/X/VA;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/VA;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VD;->A01:Lcom/facebook/ads/redexgen/X/DC;

    goto :goto_0

    .line 58912
    :cond_3
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/VD;->A00(Lcom/facebook/ads/redexgen/X/IM;)Lcom/facebook/ads/redexgen/X/IM;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VC;->A04(Lcom/facebook/ads/redexgen/X/IM;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58913
    new-instance v0, Lcom/facebook/ads/redexgen/X/VC;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/VC;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VD;->A01:Lcom/facebook/ads/redexgen/X/DC;

    goto :goto_0

    .line 58914
    :cond_4
    return v4
.end method


# virtual methods
.method public final A7s(Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 0

    .line 58915
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VD;->A00:Lcom/facebook/ads/redexgen/X/CI;

    .line 58916
    return-void
.end method

.method public final ACk(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 58917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VD;->A01:Lcom/facebook/ads/redexgen/X/DC;

    if-nez v0, :cond_0

    .line 58918
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VD;->A04(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58919
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->ADN()V

    .line 58920
    :cond_0
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/VD;->A02:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/VD;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/VD;->A04:[Ljava/lang/String;

    const-string v1, "Fq76tY2QmHmqpW885AC1U71"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "r3DwZrNWyNrxZZRhUfLdOeo"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 58921
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VD;->A00:Lcom/facebook/ads/redexgen/X/CI;

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v2

    .line 58922
    .local p0, "trackOutput":Lcom/facebook/ads/redexgen/X/CS;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VD;->A00:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CI;->A59()V

    .line 58923
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VD;->A01:Lcom/facebook/ads/redexgen/X/DC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VD;->A00:Lcom/facebook/ads/redexgen/X/CI;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/DC;->A07(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/CS;)V

    .line 58924
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/VD;->A02:Z

    .line 58925
    .end local p0    # "trackOutput":Lcom/facebook/ads/redexgen/X/CS;
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VD;->A01:Lcom/facebook/ads/redexgen/X/DC;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/DC;->A03(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I

    move-result v0

    return v0

    .line 58926
    :cond_3
    const/4 v2, 0x0

    const/16 v1, 0x22

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VD;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ADX(JJ)V
    .locals 1

    .line 58927
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VD;->A01:Lcom/facebook/ads/redexgen/X/DC;

    if-eqz v0, :cond_0

    .line 58928
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/DC;->A06(JJ)V

    .line 58929
    :cond_0
    return-void
.end method

.method public final AE6(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 58930
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VD;->A04(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    return v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/AJ; {:try_start_0 .. :try_end_0} :catch_0

    .line 58931
    .local p0, "e":Lcom/facebook/ads/redexgen/X/AJ;
    :catch_0
    const/4 v0, 0x0

    return v0
.end method
