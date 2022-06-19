.class public final Lcom/facebook/ads/redexgen/X/Un;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DU;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Um;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PmtReader"
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Db;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Landroid/util/SparseIntArray;

.field public final A03:Lcom/facebook/ads/redexgen/X/IL;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/Um;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Un;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Um;I)V
    .locals 2

    .line 57236
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57237
    const/4 v0, 0x5

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A03:Lcom/facebook/ads/redexgen/X/IL;

    .line 57238
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:Landroid/util/SparseArray;

    .line 57239
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A02:Landroid/util/SparseIntArray;

    .line 57240
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Un;->A00:I

    .line 57241
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/redexgen/X/DY;
    .locals 12

    .line 57242
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v9

    .line 57243
    .local p1, "descriptorsStartPosition":I
    add-int v10, v9, p2

    .line 57244
    .local p2, "descriptorsEndPosition":I
    const/4 v8, -0x1

    .line 57245
    .local p1, "streamType":I
    const/4 v7, 0x0

    .line 57246
    .local v9, "language":Ljava/lang/String;
    const/4 v5, 0x0

    .line 57247
    .local v10, "dvbSubtitleInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    if-ge v0, v10, :cond_a

    .line 57248
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v4

    .line 57249
    .local v8, "descriptorTag":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    .line 57250
    .local v7, "descriptorLength":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v11

    add-int/2addr v11, v0

    .line 57251
    .local v5, "positionOfNextDescriptor":I
    const/4 v0, 0x5

    if-ne v4, v0, :cond_3

    .line 57252
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v3

    .line 57253
    .local v0, "formatIdentifier":J
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Um;->A06()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 57254
    const/16 v8, 0x81

    .line 57255
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    sub-int/2addr v11, v0

    invoke-virtual {p1, v11}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 57256
    .end local v8    # "descriptorTag":I
    .end local v7    # "descriptorLength":I
    .end local v5    # "positionOfNextDescriptor":I
    goto :goto_0

    .line 57257
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Um;->A04()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 57258
    const/16 v8, 0x87

    goto :goto_1

    .line 57259
    :cond_2
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Um;->A05()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 57260
    const/16 v8, 0x24

    goto :goto_1

    .line 57261
    :cond_3
    const/16 v3, 0x6a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Un;->A05:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/Un;->A05:[Ljava/lang/String;

    const-string v1, "HTY2l"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "1ztYif6arKV8xXn"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_4

    .line 57262
    const/16 v8, 0x81

    goto :goto_1

    .line 57263
    :cond_4
    const/16 v0, 0x7a

    if-ne v4, v0, :cond_5

    .line 57264
    const/16 v8, 0x87

    goto :goto_1

    .line 57265
    :cond_5
    const/16 v0, 0x7b

    if-ne v4, v0, :cond_6

    .line 57266
    const/16 v8, 0x8a

    goto :goto_1

    .line 57267
    :cond_6
    const/16 v0, 0xa

    const/4 v6, 0x3

    if-ne v4, v0, :cond_7

    .line 57268
    invoke-virtual {p1, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0T(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 57269
    :cond_7
    const/16 v3, 0x59

    sget-object v1, Lcom/facebook/ads/redexgen/X/Un;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Un;->A05:[Ljava/lang/String;

    const-string v1, "dWlTBZl9odYf4Rye"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_0

    .line 57270
    const/16 v8, 0x59

    .line 57271
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 57272
    :goto_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    if-ge v0, v11, :cond_0

    .line 57273
    invoke-virtual {p1, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0T(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 57274
    .local v0, "dvbLanguage":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v3

    .line 57275
    .local v0, "dvbSubtitlingType":I
    const/4 v2, 0x4

    new-array v1, v2, [B

    .line 57276
    .local v11, "initializationData":[B
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 57277
    new-instance v0, Lcom/facebook/ads/redexgen/X/DX;

    invoke-direct {v0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/DX;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57278
    .end local v0    # "dvbSubtitlingType":I
    .end local v0
    .end local v11    # "initializationData":[B
    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57279
    :cond_a
    invoke-virtual {p1, v10}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 57280
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 57281
    invoke-static {v0, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/DY;

    invoke-direct {v0, v8, v7, v5, v1}, Lcom/facebook/ads/redexgen/X/DY;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 57282
    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5NoDTIjI23Sn4TyS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "npJNOZan3glglWE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "02aBuYbUCdVQ8XHDG6IlsVW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "MtL4k6dSwFy1EbbJ8s4GL9mzhSezyvKi"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YaSEGOvqS0iGPgkZqB3b7gdLt73fngXn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jPINp4uUlGW"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "3xDyl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Bdk9hY5rqQrzcO5arV36lkFapo7Ywg6K"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Un;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A45(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 13

    .line 57283
    move-object v4, p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    .line 57284
    .local v4, "tableId":I
    const/4 v7, 0x2

    if-eq v0, v7, :cond_0

    .line 57285
    return-void

    .line 57286
    :cond_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A02(Lcom/facebook/ads/redexgen/X/Um;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A02(Lcom/facebook/ads/redexgen/X/Um;)I

    move-result v0

    if-eq v0, v7, :cond_1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A00(Lcom/facebook/ads/redexgen/X/Um;)I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 57287
    .end local v0
    :cond_1
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A0E(Lcom/facebook/ads/redexgen/X/Um;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/IY;

    .line 57288
    .restart local v0
    :goto_0
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 57289
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v8

    .line 57290
    .local v0, "programNumber":I
    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 57291
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A03:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {p1, v0, v7}, Lcom/facebook/ads/redexgen/X/IM;->A0b(Lcom/facebook/ads/redexgen/X/IL;I)V

    .line 57292
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A03:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v11, 0x4

    invoke-virtual {v0, v11}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57293
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A03:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 57294
    .local v1, "programInfoLength":I
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 57295
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A02(Lcom/facebook/ads/redexgen/X/Um;)I

    move-result v0

    const/16 v6, 0x2000

    const/16 v10, 0x15

    if-ne v0, v7, :cond_2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A0B(Lcom/facebook/ads/redexgen/X/Um;)Lcom/facebook/ads/redexgen/X/Db;

    move-result-object v0

    if-nez v0, :cond_2

    .line 57296
    new-array v1, v2, [B

    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/DY;

    invoke-direct {v2, v10, v0, v0, v1}, Lcom/facebook/ads/redexgen/X/DY;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 57297
    .local v7, "dummyEsInfo":Lcom/facebook/ads/redexgen/X/DY;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Um;->A0A(Lcom/facebook/ads/redexgen/X/Um;)Lcom/facebook/ads/redexgen/X/DZ;

    move-result-object v0

    invoke-interface {v0, v10, v2}, Lcom/facebook/ads/redexgen/X/DZ;->A4M(ILcom/facebook/ads/redexgen/X/DY;)Lcom/facebook/ads/redexgen/X/Db;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Um;->A0C(Lcom/facebook/ads/redexgen/X/Um;Lcom/facebook/ads/redexgen/X/Db;)Lcom/facebook/ads/redexgen/X/Db;

    .line 57298
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A0B(Lcom/facebook/ads/redexgen/X/Um;)Lcom/facebook/ads/redexgen/X/Db;

    move-result-object v2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    .line 57299
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A09(Lcom/facebook/ads/redexgen/X/Um;)Lcom/facebook/ads/redexgen/X/CI;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Da;

    invoke-direct {v0, v8, v10, v6}, Lcom/facebook/ads/redexgen/X/Da;-><init>(III)V

    .line 57300
    invoke-interface {v2, v9, v1, v0}, Lcom/facebook/ads/redexgen/X/Db;->A7u(Lcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V

    .line 57301
    .end local v7    # "dummyEsInfo":Lcom/facebook/ads/redexgen/X/DY;
    :cond_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 57302
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 57303
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v12

    .line 57304
    .local v7, "remainingEntriesLength":I
    :goto_1
    if-lez v12, :cond_a

    .line 57305
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A03:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {p1, v0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0b(Lcom/facebook/ads/redexgen/X/IL;I)V

    .line 57306
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Un;->A03:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 57307
    .local v0, "streamType":I
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Un;->A03:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57308
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Un;->A03:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v5

    .line 57309
    .local v0, "elementaryPid":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A03:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v11}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 57310
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A03:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    .line 57311
    .local v0, "esInfoLength":I
    invoke-direct {v4, p1, v3}, Lcom/facebook/ads/redexgen/X/Un;->A00(Lcom/facebook/ads/redexgen/X/IM;I)Lcom/facebook/ads/redexgen/X/DY;

    move-result-object v1

    .line 57312
    .local v2, "esInfo":Lcom/facebook/ads/redexgen/X/DY;
    const/4 v0, 0x6

    if-ne v2, v0, :cond_3

    .line 57313
    iget v2, v1, Lcom/facebook/ads/redexgen/X/DY;->A00:I

    .line 57314
    :cond_3
    add-int/lit8 v0, v3, 0x5

    sub-int/2addr v12, v0

    .line 57315
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A02(Lcom/facebook/ads/redexgen/X/Um;)I

    move-result v0

    if-ne v0, v7, :cond_8

    move v3, v2

    .line 57316
    .local v0, "trackId":I
    :goto_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A08(Lcom/facebook/ads/redexgen/X/Um;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 57317
    :cond_4
    :goto_3
    const/4 v5, 0x5

    const/4 v11, 0x4

    const/16 v3, 0xc

    const/16 v10, 0x15

    goto :goto_1

    .line 57318
    :cond_5
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A02(Lcom/facebook/ads/redexgen/X/Um;)I

    move-result v0

    if-ne v0, v7, :cond_7

    if-ne v2, v10, :cond_7

    .line 57319
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A0B(Lcom/facebook/ads/redexgen/X/Um;)Lcom/facebook/ads/redexgen/X/Db;

    move-result-object v10

    .line 57320
    .local v0, "reader":Lcom/facebook/ads/redexgen/X/Db;
    :goto_4
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A02(Lcom/facebook/ads/redexgen/X/Um;)I

    move-result v0

    if-ne v0, v7, :cond_6

    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/Un;->A02:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Un;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_b

    .line 57321
    sget-object v2, Lcom/facebook/ads/redexgen/X/Un;->A05:[Ljava/lang/String;

    const-string v1, "KyPedoIZdTnqzoCmQeHczwl"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v11, v3, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 57322
    :cond_6
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 57323
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 57324
    :cond_7
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A0A(Lcom/facebook/ads/redexgen/X/Um;)Lcom/facebook/ads/redexgen/X/DZ;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/DZ;->A4M(ILcom/facebook/ads/redexgen/X/DY;)Lcom/facebook/ads/redexgen/X/Db;

    move-result-object v10

    goto :goto_4

    .line 57325
    :cond_8
    move v3, v5

    goto :goto_2

    .line 57326
    :cond_9
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    .line 57327
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A0E(Lcom/facebook/ads/redexgen/X/Um;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IY;->A04()J

    move-result-wide v0

    new-instance v9, Lcom/facebook/ads/redexgen/X/IY;

    invoke-direct {v9, v0, v1}, Lcom/facebook/ads/redexgen/X/IY;-><init>(J)V

    .line 57328
    .local v0, "timestampAdjuster":Lcom/facebook/ads/redexgen/X/IY;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A0E(Lcom/facebook/ads/redexgen/X/Um;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 57329
    :cond_a
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 57330
    .local v0, "trackIdCount":I
    const/4 v3, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v3, v5, :cond_f

    .line 57331
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    .line 57332
    .restart local v0    # "trackIdCount":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A08(Lcom/facebook/ads/redexgen/X/Um;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v10, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 57333
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A01:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Db;

    .line 57334
    .restart local v0    # "trackIdCount":I
    if-eqz v2, :cond_e

    .line 57335
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A0B(Lcom/facebook/ads/redexgen/X/Um;)Lcom/facebook/ads/redexgen/X/Db;

    move-result-object v12

    sget-object v1, Lcom/facebook/ads/redexgen/X/Un;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_c

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_c
    sget-object v11, Lcom/facebook/ads/redexgen/X/Un;->A05:[Ljava/lang/String;

    const-string v1, "PUXRk"

    const/4 v0, 0x6

    aput-object v1, v11, v0

    const-string v1, "PfWJDK62P2lkkWj"

    const/4 v0, 0x1

    aput-object v1, v11, v0

    if-eq v2, v12, :cond_d

    .line 57336
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    .line 57337
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A09(Lcom/facebook/ads/redexgen/X/Um;)Lcom/facebook/ads/redexgen/X/CI;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Da;

    invoke-direct {v0, v8, v10, v6}, Lcom/facebook/ads/redexgen/X/Da;-><init>(III)V

    .line 57338
    invoke-interface {v2, v9, v1, v0}, Lcom/facebook/ads/redexgen/X/Db;->A7u(Lcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V

    .line 57339
    :cond_d
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A07(Lcom/facebook/ads/redexgen/X/Um;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A02:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57340
    .end local v0    # "trackIdCount":I
    .end local v0
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 57341
    .end local v2    # "i":I
    :cond_f
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A02(Lcom/facebook/ads/redexgen/X/Um;)I

    move-result v0

    if-ne v0, v7, :cond_11

    .line 57342
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A0I(Lcom/facebook/ads/redexgen/X/Um;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 57343
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Un;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_15

    sget-object v2, Lcom/facebook/ads/redexgen/X/Un;->A05:[Ljava/lang/String;

    const-string v1, "Nd943yRvQYFo9TxNK2QJynfXQib2en8h"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "GVwFy7jSiIq7HIw0ivDN5IwF48OVbL11"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Um;->A09(Lcom/facebook/ads/redexgen/X/Um;)Lcom/facebook/ads/redexgen/X/CI;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CI;->A59()V

    .line 57344
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Um;->A03(Lcom/facebook/ads/redexgen/X/Um;I)I

    .line 57345
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Um;->A0J(Lcom/facebook/ads/redexgen/X/Um;Z)Z

    .line 57346
    :cond_10
    :goto_6
    return-void

    .line 57347
    :cond_11
    const/4 v0, 0x0

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Um;->A07(Lcom/facebook/ads/redexgen/X/Um;)Landroid/util/SparseArray;

    move-result-object v2

    iget v1, v4, Lcom/facebook/ads/redexgen/X/Un;->A00:I

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 57348
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Um;->A02(Lcom/facebook/ads/redexgen/X/Um;)I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_12

    :goto_7
    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/Um;->A03(Lcom/facebook/ads/redexgen/X/Um;I)I

    .line 57349
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A00(Lcom/facebook/ads/redexgen/X/Um;)I

    move-result v0

    if-nez v0, :cond_10

    .line 57350
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Um;->A09(Lcom/facebook/ads/redexgen/X/Um;)Lcom/facebook/ads/redexgen/X/CI;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CI;->A59()V

    .line 57351
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Un;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_14

    sget-object v2, Lcom/facebook/ads/redexgen/X/Un;->A05:[Ljava/lang/String;

    const-string v1, "Ez9NUgIDX7KFAbA5cC8Toaxnxxf7Gx5"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x1

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Um;->A0J(Lcom/facebook/ads/redexgen/X/Um;Z)Z

    goto :goto_6

    .line 57352
    :cond_12
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/Un;->A04:Lcom/facebook/ads/redexgen/X/Um;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Un;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_13

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Um;->A00(Lcom/facebook/ads/redexgen/X/Um;)I

    move-result v0

    sub-int/2addr v0, v5

    goto :goto_7

    :cond_13
    sget-object v2, Lcom/facebook/ads/redexgen/X/Un;->A05:[Ljava/lang/String;

    const-string v1, "7UpJXCteBIEvdeJ0Yk5hvhsNprnNuBhb"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Um;->A00(Lcom/facebook/ads/redexgen/X/Um;)I

    move-result v0

    sub-int/2addr v0, v5

    goto :goto_7

    :cond_14
    sget-object v2, Lcom/facebook/ads/redexgen/X/Un;->A05:[Ljava/lang/String;

    const-string v1, "QGl2QpL6mTKnDmHuQk07LKjVpBBerzDw"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Um;->A0J(Lcom/facebook/ads/redexgen/X/Um;Z)Z

    goto :goto_6

    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A7u(Lcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 0

    .line 57353
    return-void
.end method
