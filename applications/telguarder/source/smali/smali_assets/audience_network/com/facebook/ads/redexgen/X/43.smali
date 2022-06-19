.class public final Lcom/facebook/ads/redexgen/X/43;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/42;
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/42;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/43;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/42;)V
    .locals 0

    .line 10282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10283
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/43;->A00:Lcom/facebook/ads/redexgen/X/42;

    .line 10284
    return-void
.end method

.method private A00(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3f;",
            ">;)I"
        }
    .end annotation

    .line 10285
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    const/4 v3, 0x0

    .line 10286
    .local p0, "foundNonMove":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 10287
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3f;

    .line 10288
    .local v3, "op1":Lcom/facebook/ads/redexgen/X/3f;
    iget v1, v0, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 10289
    if-eqz v3, :cond_1

    .line 10290
    return v2

    .line 10291
    :cond_0
    const/4 v3, 0x1

    .line 10292
    .end local v3    # "op1":Lcom/facebook/ads/redexgen/X/3f;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 10293
    .end local p1    # "i":I
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "38BUvIbHLDbVEwHTUqZEjAcKKxsNGmX5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "p0vzW6I4gLI48R4BRIcQXD8gYd41ooEG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8QwYXdqqKaGbzIDSTgbCVJKXXAIliYEs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OZBDmK7b42LM8Cki8N20GfAB7kYuLyNR"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WcRrzbR3yUfhKHb1MLgFAQXOsCsft4FL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0BsOuprTBD7Us4oteZih7bO3htEr9z"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5Em6dVly2YZXhW9TXTYqX0jWh990AdKk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "b1ZqFbTBEMtTBN3QMthBjvmE7EZSr4qo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/43;->A01:[Ljava/lang/String;

    return-void
.end method

