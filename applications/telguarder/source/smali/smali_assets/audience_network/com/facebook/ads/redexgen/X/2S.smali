.class public final Lcom/facebook/ads/redexgen/X/2S;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2U;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/2U;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2S;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2S;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2U;)V
    .locals 1

    .line 5328
    .local p1, "this":Lcom/facebook/ads/redexgen/X/2S;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.MapIterator;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2S;->A03:Lcom/facebook/ads/redexgen/X/2U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A02:Z

    .line 5330
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2U;->A05()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A00:I

    .line 5331
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:I

    .line 5332
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2S;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x29

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private final A01()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 5333
    .local v1, "this":Lcom/facebook/ads/redexgen/X/2S;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.MapIterator;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2S;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5334
    iget v1, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:I

    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:I

    .line 5335
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A02:Z

    .line 5336
    return-object p0

    .line 5337
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x3c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/2S;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x7bt
        0x1et
        0x22t
        0x23t
        0x39t
        0x6at
        0x29t
        0x25t
        0x24t
        0x3et
        0x2bt
        0x23t
        0x24t
        0x2ft
        0x38t
        0x6at
        0x2et
        0x25t
        0x2ft
        0x39t
        0x6at
        0x24t
        0x25t
        0x3et
        0x6at
        0x39t
        0x3ft
        0x3at
        0x3at
        0x25t
        0x38t
        0x3et
        0x6at
        0x38t
        0x2ft
        0x3et
        0x2bt
        0x23t
        0x24t
        0x23t
        0x24t
        0x2dt
        0x6at
        0x7t
        0x2bt
        0x3at
        0x64t
        0xft
        0x24t
        0x3et
        0x38t
        0x33t
        0x6at
        0x25t
        0x28t
        0x20t
        0x2ft
        0x29t
        0x3et
        0x39t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EcQijE7IVr04Rw61NGaoicInYj0Y5pIf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "PCDE4c"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BYuZqH1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OJoSfp"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QCWxhSjCiFvhWHavsiQeM5doYPZYmeMK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "d82pg0nhnPmaH2Vj0U0d9nQwwUZrcRQP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ixFFHsUoC5yCXRppT5dY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "J79m4yZ8T6gMUys2Mw9buLKZFKLQuXB5"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2S;->A05:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 5338
    .local p1, "this":Lcom/facebook/ads/redexgen/X/2S;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A02:Z

    if-eqz v0, :cond_2

    .line 5339
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 5340
    return v4

    .line 5341
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 5342
    .local p0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2S;->A03:Lcom/facebook/ads/redexgen/X/2U;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:I

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/2U;->A08(II)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/2N;->A05(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 5343
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2S;->A03:Lcom/facebook/ads/redexgen/X/2U;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:I

    invoke-virtual {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/2U;->A08(II)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/2N;->A05(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    .line 5344
    :cond_1
    return v4

    .line 5345
    .end local p0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_2
    const/4 v2, 0x1

    const/16 v1, 0x3b

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2S;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 5346
    .local v1, "this":Lcom/facebook/ads/redexgen/X/2S;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A02:Z

    if-eqz v0, :cond_0

    .line 5347
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2S;->A03:Lcom/facebook/ads/redexgen/X/2U;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:I

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2U;->A08(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5348
    :cond_0
    const/4 v2, 0x1

    const/16 v1, 0x3b

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2S;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 5349
    .local v1, "this":Lcom/facebook/ads/redexgen/X/2S;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A02:Z

    if-eqz v0, :cond_0

    .line 5350
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2S;->A03:Lcom/facebook/ads/redexgen/X/2U;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:I

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2U;->A08(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5351
    :cond_0
    const/4 v2, 0x1

    const/16 v1, 0x3b

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2S;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 5352
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2S;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.MapIterator;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A00:I

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .line 5353
    .local v3, "this":Lcom/facebook/ads/redexgen/X/2S;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A02:Z

    if-eqz v0, :cond_2

    .line 5354
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2S;->A03:Lcom/facebook/ads/redexgen/X/2U;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:I

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/2U;->A08(II)Ljava/lang/Object;

    move-result-object v3

    .line 5355
    .local p0, "key":Ljava/lang/Object;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2S;->A03:Lcom/facebook/ads/redexgen/X/2U;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:I

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2U;->A08(II)Ljava/lang/Object;

    move-result-object v1

    .line 5356
    .local v0, "value":Ljava/lang/Object;
    if-nez v3, :cond_1

    const/4 v0, 0x0

    .line 5357
    :goto_0
    if-nez v1, :cond_0

    :goto_1
    xor-int/2addr v4, v0

    .line 5358
    return v4

    .line 5359
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    .line 5360
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 5361
    .end local p0    # "key":Ljava/lang/Object;
    .end local v0    # "value":Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x1

    const/16 v1, 0x3b

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2S;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 5362
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2S;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.MapIterator;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2S;->A01()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 4

    .line 5363
    .local v1, "this":Lcom/facebook/ads/redexgen/X/2S;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A02:Z

    if-eqz v0, :cond_1

    .line 5364
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2S;->A03:Lcom/facebook/ads/redexgen/X/2U;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2U;->A0F(I)V

    .line 5365
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:I

    .line 5366
    iget v3, p0, Lcom/facebook/ads/redexgen/X/2S;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/2S;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2S;->A05:[Ljava/lang/String;

    const-string v1, "BDV7jip61nQIrhzKiydP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    add-int/lit8 v0, v3, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A00:I

    .line 5367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A02:Z

    .line 5368
    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5369
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 5370
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2S;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.MapIterator;"
    .local v1, "object":Ljava/lang/Object;, "TV;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A02:Z

    if-eqz v0, :cond_0

    .line 5371
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2S;->A03:Lcom/facebook/ads/redexgen/X/2U;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2S;->A01:I

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/2U;->A09(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5372
    :cond_0
    const/4 v2, 0x1

    const/16 v1, 0x3b

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2S;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 5373
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2S;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>.MapIterator;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2S;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2S;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2S;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
