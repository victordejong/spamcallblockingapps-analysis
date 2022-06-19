.class public final Lcom/facebook/ads/redexgen/X/VF;
.super Lcom/facebook/ads/redexgen/X/DC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/VG;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/VG;

.field public A01:Lcom/facebook/ads/redexgen/X/I9;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VF;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VF;->A03()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58934
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/DC;-><init>()V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/IM;)I
    .locals 3

    .line 58935
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/4 v0, 0x2

    aget-byte v0, v1, v0

    and-int/lit16 v2, v0, 0xff

    const/4 v0, 0x4

    shr-int/2addr v2, v0

    .line 58936
    .local p0, "blockSizeCode":I
    packed-switch v2, :pswitch_data_0

    .line 58937
    const/4 v0, -0x1

    return v0

    .line 58938
    :pswitch_0
    const/16 v0, 0xc0

    return v0

    .line 58939
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/IM;
    :pswitch_1
    const/16 v1, 0x240

    add-int/lit8 v0, v2, -0x2

    shl-int/2addr v1, v0

    return v1

    .line 58940
    :pswitch_2
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 58941
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0P()J

    .line 58942
    const/4 v0, 0x6

    if-ne v2, v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    .line 58943
    .local p1, "value":I
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 58944
    add-int/lit8 v0, v1, 0x1

    return v0

    .line 58945
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v1

    goto :goto_0

    .line 58946
    :pswitch_3
    const/16 v1, 0x100

    add-int/lit8 v0, v2, -0x8

    shl-int/2addr v1, v0

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/VF;)Lcom/facebook/ads/redexgen/X/I9;
    .locals 0

    .line 58947
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/VF;->A01:Lcom/facebook/ads/redexgen/X/I9;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VF;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x12

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

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VF;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x34t
        0x20t
        0x31t
        0x3ct
        0x3at
        0x7at
        0x33t
        0x39t
        0x34t
        0x36t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1qCwSPCXscwVzTOi5t2XJhig6itpWYuT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vn6Bsy2S9dSahqThhabhdFEYWJRyxaE4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oshrYC09kpa"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CD2U"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "kFjuFNwVEfC9T6kha6VQi4Y09SJslvKI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Dt1Fnopj8aWYeQ7n1ejjePEy94TnqLzS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "azGsE861UJiODGr25yOj1H2Ntl91GDz5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fDLl52Cq0gpLplH8EFHIHtwuYlDWCEfH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VF;->A03:[Ljava/lang/String;

    return-void
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/IM;)Z
    .locals 4

    .line 58948
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    const/4 v0, 0x5

    if-lt v1, v0, :cond_0

    .line 58949
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    const/16 v0, 0x7f

    if-ne v1, v0, :cond_0

    .line 58950
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v3

    const-wide/32 v1, 0x464c4143

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 58951
    :goto_0
    return v0

    .line 58952
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A06([B)Z
    .locals 3

    .line 58953
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method public final A08(Lcom/facebook/ads/redexgen/X/IM;)J
    .locals 5

    .line 58954
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VF;->A06([B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58955
    const-wide/16 v3, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/VF;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/VF;->A03:[Ljava/lang/String;

    const-string v1, "UHSqEkxV9VK88IPXmMTDcTura0ps4yiO"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-wide v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58956
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VF;->A00(Lcom/facebook/ads/redexgen/X/IM;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final A0A(Z)V
    .locals 1

    .line 58957
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/DC;->A0A(Z)V

    .line 58958
    if-eqz p1, :cond_0

    .line 58959
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VF;->A01:Lcom/facebook/ads/redexgen/X/I9;

    .line 58960
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VF;->A00:Lcom/facebook/ads/redexgen/X/VG;

    .line 58961
    :cond_0
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/IM;JLcom/facebook/ads/redexgen/X/DB;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 58962
    move-object/from16 v4, p0

    move-object/from16 v6, p1

    iget-object v5, v6, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 58963
    .local v3, "data":[B
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VF;->A01:Lcom/facebook/ads/redexgen/X/I9;

    move-object/from16 v1, p4

    if-nez v0, :cond_1

    .line 58964
    const/16 v2, 0x11

    new-instance v0, Lcom/facebook/ads/redexgen/X/I9;

    invoke-direct {v0, v5, v2}, Lcom/facebook/ads/redexgen/X/I9;-><init>([BI)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/VF;->A01:Lcom/facebook/ads/redexgen/X/I9;

    .line 58965
    const/16 v2, 0x9

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    invoke-static {v5, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 58966
    .local v1, "metadata":[B
    const/4 v2, 0x4

    const/16 v0, -0x80

    aput-byte v0, v3, v2

    .line 58967
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 58968
    .local v4, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VF;->A01:Lcom/facebook/ads/redexgen/X/I9;

    .line 58969
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I9;->A00()I

    move-result v9

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VF;->A01:Lcom/facebook/ads/redexgen/X/I9;

    iget v10, v0, Lcom/facebook/ads/redexgen/X/I9;->A01:I

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VF;->A01:Lcom/facebook/ads/redexgen/X/I9;

    iget v11, v0, Lcom/facebook/ads/redexgen/X/I9;->A06:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 58970
    const/4 v3, 0x0

    const/16 v2, 0xa

    const/16 v0, 0x47

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/VF;->A02(III)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v5 .. v15}, Lcom/facebook/ads/internal/exoplayer2/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/DB;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 58971
    .end local v1    # "metadata":[B
    .end local v4    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 58972
    :cond_1
    const/4 v3, 0x0

    aget-byte v0, v5, v3

    and-int/lit8 v2, v0, 0x7f

    const/4 v0, 0x3

    if-ne v2, v0, :cond_2

    .line 58973
    new-instance v0, Lcom/facebook/ads/redexgen/X/VG;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/VG;-><init>(Lcom/facebook/ads/redexgen/X/VF;)V

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/VF;->A00:Lcom/facebook/ads/redexgen/X/VG;

    .line 58974
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VF;->A00:Lcom/facebook/ads/redexgen/X/VG;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/VG;->A02(Lcom/facebook/ads/redexgen/X/IM;)V

    goto :goto_0

    .line 58975
    :cond_2
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/VF;->A06([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58976
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VF;->A00:Lcom/facebook/ads/redexgen/X/VG;

    if-eqz v0, :cond_3

    .line 58977
    move-wide/from16 v5, p2

    invoke-virtual {v0, v5, v6}, Lcom/facebook/ads/redexgen/X/VG;->A01(J)V

    .line 58978
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VF;->A00:Lcom/facebook/ads/redexgen/X/VG;

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/DB;->A01:Lcom/facebook/ads/redexgen/X/D9;

    .line 58979
    :cond_3
    return v3
.end method
