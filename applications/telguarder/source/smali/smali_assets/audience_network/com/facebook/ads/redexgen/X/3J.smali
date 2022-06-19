.class public final Lcom/facebook/ads/redexgen/X/3J;
.super Lcom/facebook/ads/redexgen/X/BR;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/GJ;,
        Lcom/facebook/ads/redexgen/X/GK;
    }
.end annotation


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/GJ;

.field public A02:Lcom/facebook/ads/redexgen/X/GK;

.field public A03:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;"
        }
    .end annotation
.end field

.field public A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:I

.field public final A06:Lcom/facebook/ads/redexgen/X/IL;

.field public final A07:Lcom/facebook/ads/redexgen/X/IM;

.field public final A08:[Lcom/facebook/ads/redexgen/X/GJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3J;->A0A()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3J;->A09()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 8284
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BR;-><init>()V

    .line 8285
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A07:Lcom/facebook/ads/redexgen/X/IM;

    .line 8286
    new-instance v0, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IL;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    .line 8287
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3J;->A05:I

    .line 8288
    const/16 v3, 0x8

    new-array v0, v3, [Lcom/facebook/ads/redexgen/X/GJ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    .line 8289
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 8290
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/GJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/GJ;-><init>()V

    aput-object v0, v1, v2

    .line 8291
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8292
    .end local p1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    .line 8293
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A08()V

    .line 8294
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/3J;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "1KsmH41dWKuSqckGP2PGI0hYQgk4z35x"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x77

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GB;",
            ">;"
        }
    .end annotation

    .line 8295
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8296
    .local p0, "displayCues":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/text/cea/Cea708Cue;>;"
    const/4 v4, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v0, 0x8

    if-ge v4, v0, :cond_2

    .line 8297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0I()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A06()Lcom/facebook/ads/redexgen/X/UH;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "PyTiGNHZMMwfvRUzqEHinLMhMaTTZLGP"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "beFUv2CIAEPmdr3sOedzRLMrvc226GbM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8299
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8300
    .end local v5    # "i":I
    :cond_2
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 8301
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private A02()V
    .locals 1

    .line 8302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    if-nez v0, :cond_0

    .line 8303
    return-void

    .line 8304
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A07()V

    .line 8305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    .line 8306
    return-void
.end method

.method private A03()V
    .locals 9

    .line 8307
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 8308
    .local p0, "textTag":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    .line 8309
    .local v1, "offset":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    .line 8310
    .local v5, "penSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v5

    .line 8311
    .local v0, "italicsToggle":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v6

    .line 8312
    .local v6, "underlineToggle":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v7

    .line 8313
    .local v0, "edgeType":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v8

    .line 8314
    .local v1, "fontStyle":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    invoke-virtual/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/GJ;->A0D(IIIZZII)V

    .line 8315
    return-void
.end method

.method private A04()V
    .locals 6

    .line 8316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    .line 8317
    .local p0, "foregroundO":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 8318
    .local v5, "foregroundR":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 8319
    .local v3, "foregroundG":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 8320
    .local v0, "foregroundB":I
    invoke-static {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/GJ;->A01(IIII)I

    move-result v4

    .line 8321
    .local v2, "foregroundColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    .line 8322
    .local v0, "backgroundO":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 8323
    .local v1, "backgroundR":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 8324
    .local v0, "backgroundG":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 8325
    .local v0, "backgroundB":I
    invoke-static {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/GJ;->A01(IIII)I

    move-result v3

    .line 8326
    .local v4, "backgroundColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 8328
    .local v0, "edgeR":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 8329
    .local v3, "edgeG":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 8330
    .local v0, "edgeB":I
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A00(III)I

    move-result v1

    .line 8331
    .local v0, "edgeColor":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    invoke-virtual {v0, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/GJ;->A0C(III)V

    .line 8332
    return-void
.end method

.method private A05()V
    .locals 3

    .line 8333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 8335
    .local p0, "row":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8336
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 8337
    .local v0, "column":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/GJ;->A0B(II)V

    .line 8338
    return-void
.end method

.method private A06()V
    .locals 12

    .line 8339
    move-object v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v5

    .line 8340
    .local v2, "fillO":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    .line 8341
    .local v4, "fillR":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 8342
    .local v5, "fillG":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 8343
    .local v0, "fillB":I
    invoke-static {v3, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/GJ;->A01(IIII)I

    move-result v5

    .line 8344
    .local v0, "fillColor":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v8

    .line 8345
    .local v3, "borderType":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    .line 8346
    .local v3, "borderR":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 8347
    .local v8, "borderG":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 8348
    .local v0, "borderB":I
    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A00(III)I

    move-result v6

    .line 8349
    .local v0, "borderColor":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8350
    or-int/lit8 v8, v8, 0x4

    .line 8351
    .end local v3    # "borderR":I
    .local v1, "borderType":I
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v7

    sget-object v3, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v3, v0

    const/4 v0, 0x6

    aget-object v0, v3, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8352
    .local v0, "wordWrapToggle":Z
    :cond_1
    sget-object v3, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "GMhmNWkWDhqaY2lvNy5DrMZXaPDtmCAO"

    const/4 v0, 0x4

    aput-object v1, v3, v0

    const-string v1, "QHvEX2MCx6LzZ5K1UcsCx5OB8NkKUJA6"

    const/4 v0, 0x0

    aput-object v1, v3, v0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v9

    .line 8353
    .local v0, "printDirection":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v10

    .line 8354
    .local v6, "scrollDirection":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v11

    .line 8355
    .local v0, "justification":I
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8356
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    .end local v0    # "justification":I
    .local v0, "borderB":I
    .end local v8    # "borderG":I
    .local v0, "borderG":I
    invoke-virtual/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/GJ;->A0E(IIZIIII)V

    .line 8357
    return-void
.end method

.method private A07()V
    .locals 9

    .line 8358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GK;->A01:I

    const/4 v3, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, -0x1

    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v5

    if-eq v6, v4, :cond_0

    .line 8359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb4

    const/16 v1, 0x27

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GK;->A01:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x39

    const/16 v1, 0x17

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x12

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GK;->A02:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    const/16 v1, 0x12

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8360
    return-void

    .line 8361
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GK;->A03:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A0D([BI)V

    .line 8362
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    .line 8363
    .local p0, "serviceNumber":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 8364
    .local v0, "blockSize":I
    const/4 v0, 0x7

    if-ne v4, v0, :cond_1

    .line 8365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8366
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    add-int/2addr v4, v0

    .line 8367
    :cond_1
    if-nez v2, :cond_3

    .line 8368
    if-eqz v4, :cond_2

    .line 8369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x196

    const/16 v1, 0x1b

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    const/16 v1, 0x15

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8370
    :cond_2
    return-void

    .line 8371
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A05:I

    if-eq v4, v0, :cond_4

    .line 8372
    return-void

    .line 8373
    :cond_4
    const/4 v8, 0x0

    .line 8374
    .local v6, "cuesNeedUpdate":Z
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A02()I

    move-result v0

    if-lez v0, :cond_e

    .line 8375
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    .line 8376
    .local v0, "command":I
    const/16 v0, 0x10

    const/16 v6, 0xff

    const/16 v3, 0x9f

    const/16 v2, 0x7f

    const/16 v1, 0x1f

    if-eq v4, v0, :cond_9

    .line 8377
    if-gt v4, v1, :cond_5

    .line 8378
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/3J;->A0B(I)V

    goto :goto_0

    .line 8379
    :cond_5
    if-gt v4, v2, :cond_6

    .line 8380
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/3J;->A0G(I)V

    .line 8381
    const/4 v8, 0x1

    goto :goto_0

    .line 8382
    :cond_6
    if-gt v4, v3, :cond_7

    .line 8383
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/3J;->A0C(I)V

    .line 8384
    const/4 v8, 0x1

    goto :goto_0

    .line 8385
    :cond_7
    if-gt v4, v6, :cond_8

    .line 8386
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/3J;->A0H(I)V

    .line 8387
    const/4 v8, 0x1

    goto :goto_0

    .line 8388
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x166

    const/16 v1, 0x16

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8389
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v4

    .line 8390
    if-gt v4, v1, :cond_a

    .line 8391
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/3J;->A0D(I)V

    goto :goto_0

    .line 8392
    :cond_a
    if-gt v4, v2, :cond_b

    .line 8393
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/3J;->A0I(I)V

    .line 8394
    const/4 v8, 0x1

    goto :goto_0

    .line 8395
    :cond_b
    if-gt v4, v3, :cond_c

    .line 8396
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/3J;->A0E(I)V

    goto :goto_0

    .line 8397
    :cond_c
    if-gt v4, v6, :cond_d

    .line 8398
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/3J;->A0J(I)V

    .line 8399
    const/4 v8, 0x1

    goto :goto_0

    .line 8400
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17c

    const/16 v1, 0x1a

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8401
    :cond_e
    if-eqz v8, :cond_f

    .line 8402
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A03:Ljava/util/List;

    .line 8403
    :cond_f
    return-void
.end method

.method private A08()V
    .locals 2

    .line 8404
    const/4 v1, 0x0

    .local p0, "i":I
    :goto_0
    const/16 v0, 0x8

    if-ge v1, v0, :cond_0

    .line 8405
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A09()V

    .line 8406
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8407
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x1b1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/3J;->A09:[B

    return-void

    :array_0
    .array-data 1
        0x15t
        0x1dt
        0x68t
        0x5at
        0x66t
        0x6at
        0x5at
        0x63t
        0x58t
        0x5at
        0x15t
        0x63t
        0x6at
        0x62t
        0x57t
        0x5at
        0x67t
        0x15t
        0x0t
        -0x9t
        0x4et
        0x3ft
        0x3ct
        0x45t
        -0x9t
        0x39t
        0x43t
        0x46t
        0x3at
        0x42t
        0x2at
        0x40t
        0x51t
        0x3ct
        -0x9t
        0x40t
        0x4at
        -0x9t
        0x7t
        -0x15t
        -0x3t
        -0x1et
        0x2bt
        0x29t
        0x30t
        0x31t
        0x34t
        0x2bt
        0x30t
        0x29t
        -0x1et
        0x32t
        0x23t
        0x25t
        0x2dt
        0x27t
        0x36t
        -0x3dt
        -0x49t
        -0x7t
        0xct
        0xbt
        -0x49t
        -0x6t
        0xct
        0x9t
        0x9t
        -0x4t
        0x5t
        0xbt
        -0x49t
        0x0t
        0x5t
        -0x5t
        -0x4t
        0xft
        -0x49t
        0x0t
        0xat
        -0x49t
        -0x27t
        -0x5t
        -0x9t
        -0x33t
        -0x3at
        -0x32t
        -0x26t
        -0x5t
        -0x7t
        0x5t
        -0x6t
        -0x5t
        0x8t
        -0x3t
        0x2ft
        0x2ct
        0x2ct
        0x1ft
        0x28t
        0x2et
        0x26t
        0x33t
        -0x26t
        0x2ft
        0x28t
        0x2dt
        0x2ft
        0x2at
        0x2at
        0x29t
        0x2ct
        0x2et
        0x1ft
        0x1et
        -0x26t
        -0x3t
        0x9t
        0x7t
        0x7t
        -0x5t
        0x8t
        -0x2t
        0x19t
        -0x1t
        0x12t
        0xet
        -0x15t
        -0x26t
        -0x3t
        0x29t
        0x27t
        0x27t
        0x1bt
        0x28t
        0x1et
        -0xct
        -0x26t
        -0x29t
        0x9t
        0x6t
        0x6t
        -0x7t
        0x2t
        0x8t
        0x0t
        0xdt
        -0x4ct
        0x9t
        0x2t
        0x7t
        0x9t
        0x4t
        0x4t
        0x3t
        0x6t
        0x8t
        -0x7t
        -0x8t
        -0x4ct
        -0x29t
        -0x1dt
        -0x1ft
        -0x1ft
        -0x2bt
        -0x1et
        -0x28t
        -0xdt
        -0x1ct
        -0x3bt
        -0x36t
        -0x4ct
        -0x29t
        0x3t
        0x1t
        0x1t
        -0xbt
        0x2t
        -0x8t
        -0x32t
        -0x4ct
        -0x34t
        -0x4t
        -0x2t
        -0x35t
        -0x15t
        -0x28t
        -0x17t
        -0x15t
        -0xdt
        -0x13t
        -0x4t
        -0x58t
        -0x13t
        -0xat
        -0x14t
        -0x13t
        -0x14t
        -0x58t
        -0x8t
        -0x6t
        -0x13t
        -0xbt
        -0x17t
        -0x4t
        -0x3t
        -0x6t
        -0x13t
        -0xct
        0x1t
        -0x3dt
        -0x58t
        -0x5t
        -0xft
        0x2t
        -0x13t
        -0x58t
        -0xft
        -0x5t
        -0x58t
        -0x25t
        0x4t
        -0x7t
        0x5t
        0xbt
        0x4t
        0xat
        -0x5t
        0x8t
        -0x5t
        -0x6t
        -0x4at
        -0x26t
        -0x16t
        -0x14t
        -0x27t
        -0x27t
        -0xbt
        -0x1at
        -0x29t
        -0x27t
        -0x1ft
        -0x25t
        -0x16t
        -0xbt
        -0x26t
        -0x29t
        -0x16t
        -0x29t
        -0x4at
        -0x8t
        -0x5t
        -0x4t
        0x5t
        0x8t
        -0x5t
        -0x4at
        -0x26t
        -0x16t
        -0x14t
        -0x27t
        -0x27t
        -0xbt
        -0x1at
        -0x29t
        -0x27t
        -0x1ft
        -0x25t
        -0x16t
        -0xbt
        -0x17t
        -0x16t
        -0x29t
        -0x18t
        -0x16t
        -0x6t
        0x1ft
        0x27t
        0x12t
        0x1dt
        0x1at
        0x15t
        -0x2ft
        -0xct
        -0x1ft
        -0x2ft
        0x14t
        0x20t
        0x1et
        0x1et
        0x12t
        0x1ft
        0x15t
        -0x15t
        -0x2ft
        -0x2bt
        -0x6t
        0x2t
        -0x13t
        -0x8t
        -0xbt
        -0x10t
        -0x54t
        -0x31t
        -0x43t
        -0x54t
        -0x11t
        -0x5t
        -0x7t
        -0x7t
        -0x13t
        -0x6t
        -0x10t
        -0x3at
        -0x54t
        0x15t
        0x3at
        0x42t
        0x2dt
        0x38t
        0x35t
        0x30t
        -0x14t
        0x13t
        -0x2t
        -0x14t
        0x2ft
        0x34t
        0x2dt
        0x3et
        0x2dt
        0x2ft
        0x40t
        0x31t
        0x3et
        0x6t
        -0x14t
        -0x20t
        0x5t
        0xdt
        -0x8t
        0x3t
        0x0t
        -0x5t
        -0x49t
        -0x22t
        -0x36t
        -0x49t
        -0x6t
        -0x1t
        -0x8t
        0x9t
        -0x8t
        -0x6t
        0xbt
        -0x4t
        0x9t
        -0x2ft
        -0x49t
        0x37t
        0x5ct
        0x64t
        0x4ft
        0x5at
        0x57t
        0x52t
        0xet
        0x50t
        0x4ft
        0x61t
        0x53t
        0xet
        0x51t
        0x5dt
        0x5bt
        0x5bt
        0x4ft
        0x5ct
        0x52t
        0x28t
        0xet
        -0x17t
        0xet
        0x16t
        0x1t
        0xct
        0x9t
        0x4t
        -0x40t
        0x5t
        0x18t
        0x14t
        0x5t
        0xet
        0x4t
        0x5t
        0x4t
        -0x40t
        0x3t
        0xft
        0xdt
        0xdt
        0x1t
        0xet
        0x4t
        -0x26t
        -0x40t
        0x28t
        0x1at
        0x27t
        0x2bt
        0x1et
        0x18t
        0x1at
        0x3t
        0x2at
        0x22t
        0x17t
        0x1at
        0x27t
        -0x2bt
        0x1et
        0x28t
        -0x2bt
        0x23t
        0x24t
        0x23t
        -0x1et
        0x2ft
        0x1at
        0x27t
        0x24t
        -0x2bt
        -0x23t
    .end array-data
.end method

.method public static A0A()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yAE4lHvU8SIdRa0M7nN83OOUue3cZ09b"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "EqAbtUDTtNdXHzeol9X3ALROO7uJPcQ4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FOSs1fdEPTUrl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Xk0MFeqFJ3zjV5j25AQvzsO4cMvGIb8K"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AZYNHKbD0EgMIlMlQlBgXZNrtaAIV7Ua"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mUrfQ6USUSVnG7ZMywk8NLGBLgm95oIU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iFAjfE9isTsrGO5ChGzkZAtGtWh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GzMXJJrTr1X2bQaRiv3l2ivqWgK"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    return-void
.end method

.method private A0B(I)V
    .locals 6

    .line 8408
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/16 v5, 0x8

    if-eq p1, v5, :cond_3

    packed-switch p1, :pswitch_data_0

    .line 8409
    const/16 v3, 0x11

    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v4

    if-lt p1, v3, :cond_1

    const/16 v0, 0x17

    if-gt p1, v0, :cond_1

    .line 8410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5d

    const/16 v1, 0x2c

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8412
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 8413
    :cond_1
    const/16 v0, 0x18

    if-lt p1, v0, :cond_2

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_2

    .line 8414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x89

    const/16 v1, 0x2b

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8415
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto :goto_0

    .line 8416
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x112

    const/16 v1, 0x14

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8417
    :pswitch_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A08()V

    .line 8418
    goto :goto_0

    .line 8419
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8420
    goto :goto_0

    .line 8421
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A07()V

    .line 8422
    goto :goto_0

    .line 8423
    :cond_4
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A01()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A03:Ljava/util/List;

    .line 8424
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private A0C(I)V
    .locals 6

    .line 8425
    const/16 v3, 0x10

    const/4 v5, 0x1

    const/16 v4, 0x8

    packed-switch p1, :pswitch_data_0

    .line 8426
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x126

    const/16 v1, 0x14

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8427
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/3J;
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 8428
    :pswitch_2
    add-int/lit8 v4, p1, -0x80

    .line 8429
    .local p0, "window":I
    iget v3, p0, Lcom/facebook/ads/redexgen/X/3J;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "EBm9LNUTJTAaD1nLP03P0kCQGh4BCDh1"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v3, v4, :cond_0

    .line 8430
    iput v4, p0, Lcom/facebook/ads/redexgen/X/3J;->A00:I

    .line 8431
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    goto :goto_0

    .line 8432
    :pswitch_3
    const/4 v2, 0x1

    .restart local p0    # "window":I
    :goto_1
    if-gt v2, v4, :cond_0

    .line 8433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8434
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A08()V

    .line 8435
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8436
    :pswitch_4
    const/4 v2, 0x1

    .restart local p0    # "window":I
    :goto_2
    if-gt v2, v4, :cond_0

    .line 8437
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8438
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v0, v1, v0

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/GJ;->A0F(Z)V

    .line 8439
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 8440
    :pswitch_5
    const/4 v2, 0x1

    .restart local p0    # "window":I
    :goto_3
    if-gt v2, v4, :cond_0

    .line 8441
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8442
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0F(Z)V

    .line 8443
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 8444
    :pswitch_6
    const/4 v2, 0x1

    .restart local p0    # "window":I
    :goto_4
    if-gt v2, v4, :cond_0

    .line 8445
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8446
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    rsub-int/lit8 v0, v2, 0x8

    aget-object v1, v1, v0

    .line 8447
    .local v5, "cueBuilder":Lcom/facebook/ads/redexgen/X/GJ;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/GJ;->A0J()Z

    move-result v0

    xor-int/2addr v0, v5

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0F(Z)V

    .line 8448
    .end local v5    # "cueBuilder":Lcom/facebook/ads/redexgen/X/GJ;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 8449
    :pswitch_7
    const/4 v3, 0x1

    .local p0, "i":I
    :goto_5
    if-gt v3, v4, :cond_0

    .line 8450
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    sget-object v1, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_a

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "MusojNW1kypBSgNZCPv02LTtlr1JwcjT"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "4N6pc5LutyexANG2oP38KLPeWxpUsMin"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8451
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    rsub-int/lit8 v0, v3, 0x8

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A09()V

    .line 8452
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 8453
    :pswitch_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8454
    goto/16 :goto_0

    .line 8455
    :pswitch_9
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A08()V

    .line 8456
    goto/16 :goto_0

    .line 8457
    :pswitch_a
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "W7HIB8pra5PoQu5NsxnCOS1SPaN"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "IesZ4GZA8LWu0hX0P9EsjYZflIq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/GJ;->A0H()Z

    move-result v0

    if-nez v0, :cond_6

    .line 8458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto/16 :goto_0

    .line 8459
    :cond_6
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A03()V

    .line 8460
    goto/16 :goto_0

    .line 8461
    :pswitch_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0H()Z

    move-result v0

    if-nez v0, :cond_7

    .line 8462
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto/16 :goto_0

    .line 8463
    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A04()V

    .line 8464
    goto/16 :goto_0

    .line 8465
    :pswitch_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0H()Z

    move-result v0

    if-nez v0, :cond_8

    .line 8466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto/16 :goto_0

    .line 8467
    :cond_8
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A05()V

    .line 8468
    goto/16 :goto_0

    .line 8469
    .end local p0    # "i":I
    :pswitch_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0H()Z

    move-result v0

    if-nez v0, :cond_9

    .line 8470
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto/16 :goto_0

    .line 8471
    :cond_9
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A06()V

    .line 8472
    goto/16 :goto_0

    .line 8473
    :pswitch_e
    add-int/lit16 v1, p1, -0x98

    .line 8474
    .local p0, "window":I
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/3J;->A0F(I)V

    .line 8475
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A00:I

    if-eq v0, v1, :cond_0

    .line 8476
    iput v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A00:I

    .line 8477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private A0D(I)V
    .locals 2

    .line 8478
    const/4 v0, 0x7

    if-gt p1, v0, :cond_1

    .line 8479
    :cond_0
    :goto_0
    return-void

    .line 8480
    :cond_1
    const/16 v0, 0xf

    if-gt p1, v0, :cond_2

    .line 8481
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto :goto_0

    .line 8482
    :cond_2
    const/16 v0, 0x17

    if-gt p1, v0, :cond_3

    .line 8483
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto :goto_0

    .line 8484
    :cond_3
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    .line 8485
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto :goto_0
.end method

.method private A0E(I)V
    .locals 2

    .line 8486
    const/16 v0, 0x87

    if-gt p1, v0, :cond_1

    .line 8487
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8488
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/3J;
    :cond_0
    :goto_0
    return-void

    .line 8489
    :cond_1
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_2

    .line 8490
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x28

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto :goto_0

    .line 8491
    :cond_2
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_0

    .line 8492
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8493
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 8494
    .local p0, "length":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto :goto_0
.end method

.method private A0F(I)V
    .locals 18

    .line 8495
    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    aget-object v5, v0, p1

    .line 8496
    .local p1, "cueBuilder":Lcom/facebook/ads/redexgen/X/GJ;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8497
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v6

    .line 8498
    .local v9, "visible":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v7

    .line 8499
    .local v0, "rowLock":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v8

    .line 8500
    .local v10, "columnLock":Z
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v9

    .line 8501
    .local v4, "priority":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v10

    .line 8502
    .local v0, "relativePositioning":Z
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x7

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v11

    .line 8503
    .local v11, "verticalAnchor":I
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v12

    .line 8504
    .local v4, "horizontalAnchor":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v15

    .line 8505
    .local v0, "anchorId":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v13

    .line 8506
    .local v12, "rowCount":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8507
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v14

    .line 8508
    .local v0, "columnCount":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 8509
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v16

    .line 8510
    .local v4, "windowStyle":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/3J;->A06:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v17

    .line 8511
    .local v15, "penStyle":I
    invoke-virtual/range {v5 .. v17}, Lcom/facebook/ads/redexgen/X/GJ;->A0G(ZZZIZIIIIIII)V

    .line 8512
    return-void
.end method

.method private A0G(I)V
    .locals 4

    .line 8513
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 8514
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x266b

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8515
    :goto_0
    return-void

    .line 8516
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "1cwsd5r5OBmNR3czUfVxQeQUp4cHJjqD"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    and-int/lit16 v0, p1, 0xff

    int-to-char v0, v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0H(I)V
    .locals 2

    .line 8517
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    and-int/lit16 v0, p1, 0xff

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8518
    return-void
.end method

.method private A0I(I)V
    .locals 5

    .line 8519
    const/16 v1, 0x20

    if-eq p1, v1, :cond_b

    const/16 v0, 0x21

    if-eq p1, v0, :cond_8

    const/16 v0, 0x25

    if-eq p1, v0, :cond_7

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_4

    const/16 v0, 0x39

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 8520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x13a

    const/16 v1, 0x16

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8521
    :goto_0
    return-void

    .line 8522
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x215b

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8523
    goto :goto_0

    .line 8524
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x215c

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8525
    goto :goto_0

    .line 8526
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x215d

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8527
    goto :goto_0

    .line 8528
    :pswitch_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x215e

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8529
    goto :goto_0

    .line 8530
    :pswitch_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2502

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8531
    goto :goto_0

    .line 8532
    :pswitch_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2510

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8533
    goto :goto_0

    .line 8534
    :pswitch_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2514

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8535
    goto :goto_0

    .line 8536
    :pswitch_7
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "1MDO0vOQbCAzvHejrxgU0LikYNrwdVwA"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "yXIpYGtRXXJZc2TlKB88OL0cTOjpdzif"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0x2500

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8537
    goto :goto_0

    .line 8538
    :pswitch_8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2518

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8539
    goto :goto_0

    .line 8540
    :pswitch_9
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "gT60kQv07BGafL"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/16 v0, 0x250c

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8541
    goto/16 :goto_0

    .line 8542
    :pswitch_a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2588

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8543
    goto/16 :goto_0

    .line 8544
    :pswitch_b
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2018

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8545
    goto/16 :goto_0

    .line 8546
    :pswitch_c
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2019

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8547
    goto/16 :goto_0

    .line 8548
    :pswitch_d
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v3, 0x201c

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "GxqvnWHM11ElSJ31TXQhZLJMs2wyf8D1"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "ENWGBBHWoU4DVqAFLidS7LEqM7OcH8Hd"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8549
    goto/16 :goto_0

    .line 8550
    :pswitch_e
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x201d

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8551
    goto/16 :goto_0

    .line 8552
    :pswitch_f
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2022

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8553
    goto/16 :goto_0

    .line 8554
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2120

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8555
    goto/16 :goto_0

    .line 8556
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x153

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8557
    goto/16 :goto_0

    .line 8558
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x161

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8559
    goto/16 :goto_0

    .line 8560
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2122

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8561
    goto/16 :goto_0

    .line 8562
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x178

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8563
    goto/16 :goto_0

    .line 8564
    :cond_5
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x152

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8565
    goto/16 :goto_0

    .line 8566
    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x160

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8567
    goto/16 :goto_0

    .line 8568
    :cond_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x2026

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8569
    goto/16 :goto_0

    .line 8570
    :cond_8
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_a

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/3J;->A0A:[Ljava/lang/String;

    const-string v1, "yhDsgfbvKETq6do3EHDMpLLdJgiLtSLW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "hyANmF1dUuXT2yWr9kjPfLWByIBsweZ9"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0xa0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8571
    goto/16 :goto_0

    .line 8572
    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8573
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x76
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private A0J(I)V
    .locals 4

    .line 8574
    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    .line 8575
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x33c4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    .line 8576
    :goto_0
    return-void

    .line 8577
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x150

    const/16 v1, 0x16

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8578
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    const/16 v0, 0x5f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GJ;->A0A(C)V

    goto :goto_0
.end method


# virtual methods
.method public final A0N()Lcom/facebook/ads/redexgen/X/GC;
    .locals 2

    .line 8579
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A03:Ljava/util/List;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A04:Ljava/util/List;

    .line 8580
    new-instance v0, Lcom/facebook/ads/redexgen/X/UG;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/UG;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final bridge synthetic A0O()Lcom/facebook/ads/redexgen/X/BT;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 8581
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/BR;->A0O()Lcom/facebook/ads/redexgen/X/BT;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0P()Lcom/facebook/ads/redexgen/X/BS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 8582
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/BR;->A0P()Lcom/facebook/ads/redexgen/X/BS;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0Q(Lcom/facebook/ads/redexgen/X/BT;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GD;
        }
    .end annotation

    .line 8583
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/BR;->A0Q(Lcom/facebook/ads/redexgen/X/BT;)V

    return-void
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/BT;)V
    .locals 8

    .line 8584
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 8585
    .local p0, "inputBufferData":[B
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A07:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Vt;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 8586
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A07:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    const/4 v7, 0x3

    if-lt v0, v7, :cond_8

    .line 8587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A07:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 8588
    .local p1, "ccTypeAndValid":I
    and-int/lit8 v3, v0, 0x3

    .line 8589
    .local v2, "ccType":I
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    const/4 v0, 0x4

    const/4 v6, 0x1

    if-ne v1, v0, :cond_7

    const/4 v1, 0x1

    .line 8590
    .local v1, "ccValid":Z
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A07:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    int-to-byte v5, v0

    .line 8591
    .local v0, "ccData1":B
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A07:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    int-to-byte v4, v0

    .line 8592
    .local v0, "ccData2":B
    const/4 v0, 0x2

    if-eq v3, v0, :cond_1

    if-eq v3, v7, :cond_1

    goto :goto_0

    .line 8593
    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    .line 8594
    :cond_2
    if-ne v3, v7, :cond_4

    .line 8595
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A02()V

    .line 8596
    and-int/lit16 v0, v5, 0xc0

    shr-int/lit8 v2, v0, 0x6

    .line 8597
    .local v0, "sequenceNumber":I
    and-int/lit8 v1, v5, 0x3f

    .line 8598
    .local v0, "packetSize":I
    if-nez v1, :cond_3

    .line 8599
    const/16 v1, 0x40

    .line 8600
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/GK;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/GK;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    .line 8601
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/GK;->A03:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    aput-byte v4, v3, v1

    .line 8602
    .end local v0    # "packetSize":I
    .end local v0
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GK;->A01:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v6

    if-ne v1, v0, :cond_0

    .line 8603
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A02()V

    goto :goto_0

    .line 8604
    :cond_4
    if-ne v3, v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 8605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    if-nez v0, :cond_6

    .line 8606
    const/16 v2, 0x50

    const/16 v1, 0xd

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xdb

    const/16 v1, 0x37

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8607
    goto/16 :goto_0

    .line 8608
    :cond_6
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/GK;->A03:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    aput-byte v5, v3, v1

    .line 8609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/GK;->A03:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/GK;->A00:I

    aput-byte v4, v3, v1

    goto :goto_2

    .line 8610
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 8611
    :cond_8
    return-void
.end method

.method public final A0T()Z
    .locals 2

    .line 8612
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A03:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A04:Ljava/util/List;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic ACz()V
    .locals 0

    .line 8613
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/BR;->ACz()V

    return-void
.end method

.method public final bridge synthetic ADs(J)V
    .locals 0

    .line 8614
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/BR;->ADs(J)V

    return-void
.end method

.method public final flush()V
    .locals 3

    .line 8615
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/BR;->flush()V

    .line 8616
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/3J;->A03:Ljava/util/List;

    .line 8617
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/3J;->A04:Ljava/util/List;

    .line 8618
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A00:I

    .line 8619
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3J;->A08:[Lcom/facebook/ads/redexgen/X/GJ;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A00:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3J;->A01:Lcom/facebook/ads/redexgen/X/GJ;

    .line 8620
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3J;->A08()V

    .line 8621
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/3J;->A02:Lcom/facebook/ads/redexgen/X/GK;

    .line 8622
    return-void
.end method
