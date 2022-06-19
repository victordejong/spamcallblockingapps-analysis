.class public final Lcom/facebook/ads/redexgen/X/HM;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/upstream/DataSpec$Flags;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J

.field public final A03:J

.field public final A04:Landroid/net/Uri;

.field public final A05:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A06:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/HM;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/HM;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJJLjava/lang/String;I)V
    .locals 11
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36462
    const/4 v2, 0x0

    move-object v0, p0

    move/from16 v10, p9

    move-object/from16 v9, p8

    move-wide v5, p4

    move-wide v3, p2

    move-wide/from16 v7, p6

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/facebook/ads/redexgen/X/HM;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    .line 36463
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;)V
    .locals 10
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36464
    const/4 v9, 0x0

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, v2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/HM;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 36465
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;I)V
    .locals 10
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36466
    move-object v0, p0

    move-wide v2, p2

    move-wide v4, v2

    move-wide v6, p4

    move/from16 v9, p7

    move-object/from16 v8, p6

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/HM;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 36467
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    .locals 4
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36469
    const/4 v3, 0x1

    const-wide/16 v1, 0x0

    cmp-long v0, p3, v1

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 36470
    cmp-long v0, p5, v1

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 36471
    cmp-long v0, p7, v1

    if-gtz v0, :cond_0

    const-wide/16 v1, -0x1

    cmp-long v0, p7, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_2
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 36472
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/HM;->A04:Landroid/net/Uri;

    .line 36473
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/HM;->A06:[B

    .line 36474
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/HM;->A01:J

    .line 36475
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    .line 36476
    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    .line 36477
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/HM;->A05:Ljava/lang/String;

    .line 36478
    iput p10, p0, Lcom/facebook/ads/redexgen/X/HM;->A00:I

    .line 36479
    return-void

    .line 36480
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 36481
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 36482
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/HM;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/HM;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/HM;->A08:[Ljava/lang/String;

    const-string v1, "1LK4xyyWHojrBZEwwGla1DliuF9RdD8i"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sub-int/2addr v3, p2

    add-int/lit8 v0, v3, -0x47

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/HM;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x7bt
        0x6ft
        -0x37t
        -0x1at
        -0x7t
        -0x1at
        -0x28t
        -0xbt
        -0x16t
        -0x18t
        -0x20t
        -0x48t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "I"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rqLjaApuaO0sSHSc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "UZ606hRq0dIzxgHBbVIG0Db0G9z1Dtj6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "O0g7T5BhZBMUPlr"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "18RjwHsHNk47vlJmzQZGiUSdRasZ0Mg3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Cm00qEXkn18JWG0F8J7oCMTvXgx4dOvr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Gk2V4JPFFfPhnGd6xQ0N9DbepztPGRM8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7ASS6tDdOtTl6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/HM;->A08:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03(I)Z
    .locals 1

    .line 36483
    iget v0, p0, Lcom/facebook/ads/redexgen/X/HM;->A00:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 36484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    const/16 v1, 0x9

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HM;->A04:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HM;->A00(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HM;->A06:[B

    .line 36485
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/HM;->A01:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/HM;->A03:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/HM;->A02:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/HM;->A05:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/HM;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    const/4 v1, 0x1

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/HM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36486
    return-object v0
.end method
