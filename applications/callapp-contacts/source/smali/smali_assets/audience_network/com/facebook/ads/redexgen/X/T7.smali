.class public final Lcom/facebook/ads/redexgen/X/T7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/42;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/3e;,
        Lcom/facebook/ads/redexgen/X/3f;
    }
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/2V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/2V<",
            "Lcom/facebook/ads/redexgen/X/3f;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/3e;

.field public final A03:Lcom/facebook/ads/redexgen/X/43;

.field public final A04:Ljava/lang/Runnable;

.field public final A05:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/3f;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/3f;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/T7;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/T7;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3e;)V
    .locals 1

    .line 53349
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/T7;-><init>(Lcom/facebook/ads/redexgen/X/3e;Z)V

    .line 53350
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3e;Z)V
    .locals 2

    .line 53351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53352
    const/16 v1, 0x1e

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sp;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Sp;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/2V;

    .line 53353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A05:Ljava/util/ArrayList;

    .line 53354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A06:Ljava/util/ArrayList;

    .line 53355
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A00:I

    .line 53356
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Lcom/facebook/ads/redexgen/X/3e;

    .line 53357
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/T7;->A07:Z

    .line 53358
    new-instance v0, Lcom/facebook/ads/redexgen/X/43;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/43;-><init>(Lcom/facebook/ads/redexgen/X/42;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A03:Lcom/facebook/ads/redexgen/X/43;

    .line 53359
    return-void
.end method

.method private A00(II)I
    .locals 6

    .line 53360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 53361
    .local p0, "count":I
    add-int/lit8 v3, v0, -0x1

    .local p1, "i":I
    :goto_0
    const/16 v4, 0x8

    const/4 v1, 0x1

    if-ltz v3, :cond_e

    .line 53362
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/3f;

    .line 53363
    .local v0, "postponed":Lcom/facebook/ads/redexgen/X/3f;
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v5, 0x2

    if-ne v0, v4, :cond_9

    .line 53364
    iget v4, v2, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    if-ge v4, v0, :cond_8

    .line 53365
    iget v4, v2, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 53366
    .local p2, "start":I
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    .line 53367
    .local v3, "end":I
    .restart local v3    # "end":I
    :goto_1
    if-lt p1, v4, :cond_6

    if-gt p1, v0, :cond_6

    .line 53368
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-ne v4, v0, :cond_3

    .line 53369
    if-ne p2, v1, :cond_2

    .line 53370
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    .line 53371
    :cond_0
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 53372
    .end local v0    # "postponed":Lcom/facebook/ads/redexgen/X/3f;
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 53373
    :cond_2
    if-ne p2, v5, :cond_0

    .line 53374
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    goto :goto_2

    .line 53375
    :cond_3
    if-ne p2, v1, :cond_5

    .line 53376
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 53377
    :cond_4
    :goto_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 53378
    :cond_5
    if-ne p2, v5, :cond_4

    .line 53379
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    sub-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    goto :goto_4

    .line 53380
    :cond_6
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-ge p1, v0, :cond_1

    .line 53381
    if-ne p2, v1, :cond_7

    .line 53382
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 53383
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    goto :goto_3

    .line 53384
    :cond_7
    if-ne p2, v5, :cond_1

    .line 53385
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    sub-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 53386
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    goto :goto_3

    .line 53387
    .end local p2    # "start":I
    .end local v3    # "end":I
    :cond_8
    iget v4, v2, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    .line 53388
    .restart local p2    # "start":I
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    goto :goto_1

    .line 53389
    :cond_9
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-gt v0, p1, :cond_c

    .line 53390
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    if-ne v0, v1, :cond_b

    .line 53391
    iget v4, v2, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const-string v1, "N0sU"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sub-int/2addr p1, v4

    goto :goto_3

    .line 53392
    :cond_b
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    if-ne v0, v5, :cond_1

    .line 53393
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr p1, v0

    goto :goto_3

    .line 53394
    :cond_c
    if-ne p2, v1, :cond_d

    .line 53395
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    goto :goto_3

    .line 53396
    :cond_d
    if-ne p2, v5, :cond_1

    .line 53397
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    sub-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    goto :goto_3

    .line 53398
    .end local p1    # "i":I
    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .restart local p1    # "i":I
    :goto_5
    if-ltz v3, :cond_12

    .line 53399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/3f;

    .line 53400
    .local v0, "op":Lcom/facebook/ads/redexgen/X/3f;
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    if-ne v0, v4, :cond_11

    .line 53401
    iget v1, v2, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-eq v1, v0, :cond_f

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    if-gez v0, :cond_10

    .line 53402
    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 53403
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/T7;->ACu(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53404
    .end local v0    # "op":Lcom/facebook/ads/redexgen/X/3f;
    :cond_10
    :goto_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 53405
    :cond_11
    iget v0, v2, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    if-gtz v0, :cond_10

    .line 53406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 53407
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/T7;->ACu(Lcom/facebook/ads/redexgen/X/3f;)V

    goto :goto_6

    .line 53408
    .end local p1    # "i":I
    :cond_12
    return p1
.end method

.method private final A01(II)I
    .locals 7

    .line 53409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 53410
    .local p0, "count":I
    .local p1, "i":I
    :goto_0
    if-ge p2, v5, :cond_7

    .line 53411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/3f;

    .line 53412
    .local p2, "op":Lcom/facebook/ads/redexgen/X/3f;
    iget v1, v6, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_3

    .line 53413
    iget v0, v6, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-ne v0, p1, :cond_1

    .line 53414
    iget p1, v6, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    .line 53415
    .end local p2    # "op":Lcom/facebook/ads/redexgen/X/3f;
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 53416
    :cond_1
    iget v0, v6, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-ge v0, p1, :cond_2

    .line 53417
    add-int/lit8 p1, p1, -0x1

    .line 53418
    :cond_2
    iget v0, v6, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    if-gt v0, p1, :cond_0

    .line 53419
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 53420
    :cond_3
    iget v0, v6, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-gt v0, p1, :cond_0

    .line 53421
    iget v1, v6, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    .line 53422
    iget v1, v6, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_4

    .line 53423
    const/4 v0, -0x1

    return v0

    .line 53424
    :cond_4
    iget v0, v6, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr p1, v0

    goto :goto_1

    .line 53425
    :cond_5
    iget v4, v6, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const-string v1, "6d2Cvy1MfGwOem3AHh21iiz4RwVuOhP"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_0

    .line 53426
    iget v0, v6, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr p1, v0

    goto :goto_1

    .line 53427
    .end local p1    # "i":I
    :cond_7
    return p1
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/T7;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x42

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

    const/16 v0, 0xa1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/T7;->A08:[B

    return-void

    :array_0
    .array-data 1
        -0x64t
        -0x4bt
        -0x4et
        -0x4bt
        -0x4at
        -0x42t
        -0x4bt
        0x67t
        -0x44t
        -0x49t
        -0x55t
        -0x58t
        -0x45t
        -0x54t
        0x67t
        -0x4at
        -0x49t
        0x67t
        -0x45t
        -0x40t
        -0x49t
        -0x54t
        0x67t
        -0x53t
        -0x4at
        -0x47t
        0x67t
        -0x2ct
        -0x2dt
        -0x2ft
        -0x22t
        -0x7bt
        -0x29t
        -0x36t
        -0x2et
        -0x2ct
        -0x25t
        -0x36t
        -0x7bt
        -0x3at
        -0x2dt
        -0x37t
        -0x7bt
        -0x26t
        -0x2bt
        -0x37t
        -0x3at
        -0x27t
        -0x36t
        -0x7bt
        -0x2ct
        -0x2bt
        -0x28t
        -0x7bt
        -0x38t
        -0x3at
        -0x2dt
        -0x7bt
        -0x39t
        -0x36t
        -0x7bt
        -0x37t
        -0x32t
        -0x28t
        -0x2bt
        -0x3at
        -0x27t
        -0x38t
        -0x33t
        -0x36t
        -0x37t
        -0x7bt
        -0x32t
        -0x2dt
        -0x7bt
        -0x35t
        -0x32t
        -0x29t
        -0x28t
        -0x27t
        -0x7bt
        -0x2bt
        -0x3at
        -0x28t
        -0x28t
        -0x18t
        -0x17t
        -0x67t
        -0x14t
        -0x1ft
        -0x18t
        -0x12t
        -0x1bt
        -0x23t
        -0x67t
        -0x25t
        -0x22t
        -0x67t
        -0x15t
        -0x22t
        -0x1at
        -0x18t
        -0x11t
        -0x22t
        -0x67t
        -0x18t
        -0x15t
        -0x67t
        -0x12t
        -0x17t
        -0x23t
        -0x26t
        -0x13t
        -0x22t
        -0x59t
        0x1et
        0x13t
        0x1at
        0x20t
        0x17t
        0xft
        -0x35t
        0x19t
        0x1at
        0x1ft
        -0x35t
        0xft
        0x14t
        0x1et
        0x1bt
        0xct
        0x1ft
        0xet
        0x13t
        -0x35t
        0xct
        0xft
        0xft
        -0x35t
        0x1at
        0x1dt
        -0x35t
        0x18t
        0x1at
        0x21t
        0x10t
        -0x35t
        0x11t
        0x1at
        0x1dt
        -0x35t
        0x1bt
        0x1dt
        0x10t
        -0x35t
        0x17t
        0xct
        0x24t
        0x1at
        0x20t
        0x1ft
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "X1JWoRd1RTsi5LXg3YfkE890Z0SkAp6s"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8cHG76lMVFwKxBGRg2kgut24eHhxfbd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "G9TzZa55JFGh4eGgvGtqHGY1m3qrW6LM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "T7A4lgHZzGr7V1uQcw7LfDSO4lerGRH7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wT7nveBXif1G6UL4LkiEJi9kfhK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XR1Jqmc9zxsTs7lfyBsyi3NvUHLKhP3K"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pVA6ZWYUVwE4UScIoRBBosOqE3FsfWwK"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nWmw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 0

    .line 53428
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/T7;->A0A(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53429
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 0

    .line 53430
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/T7;->A0A(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53431
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 10

    .line 53432
    iget v8, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 53433
    .local p0, "tmpStart":I
    const/4 v7, 0x0

    .line 53434
    .local p1, "tmpCount":I
    iget v9, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v9, v0

    .line 53435
    .local v8, "tmpEnd":I
    const/4 v6, -0x1

    .line 53436
    .local v7, "type":I
    iget v5, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .local v9, "position":I
    :goto_0
    const/4 v4, 0x0

    const/4 v3, 0x2

    if-ge v5, v9, :cond_5

    .line 53437
    const/4 v2, 0x0

    .line 53438
    .local v6, "typeChanged":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Lcom/facebook/ads/redexgen/X/3e;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/3e;->A5M(I)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v0

    .line 53439
    .local v5, "vh":Lcom/facebook/ads/redexgen/X/4c;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/T7;->A0D(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53440
    :cond_0
    if-nez v6, :cond_1

    .line 53441
    invoke-virtual {p0, v3, v8, v7, v4}, Lcom/facebook/ads/redexgen/X/T7;->A9D(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;

    move-result-object v0

    .line 53442
    .restart local v0
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/T7;->A09(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53443
    const/4 v2, 0x1

    .line 53444
    .end local v0
    :cond_1
    const/4 v6, 0x1

    .line 53445
    :goto_1
    if-eqz v2, :cond_2

    .line 53446
    sub-int/2addr v5, v7

    .line 53447
    sub-int/2addr v9, v7

    .line 53448
    const/4 v7, 0x1

    .line 53449
    .end local v6    # "typeChanged":Z
    .end local v5    # "vh":Lcom/facebook/ads/redexgen/X/4c;
    :goto_2
    add-int/2addr v5, v1

    goto :goto_0

    .line 53450
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 53451
    :cond_3
    if-ne v6, v1, :cond_4

    .line 53452
    invoke-virtual {p0, v3, v8, v7, v4}, Lcom/facebook/ads/redexgen/X/T7;->A9D(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;

    move-result-object v0

    .line 53453
    .local v0, "newOp":Lcom/facebook/ads/redexgen/X/3f;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/T7;->A0A(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53454
    const/4 v2, 0x1

    .line 53455
    .end local v0    # "newOp":Lcom/facebook/ads/redexgen/X/3f;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 53456
    .end local v9    # "position":I
    :cond_5
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    if-eq v7, v0, :cond_6

    .line 53457
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/T7;->ACu(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53458
    invoke-virtual {p0, v3, v8, v7, v4}, Lcom/facebook/ads/redexgen/X/T7;->A9D(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;

    move-result-object p1

    .line 53459
    :cond_6
    if-nez v6, :cond_7

    .line 53460
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/T7;->A09(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53461
    :goto_3
    return-void

    .line 53462
    :cond_7
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/T7;->A0A(Lcom/facebook/ads/redexgen/X/3f;)V

    goto :goto_3
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 9

    .line 53463
    iget v6, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 53464
    .local p0, "tmpStart":I
    const/4 v5, 0x0

    .line 53465
    .local p1, "tmpCount":I
    iget v4, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v4, v0

    .line 53466
    .local v6, "tmpEnd":I
    const/4 v7, -0x1

    .line 53467
    .local v5, "type":I
    iget v3, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .local v4, "position":I
    :goto_0
    const/4 v2, 0x4

    sget-object v8, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v8, v0

    const/4 v0, 0x5

    aget-object v8, v8, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v8, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const-string v1, "QVMb2fRXyzWHiAZPpRD1aZXDVthvAAWC"

    const/4 v0, 0x0

    aput-object v1, v8, v0

    if-ge v3, v4, :cond_5

    .line 53468
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Lcom/facebook/ads/redexgen/X/3e;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/3e;->A5M(I)Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v0

    .line 53469
    .local v4, "vh":Lcom/facebook/ads/redexgen/X/4c;
    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/T7;->A0D(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53470
    :cond_1
    if-nez v7, :cond_2

    .line 53471
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    invoke-virtual {p0, v2, v6, v5, v0}, Lcom/facebook/ads/redexgen/X/T7;->A9D(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;

    move-result-object v0

    .line 53472
    .restart local v0
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/T7;->A09(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53473
    const/4 v5, 0x0

    .line 53474
    move v6, v3

    .line 53475
    .end local v0
    :cond_2
    const/4 v7, 0x1

    .line 53476
    .end local v4    # "vh":Lcom/facebook/ads/redexgen/X/4c;
    :goto_1
    add-int/2addr v5, v1

    .line 53477
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53478
    :cond_3
    if-ne v7, v1, :cond_4

    .line 53479
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    invoke-virtual {p0, v2, v6, v5, v0}, Lcom/facebook/ads/redexgen/X/T7;->A9D(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;

    move-result-object v0

    .line 53480
    .local v0, "newOp":Lcom/facebook/ads/redexgen/X/3f;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/T7;->A0A(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53481
    const/4 v5, 0x0

    .line 53482
    move v6, v3

    .line 53483
    .end local v0    # "newOp":Lcom/facebook/ads/redexgen/X/3f;
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 53484
    .end local v4
    :cond_5
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    if-eq v5, v0, :cond_6

    .line 53485
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    .line 53486
    .local v4, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/T7;->ACu(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53487
    invoke-virtual {p0, v2, v6, v5, v0}, Lcom/facebook/ads/redexgen/X/T7;->A9D(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;

    move-result-object p1

    .line 53488
    .end local v4    # "payload":Ljava/lang/Object;
    :cond_6
    if-nez v7, :cond_7

    .line 53489
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/T7;->A09(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53490
    :goto_2
    return-void

    .line 53491
    :cond_7
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/T7;->A0A(Lcom/facebook/ads/redexgen/X/3f;)V

    goto :goto_2
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 11

    .line 53492
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v0, 0x1

    if-eq v1, v0, :cond_d

    iget v3, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_c

    sget-object v2, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const-string v1, "fuh7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v0, 0x8

    if-eq v3, v0, :cond_d

    .line 53493
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/T7;->A00(II)I

    move-result v5

    .line 53494
    .local p0, "tmpStart":I
    const/4 v8, 0x1

    .line 53495
    .local v1, "tmpCnt":I
    iget v4, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 53496
    .local v0, "offsetPositionForPartial":I
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v7, 0x2

    const/4 v6, 0x4

    if-eq v0, v7, :cond_8

    if-ne v0, v6, :cond_b

    .line 53497
    const/4 v10, 0x1

    .line 53498
    .local v3, "positionMultiplier":I
    :goto_0
    const/4 v3, 0x1

    .local v0, "p":I
    :goto_1
    iget v9, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_7

    if-ge v3, v9, :cond_9

    .line 53499
    :goto_2
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    mul-int v0, v10, v3

    add-int/2addr v1, v0

    .line 53500
    .local v1, "pos":I
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/T7;->A00(II)I

    move-result v2

    .line 53501
    .local v0, "updatedPos":I
    const/4 v9, 0x0

    .line 53502
    .local v2, "continuous":Z
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v1, 0x0

    if-eq v0, v7, :cond_5

    if-eq v0, v6, :cond_3

    .line 53503
    :goto_3
    if-eqz v9, :cond_0

    .line 53504
    add-int/lit8 v8, v8, 0x1

    .line 53505
    .end local v1    # "pos":I
    .end local v0    # "updatedPos":I
    .end local v2    # "continuous":Z
    .end local v1
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 53506
    :cond_0
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    invoke-virtual {p0, v1, v5, v8, v0}, Lcom/facebook/ads/redexgen/X/T7;->A9D(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;

    move-result-object v0

    .line 53507
    .local v1, "tmp":Lcom/facebook/ads/redexgen/X/3f;
    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/T7;->A0B(Lcom/facebook/ads/redexgen/X/3f;I)V

    .line 53508
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/T7;->ACu(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53509
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    if-ne v0, v6, :cond_1

    .line 53510
    add-int/2addr v4, v8

    .line 53511
    :cond_1
    move v5, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_2

    .line 53512
    const/4 v8, 0x1

    goto :goto_4

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const-string v1, "EcOQEIn9Q5XvTjS6SUXoeHtz7oIrLcgt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "qdxRTeDYAvuRxJ3EQmMRRmoNV8wrEDZm"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v8, 0x1

    goto :goto_4

    .line 53513
    :cond_3
    add-int/lit8 v0, v5, 0x1

    if-ne v2, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    move v9, v1

    .line 53514
    goto :goto_3

    .line 53515
    :cond_5
    if-ne v2, v5, :cond_6

    const/4 v1, 0x1

    :cond_6
    move v9, v1

    goto :goto_3

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const-string v1, "Sd1L0VSyo86shE8ew7ry1Omr"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge v3, v9, :cond_9

    goto :goto_2

    .line 53516
    :cond_8
    const/4 v10, 0x0

    .line 53517
    .restart local v3    # "positionMultiplier":I
    goto :goto_0

    .line 53518
    .end local v0
    :cond_9
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    .line 53519
    .local p1, "payload":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/T7;->ACu(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53520
    if-lez v8, :cond_a

    .line 53521
    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    invoke-virtual {p0, v0, v5, v8, v1}, Lcom/facebook/ads/redexgen/X/T7;->A9D(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;

    move-result-object v0

    .line 53522
    .local v1, "tmp":Lcom/facebook/ads/redexgen/X/3f;
    invoke-direct {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/T7;->A0B(Lcom/facebook/ads/redexgen/X/3f;I)V

    .line 53523
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/T7;->ACu(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53524
    .end local v1    # "tmp":Lcom/facebook/ads/redexgen/X/3f;
    :cond_a
    return-void

    .line 53525
    .end local v3    # "positionMultiplier":I
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x55

    const/16 v1, 0x1e

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T7;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 53526
    .end local p0    # "tmpStart":I
    .end local p1    # "payload":Ljava/lang/Object;
    .end local v1
    .end local v0
    .end local v3
    :cond_d
    const/16 v2, 0x73

    const/16 v1, 0x2e

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T7;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 4

    .line 53527
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53528
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    const/16 v0, 0x8

    if-ne v1, v0, :cond_3

    .line 53529
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3e;->A9F(II)V

    .line 53530
    :goto_0
    return-void

    .line 53531
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget v2, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3e;->A8x(IILjava/lang/Object;)V

    .line 53532
    goto :goto_0

    .line 53533
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3e;->A9H(II)V

    .line 53534
    goto :goto_0

    .line 53535
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3e;->A9E(II)V

    .line 53536
    goto :goto_0

    .line 53537
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/4 v0, 0x5

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T7;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final A0B(Lcom/facebook/ads/redexgen/X/3f;I)V
    .locals 3

    .line 53538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Lcom/facebook/ads/redexgen/X/3e;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3e;->A9u(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53539
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    const/4 v0, 0x4

    if-ne v1, v0, :cond_1

    .line 53540
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    invoke-interface {v2, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/3e;->A8x(IILjava/lang/Object;)V

    .line 53541
    :goto_0
    return-void

    .line 53542
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    invoke-interface {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/3e;->A9G(II)V

    .line 53543
    goto :goto_0

    .line 53544
    :cond_1
    const/16 v2, 0x1b

    const/16 v1, 0x3a

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T7;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final A0C(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3f;",
            ">;)V"
        }
    .end annotation

    .line 53545
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v7/widget/AdapterHelper$UpdateOp;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 53546
    .local p0, "count":I
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 53547
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3f;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/T7;->ACu(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53548
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53549
    .end local p1    # "i":I
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 53550
    return-void
.end method

.method private A0D(I)Z
    .locals 8

    .line 53551
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 53552
    .local p0, "count":I
    const/4 v4, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v4, v5, :cond_4

    .line 53553
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/3f;

    .line 53554
    .local v0, "op":Lcom/facebook/ads/redexgen/X/3f;
    iget v1, v6, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/16 v0, 0x8

    const/4 v3, 0x1

    if-ne v1, v0, :cond_0

    .line 53555
    iget v1, v6, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/lit8 v0, v4, 0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/T7;->A01(II)I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 53556
    return v3

    .line 53557
    :cond_0
    iget v7, v6, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const-string v1, "h3FT"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v7, v3, :cond_2

    .line 53558
    iget v2, v6, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, v6, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v2, v0

    .line 53559
    .local v5, "end":I
    iget v1, v6, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .local v4, "pos":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 53560
    add-int/lit8 v0, v4, 0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/T7;->A01(II)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 53561
    return v3

    .line 53562
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 53563
    .end local v0    # "op":Lcom/facebook/ads/redexgen/X/3f;
    .end local v5    # "end":I
    .end local v4    # "pos":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 53564
    .end local p1    # "i":I
    :cond_4
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A0E(I)I
    .locals 1

    .line 53565
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/T7;->A01(II)I

    move-result v0

    return v0
.end method

.method public final A0F(I)I
    .locals 5

    .line 53566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 53567
    .local p0, "size":I
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v2, v3, :cond_7

    .line 53568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/3f;

    .line 53569
    .local v0, "op":Lcom/facebook/ads/redexgen/X/3f;
    iget v1, v4, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v0, 0x1

    if-eq v1, v0, :cond_6

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    .line 53570
    .end local v0    # "op":Lcom/facebook/ads/redexgen/X/3f;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53571
    :cond_1
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-ne v0, p1, :cond_2

    .line 53572
    iget p1, v4, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    goto :goto_1

    .line 53573
    :cond_2
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-ge v0, p1, :cond_3

    .line 53574
    add-int/lit8 p1, p1, -0x1

    .line 53575
    :cond_3
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    if-gt v0, p1, :cond_0

    .line 53576
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 53577
    :cond_4
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-gt v0, p1, :cond_0

    .line 53578
    iget v1, v4, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr v1, v0

    .line 53579
    .local v3, "end":I
    if-le v1, p1, :cond_5

    .line 53580
    const/4 v0, -0x1

    return v0

    .line 53581
    :cond_5
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sub-int/2addr p1, v0

    .line 53582
    .end local v3    # "end":I
    goto :goto_1

    .line 53583
    :cond_6
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    if-gt v0, p1, :cond_0

    .line 53584
    iget v0, v4, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    add-int/2addr p1, v0

    goto :goto_1

    .line 53585
    .end local p1    # "i":I
    :cond_7
    return p1
.end method

.method public final A0G()V
    .locals 4

    .line 53586
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 53587
    .local p0, "count":I
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 53588
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3f;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/3e;->A9w(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53589
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53590
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A06:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/T7;->A0C(Ljava/util/List;)V

    .line 53591
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A00:I

    .line 53592
    return-void
.end method

.method public final A0H()V
    .locals 9

    .line 53593
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T7;->A0G()V

    .line 53594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 53595
    .local p0, "count":I
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v3, v4, :cond_7

    .line 53596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/3f;

    .line 53597
    .local v4, "op":Lcom/facebook/ads/redexgen/X/3f;
    iget v1, v5, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v0, 0x1

    if-eq v1, v0, :cond_6

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/16 v0, 0x8

    if-eq v1, v0, :cond_1

    .line 53598
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A04:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 53599
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 53600
    .end local v4    # "op":Lcom/facebook/ads/redexgen/X/3f;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53601
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Lcom/facebook/ads/redexgen/X/3e;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/3e;->A9w(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53602
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget v1, v5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3e;->A9F(II)V

    goto :goto_1

    .line 53603
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Lcom/facebook/ads/redexgen/X/3e;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/3e;->A9w(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53604
    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget v7, v5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v6, v5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const-string v1, "6Qpi3zwbHCTXm3nhA4JhLro11ECL3LU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    invoke-interface {v8, v7, v6, v0}, Lcom/facebook/ads/redexgen/X/3e;->A8x(IILjava/lang/Object;)V

    .line 53605
    goto :goto_1

    .line 53606
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Lcom/facebook/ads/redexgen/X/3e;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/3e;->A9w(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53607
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget v6, v5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v5, v5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x41

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const-string v1, "CM7MK7KhSxDopOj0YrHNMoPSB3hYAvlM"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {v7, v6, v5}, Lcom/facebook/ads/redexgen/X/3e;->A9G(II)V

    .line 53608
    goto :goto_1

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const-string v1, "0a4GBd0juwjU6ZOPGBL8pgIRsQZTAwEC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-interface {v7, v6, v5}, Lcom/facebook/ads/redexgen/X/3e;->A9G(II)V

    goto :goto_1

    .line 53609
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Lcom/facebook/ads/redexgen/X/3e;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/3e;->A9w(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53610
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/T7;->A02:Lcom/facebook/ads/redexgen/X/3e;

    iget v1, v5, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3e;->A9E(II)V

    .line 53611
    goto/16 :goto_1

    .line 53612
    .end local v0    # "i":I
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A05:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/T7;->A0C(Ljava/util/List;)V

    .line 53613
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A00:I

    .line 53614
    return-void
.end method

.method public final A0I()V
    .locals 8

    .line 53615
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T7;->A03:Lcom/facebook/ads/redexgen/X/43;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A05:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/43;->A06(Ljava/util/List;)V

    .line 53616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 53617
    .local p0, "count":I
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v4, v5, :cond_6

    .line 53618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/3f;

    .line 53619
    .local v0, "op":Lcom/facebook/ads/redexgen/X/3f;
    iget v3, v6, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    const/4 v7, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/T7;->A09:[Ljava/lang/String;

    const-string v1, "1BDdKJQJlsgxETOK14Gjs1hC7fjbuKK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eq v3, v7, :cond_5

    const/4 v0, 0x2

    if-eq v3, v0, :cond_4

    const/4 v0, 0x4

    if-eq v3, v0, :cond_3

    const/16 v0, 0x8

    if-eq v3, v0, :cond_2

    .line 53620
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A04:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 53621
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 53622
    .end local v0    # "op":Lcom/facebook/ads/redexgen/X/3f;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 53623
    :cond_2
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/T7;->A06(Lcom/facebook/ads/redexgen/X/3f;)V

    goto :goto_1

    .line 53624
    :cond_3
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/T7;->A08(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53625
    goto :goto_1

    .line 53626
    :cond_4
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/T7;->A07(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53627
    goto :goto_1

    .line 53628
    :cond_5
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/T7;->A05(Lcom/facebook/ads/redexgen/X/3f;)V

    .line 53629
    goto :goto_1

    .line 53630
    .end local v1    # "i":I
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53631
    return-void
.end method

.method public final A0J()V
    .locals 1

    .line 53632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A05:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/T7;->A0C(Ljava/util/List;)V

    .line 53633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A06:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/T7;->A0C(Ljava/util/List;)V

    .line 53634
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A00:I

    .line 53635
    return-void
.end method

.method public final A0K()Z
    .locals 1

    .line 53636
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0L()Z
    .locals 1

    .line 53637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A06:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A05:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0M(I)Z
    .locals 1

    .line 53638
    iget v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A00:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A9D(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3f;
    .locals 1

    .line 53639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/2V;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/2V;->A2P()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3f;

    .line 53640
    .local p0, "op":Lcom/facebook/ads/redexgen/X/3f;
    if-nez v0, :cond_0

    .line 53641
    new-instance v0, Lcom/facebook/ads/redexgen/X/3f;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/3f;-><init>(IIILjava/lang/Object;)V

    .line 53642
    :goto_0
    return-object v0

    .line 53643
    :cond_0
    iput p1, v0, Lcom/facebook/ads/redexgen/X/3f;->A00:I

    .line 53644
    iput p2, v0, Lcom/facebook/ads/redexgen/X/3f;->A02:I

    .line 53645
    iput p3, v0, Lcom/facebook/ads/redexgen/X/3f;->A01:I

    .line 53646
    iput-object p4, v0, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final ACu(Lcom/facebook/ads/redexgen/X/3f;)V
    .locals 1

    .line 53647
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A07:Z

    if-nez v0, :cond_0

    .line 53648
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/3f;->A03:Ljava/lang/Object;

    .line 53649
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A01:Lcom/facebook/ads/redexgen/X/2V;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/2V;->AD2(Ljava/lang/Object;)Z

    .line 53650
    :cond_0
    return-void
.end method