.method private A02(Ljava/util/List;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3f;",
            ">;II)V"
        }
    .end annotation

    .line 10294
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    move v6, p2

    move-object v5, p1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/3f;

    .line 10295
    .local p0, "moveOp":Lcom/facebook/ads/redexgen/X/3f;
    move v8, p3

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/3f;

    .line 10296
    .local v9, "nextOp":Lcom/facebook/ads/redexgen/X/3f;
    iget v4, v9, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v0, 0x1

    if-eq v4, v0, :cond_4

    const/4 v3, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/43;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/43;->A01:[Ljava/lang/String;

    const-string v1, "iEOFu3i2zy2x90H3Yy5EXGuxjAMQutIn"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "hA62aEd2BUnUS1o4ByZpXsKhdjYFYmdN"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_3

    const/4 v3, 0x4

    sget-object v2, Lcom/facebook/ads/redexgen/X/43;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/43;->A01:[Ljava/lang/String;

    const-string v1, "xfqKpYPbGblh22zYmNz9UbGpmlZjdkfU"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_2

    goto :goto_0

    .line 10297
    :cond_2
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/43;->A05(Ljava/util/List;ILcom/facebook/ads/redexgen/X/3f;ILcom/facebook/ads/redexgen/X/3f;)V

    goto :goto_0

    .line 10298
    :cond_3
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/43;->A04(Ljava/util/List;ILcom/facebook/ads/redexgen/X/3f;ILcom/facebook/ads/redexgen/X/3f;)V

    .line 10299
    goto :goto_0

    .line 10300
    :cond_4
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/43;->A03(Ljava/util/List;ILcom/facebook/ads/redexgen/X/3f;ILcom/facebook/ads/redexgen/X/3f;)V

    .line 10301
    :goto_0
    return-void
.end method

.method private A03(Ljava/util/List;ILcom/facebook/ads/redexgen/X/3f;ILcom/facebook/ads/redexgen/X/3f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3f;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/3f;",
            "I",
            "Lcom/facebook/ads/redexgen/X/3f;",
            ")V"
        }
    .end annotation

    .line 10302
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    const/4 v2, 0x0

    .line 10303
    .local p0, "offset":I
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-ge v1, v0, :cond_0

    .line 10304
    add-int/lit8 v2, v2, -0x1

    .line 10305
    :cond_0
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-ge v1, v0, :cond_1

    .line 10306
    add-int/lit8 v2, v2, 0x1

    .line 10307
    :cond_1
    iget v1, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-gt v1, v0, :cond_2

    .line 10308
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 10309
    :cond_2
    iget v1, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    if-gt v1, v0, :cond_3

    .line 10310
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    .line 10311
    :cond_3
    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    add-int/2addr v0, v2

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 10312
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10313
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10314
    return-void
.end method

.method private final A04(Ljava/util/List;ILcom/facebook/ads/redexgen/X/3f;ILcom/facebook/ads/redexgen/X/3f;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3f;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/3f;",
            "I",
            "Lcom/facebook/ads/redexgen/X/3f;",
            ")V"
        }
    .end annotation

    .line 10315
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    const/4 v3, 0x0

    .line 10316
    .local p0, "extraRm":Lcom/facebook/ads/redexgen/X/3f;
    const/4 v8, 0x0

    .line 10317
    .local p1, "revertedMove":Z
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    const/4 v5, 0x1

    if-ge v1, v0, :cond_2

    .line 10318
    const/4 v7, 0x0

    .line 10319
    .local p2, "moveIsBackwards":Z
    iget v6, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v4, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/43;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/43;->A01:[Ljava/lang/String;

    const-string v1, "abfzyuRzjd5VUlyneEj1jv1Mmagrgc7m"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "Be6d1Znhs2BclXeLfOZgjFhQav2CfUty"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ne v6, v4, :cond_3

    iget v2, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    sub-int/2addr v1, v0

    if-ne v2, v1, :cond_3

    .line 10320
    const/4 v8, 0x1

    goto :goto_1

    .line 10321
    .end local p2    # "moveIsBackwards":Z
    :cond_2
    const/4 v7, 0x1

    .line 10322
    .restart local p2    # "moveIsBackwards":Z
    iget v6, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v4, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v4, v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/43;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/43;->A01:[Ljava/lang/String;

    const-string v1, "Wg77ES1yhfHAOLYXxlealU7fffg"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v6, v4, :cond_3

    iget v2, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr v1, v0

    if-ne v2, v1, :cond_3

    .line 10323
    const/4 v8, 0x1

    .line 10324
    :cond_3
    :goto_1
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    const/4 v4, 0x2

    if-ge v1, v0, :cond_8

    .line 10325
    iget v6, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    sub-int/2addr v6, v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/43;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/43;->A01:[Ljava/lang/String;

    const-string v1, "vvhOnYXvikxGQPzhwWr9eBmzSm4sqJ5u"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "6nJGkOHp5PQxR5jOCYWHpmVOgNdssKkD"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput v6, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 10326
    :cond_4
    :goto_2
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-gt v1, v0, :cond_6

    .line 10327
    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    add-int/2addr v0, v5

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 10328
    .end local p3    # null:Lcom/facebook/ads/redexgen/X/3f;
    :cond_5
    :goto_3
    if-eqz v8, :cond_a

    .line 10329
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10330
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A00:Lcom/facebook/ads/redexgen/X/42;

    invoke-interface {v0, p3}, Lcom/facebook/ads/redexgen/X/42;->ACu(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 10332
    return-void

    .line 10333
    :cond_6
    iget v2, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v1, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v1, v0

    if-ge v2, v1, :cond_5

    .line 10334
    iget v3, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v3, v0

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    sub-int/2addr v3, v0

    .line 10335
    .local p3, "remaining":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/43;->A00:Lcom/facebook/ads/redexgen/X/42;

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    add-int/2addr v1, v5

    const/4 v0, 0x0

    invoke-interface {v2, v4, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/42;->A9F(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;

    move-result-object v3

    .line 10336
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    sub-int/2addr v1, v0

    iput v1, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    goto :goto_3

    :cond_7
    iput v6, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    goto :goto_2

    .line 10337
    :cond_8
    iget v2, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v1, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v1, v0

    if-ge v2, v1, :cond_4

    .line 10338
    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr v0, v5

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    .line 10339
    iput v4, p3, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    .line 10340
    iput v5, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    .line 10341
    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    if-nez v0, :cond_9

    .line 10342
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A00:Lcom/facebook/ads/redexgen/X/42;

    invoke-interface {v0, p5}, Lcom/facebook/ads/redexgen/X/42;->ACu(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 10344
    :cond_9
    return-void

    .line 10345
    :cond_a
    if-eqz v7, :cond_f

    .line 10346
    if-eqz v3, :cond_c

    .line 10347
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-le v1, v0, :cond_b

    .line 10348
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 10349
    :cond_b
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-le v1, v0, :cond_c

    .line 10350
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    .line 10351
    :cond_c
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-le v1, v0, :cond_d

    .line 10352
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 10353
    :cond_d
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-le v1, v0, :cond_e

    .line 10354
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    .line 10355
    :cond_e
    :goto_4
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10356
    iget v5, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v4, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/43;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_14

    goto/16 :goto_0

    .line 10357
    :cond_f
    if-eqz v3, :cond_12

    .line 10358
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-lt v1, v0, :cond_11

    .line 10359
    iget v4, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/43;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_10
    sget-object v2, Lcom/facebook/ads/redexgen/X/43;->A01:[Ljava/lang/String;

    const-string v1, "7SyKS0d0M1Y61G9cvJhPjcIZJT5r368u"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "wzhUUPPPyHt3RB3eN8Avjqw6LiTCAMlw"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr v4, v0

    iput v4, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 10360
    :cond_11
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-lt v1, v0, :cond_12

    .line 10361
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    .line 10362
    :cond_12
    iget v5, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v4, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/43;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/43;->A01:[Ljava/lang/String;

    const-string v1, "ZtAl6w2BEcS5qvbLOlXkXD4ean6j84cJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "pYYzWMtUjC8C97iC0eJZXoVp5PxbMfrE"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-lt v5, v4, :cond_13

    .line 10363
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 10364
    :cond_13
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-lt v1, v0, :cond_e

    .line 10365
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    goto/16 :goto_4

    :cond_14
    sget-object v2, Lcom/facebook/ads/redexgen/X/43;->A01:[Ljava/lang/String;

    const-string v1, "wDMlnvTOUXUwYMqpd2lURg4fxQEaC4Cv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "jkcDNpQJuRulHw51UCE8QIHS9dIeuvDA"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eq v5, v4, :cond_16

    .line 10366
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10367
    :goto_5
    if-eqz v3, :cond_15

    .line 10368
    invoke-interface {p1, p2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10369
    :cond_15
    return-void

    .line 10370
    :cond_16
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5
.end method

.method private final A05(Ljava/util/List;ILcom/facebook/ads/redexgen/X/3f;ILcom/facebook/ads/redexgen/X/3f;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3f;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/3f;",
            "I",
            "Lcom/facebook/ads/redexgen/X/3f;",
            ")V"
        }
    .end annotation

    .line 10371
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    const/4 v6, 0x0

    .line 10372
    .local p0, "extraUp1":Lcom/facebook/ads/redexgen/X/3f;
    const/4 v4, 0x0

    .line 10373
    .local p1, "extraUp2":Lcom/facebook/ads/redexgen/X/3f;
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    const/4 v3, 0x4

    const/4 v5, 0x1

    if-ge v1, v0, :cond_6

    .line 10374
    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    sub-int/2addr v0, v5

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 10375
    :cond_0
    :goto_0
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-gt v1, v0, :cond_5

    .line 10376
    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    add-int/2addr v0, v5

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 10377
    .end local p2    # null:I
    :cond_1
    :goto_1
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10378
    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    if-lez v0, :cond_4

    .line 10379
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10380
    :goto_2
    if-eqz v6, :cond_2

    .line 10381
    invoke-interface {p1, p2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10382
    :cond_2
    if-eqz v4, :cond_3

    .line 10383
    invoke-interface {p1, p2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10384
    :cond_3
    return-void

    .line 10385
    :cond_4
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/43;->A00:Lcom/facebook/ads/redexgen/X/42;

    invoke-interface {v0, p5}, Lcom/facebook/ads/redexgen/X/42;->ACu(Lcom/facebook/ads/redexgen/X/3f;)V

    goto :goto_2

    .line 10387
    :cond_5
    iget v2, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v1, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v1, v0

    if-ge v2, v1, :cond_1

    .line 10388
    iget v7, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v7, v0

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    sub-int/2addr v7, v0

    .line 10389
    .local p2, "remaining":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/43;->A00:Lcom/facebook/ads/redexgen/X/42;

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    add-int/2addr v1, v5

    iget-object v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    invoke-interface {v2, v3, v1, v7, v0}, Lcom/facebook/ads/redexgen/X/42;->A9F(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;

    move-result-object v4

    .line 10390
    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr v0, v7

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    goto :goto_1

    .line 10391
    :cond_6
    iget v2, p3, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v1, p5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v1, v0

    if-ge v2, v1, :cond_0

    .line 10392
    iget v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr v0, v5

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    .line 10393
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/43;->A00:Lcom/facebook/ads/redexgen/X/42;

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget-object v0, p5, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    invoke-interface {v2, v3, v1, v5, v0}, Lcom/facebook/ads/redexgen/X/42;->A9F(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method public final A06(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3f;",
            ">;)V"
        }
    .end annotation

    .line 10394
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/43;->A00(Ljava/util/List;)I

    move-result v1

    .local p1, "badMove":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 10395
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/43;->A02(Ljava/util/List;II)V

    goto :goto_0

    .line 10396
    :cond_0
    return-void
.end method
