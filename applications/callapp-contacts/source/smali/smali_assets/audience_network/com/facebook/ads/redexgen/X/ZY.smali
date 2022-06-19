.class public final Lcom/facebook/ads/redexgen/X/ZY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DZ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory$Flags;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZY;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZY;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64928
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ZY;-><init>(I)V

    .line 64929
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 64930
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/ZY;-><init>(ILjava/util/List;)V

    .line 64931
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 64932
    .local v0, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64933
    iput p1, p0, Lcom/facebook/ads/redexgen/X/ZY;->A00:I

    .line 64934
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ZY;->A04(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64935
    const/4 v4, 0x0

    .line 64936
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZY;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4, v3}, Lcom/facebook/ads/internal/exoplayer2/Format;->A00(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 64937
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 64938
    :cond_0
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ZY;->A01:Ljava/util/List;

    .line 64939
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/DY;)Lcom/facebook/ads/redexgen/X/DV;
    .locals 16

    .line 64940
    move-object/from16 v1, p0

    const/16 v0, 0x20

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/ZY;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64941
    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/ZY;->A01:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/DV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/DV;-><init>(Ljava/util/List;)V

    return-object v0

    .line 64942
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/DY;->A03:[B

    new-instance v7, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>([B)V

    .line 64943
    .local v0, "scratchDescriptorData":Lcom/facebook/ads/redexgen/X/IM;
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/ZY;->A01:Ljava/util/List;

    .line 64944
    .local v0, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/Format;>;"
    :goto_0
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZY;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZY;->A03:[Ljava/lang/String;

    const-string v1, "9wGqNU4xey1NmHgGithGb88lbeAMl0Qa"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Me3yU"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-lez v3, :cond_4

    .line 64945
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    .line 64946
    .local v0, "descriptorTag":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    .line 64947
    .local v1, "descriptorLength":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v6

    add-int/2addr v6, v0

    .line 64948
    .local v0, "nextDescriptorPosition":I
    const/16 v0, 0x86

    if-ne v1, v0, :cond_3

    .line 64949
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 64950
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    and-int/lit8 v4, v0, 0x1f

    .line 64951
    .local v0, "numberOfServices":I
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 64952
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0T(I)Ljava/lang/String;

    move-result-object v13

    .line 64953
    .local v7, "language":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v8

    .line 64954
    .local v0, "captionTypeByte":I
    and-int/lit16 v0, v8, 0x80

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 64955
    .local v0, "isDigital":Z
    :goto_2
    if-eqz v0, :cond_1

    .line 64956
    const/16 v2, 0x13

    const/16 v1, 0x13

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZY;->A01(III)Ljava/lang/String;

    move-result-object v9

    .line 64957
    .local v5, "mimeType":Ljava/lang/String;
    and-int/lit8 v14, v8, 0x3f

    .line 64958
    .local v3, "accessibilityChannel":I
    .end local v5    # "mimeType":Ljava/lang/String;
    .local v2, "mimeType":Ljava/lang/String;
    .local v1, "accessibilityChannel":I
    :goto_3
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v15, 0x0

    .line 64959
    .end local v0    # "isDigital":Z
    .local v0, "captionTypeByte":I
    invoke-static/range {v8 .. v15}, Lcom/facebook/ads/internal/exoplayer2/Format;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 64960
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64961
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 64962
    .end local v7    # "language":Ljava/lang/String;
    .end local v0    # "captionTypeByte":I
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v1    # "accessibilityChannel":I
    .end local v0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 64963
    .end local v5
    .end local v3    # "accessibilityChannel":I
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZY;->A01(III)Ljava/lang/String;

    move-result-object v9

    .line 64964
    .restart local v5    # "mimeType":Ljava/lang/String;
    const/4 v14, 0x1

    goto :goto_3

    .line 64965
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 64966
    .end local v0
    .end local v0
    :cond_3
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 64967
    .end local v0
    .end local v1
    .end local v0
    goto/16 :goto_0

    .line 64968
    :cond_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/DV;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/DV;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZY;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6

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

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZY;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x78t
        -0x69t
        -0x69t
        -0x6dt
        -0x70t
        -0x76t
        -0x78t
        -0x65t
        -0x70t
        -0x6at
        -0x6bt
        0x56t
        -0x76t
        -0x74t
        -0x78t
        0x54t
        0x5dt
        0x57t
        0x5ft
        -0x72t
        -0x63t
        -0x63t
        -0x67t
        -0x6at
        -0x70t
        -0x72t
        -0x5ft
        -0x6at
        -0x64t
        -0x65t
        0x5ct
        -0x70t
        -0x6et
        -0x72t
        0x5at
        0x64t
        0x5dt
        0x65t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ggGLmhyInJSffjkfPU8VRn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WisLA7DCjwWBxH7MqLlw8w9Z4gicIVYK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "baeaQjGS5RYnakDSUMD4HiL2ABi7hiKM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QvfNkpkg0VH"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "dkSLNeeU5ck3Twa6KyaCdOuwvlu7l8iW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "e6Ade"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "C9ShSy7zMtGRXyHgR8PAzFWulvZi4KLP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "w2lskP6GH6NJyN70rzATNYjf2L9mjjHA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZY;->A03:[Ljava/lang/String;

    return-void
.end method

.method private A04(I)Z
    .locals 1

    .line 64969
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZY;->A00:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A4K()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Db;",
            ">;"
        }
    .end annotation

    .line 64970
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public final A4P(ILcom/facebook/ads/redexgen/X/DY;)Lcom/facebook/ads/redexgen/X/Db;
    .locals 5

    .line 64971
    const/4 v3, 0x2

    if-eq p1, v3, :cond_f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    const/4 v1, 0x4

    if-eq p1, v1, :cond_e

    const/16 v0, 0xf

    const/4 v2, 0x0

    if-eq p1, v0, :cond_c

    const/16 v0, 0x11

    if-eq p1, v0, :cond_a

    const/16 v0, 0x15

    if-eq p1, v0, :cond_9

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_7

    const/16 v0, 0x24

    if-eq p1, v0, :cond_6

    const/16 v0, 0x59

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_4

    const/16 v0, 0x81

    if-eq p1, v0, :cond_3

    const/16 v0, 0x82

    if-eq p1, v0, :cond_4

    const/16 v4, 0x86

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZY;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/ZY;->A03:[Ljava/lang/String;

    const-string v1, "XLjLYE0qXOuIs9WeBuWhNfn9nKSLWrdd"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    if-eq p1, v4, :cond_1

    const/16 v0, 0x87

    if-eq p1, v0, :cond_3

    .line 64972
    return-object v2

    .line 64973
    :cond_1
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ZY;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-object v2

    .line 64974
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zl;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Zl;-><init>()V

    new-instance v2, Lcom/facebook/ads/redexgen/X/Zk;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Zk;-><init>(Lcom/facebook/ads/redexgen/X/DU;)V

    goto :goto_0

    .line 64975
    :cond_3
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/DY;->A01:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/ZU;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/ZU;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Lcom/facebook/ads/redexgen/X/DM;)V

    return-object v0

    .line 64976
    :cond_4
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/DY;->A01:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/ZZ;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/ZZ;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Lcom/facebook/ads/redexgen/X/DM;)V

    return-object v0

    .line 64977
    :cond_5
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/DY;->A02:Ljava/util/List;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Za;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Za;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Lcom/facebook/ads/redexgen/X/DM;)V

    return-object v0

    .line 64978
    :cond_6
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/ZY;->A00(Lcom/facebook/ads/redexgen/X/DY;)Lcom/facebook/ads/redexgen/X/DV;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Zd;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Zd;-><init>(Lcom/facebook/ads/redexgen/X/DV;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Lcom/facebook/ads/redexgen/X/DM;)V

    return-object v0

    .line 64979
    :cond_7
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/ZY;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_1
    return-object v2

    .line 64980
    :cond_8
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/ZY;->A00(Lcom/facebook/ads/redexgen/X/DY;)Lcom/facebook/ads/redexgen/X/DV;

    move-result-object v3

    const/4 v0, 0x1

    .line 64981
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ZY;->A04(I)Z

    move-result v2

    const/16 v0, 0x8

    .line 64982
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ZY;->A04(I)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zc;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Zc;-><init>(Lcom/facebook/ads/redexgen/X/DV;ZZ)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Lcom/facebook/ads/redexgen/X/DM;)V

    goto :goto_1

    .line 64983
    :cond_9
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ze;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Ze;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Lcom/facebook/ads/redexgen/X/DM;)V

    return-object v0

    .line 64984
    :cond_a
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/ZY;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_2
    return-object v2

    .line 64985
    :cond_b
    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/DY;->A01:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zf;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Zf;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Lcom/facebook/ads/redexgen/X/DM;)V

    goto :goto_2

    .line 64986
    :cond_c
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/ZY;->A04(I)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_3
    return-object v2

    .line 64987
    :cond_d
    const/4 v2, 0x0

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/DY;->A01:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZX;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/ZX;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Lcom/facebook/ads/redexgen/X/DM;)V

    goto :goto_3

    .line 64988
    :cond_e
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/DY;->A01:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Zg;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Zg;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Lcom/facebook/ads/redexgen/X/DM;)V

    return-object v0

    .line 64989
    :cond_f
    new-instance v1, Lcom/facebook/ads/redexgen/X/Zb;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Zb;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Lcom/facebook/ads/redexgen/X/DM;)V

    return-object v0
.end method
