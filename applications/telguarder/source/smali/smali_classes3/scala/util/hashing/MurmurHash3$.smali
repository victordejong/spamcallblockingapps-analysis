.class public final Lscala/util/hashing/MurmurHash3$;
.super Lscala/util/hashing/MurmurHash3;
.source "MurmurHash3.scala"


# static fields
.field public static final MODULE$:Lscala/util/hashing/MurmurHash3$;


# instance fields
.field private final arraySeed:I

.field private final mapSeed:I

.field private final productSeed:I

.field private final seqSeed:I

.field private final setSeed:I

.field private final stringSeed:I

.field private final symmetricSeed:I

.field private final traversableSeed:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/hashing/MurmurHash3$;

    invoke-direct {v0}, Lscala/util/hashing/MurmurHash3$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 198
    invoke-direct {p0}, Lscala/util/hashing/MurmurHash3;-><init>()V

    sput-object p0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    const v0, 0x1443f

    .line 204
    iput v0, p0, Lscala/util/hashing/MurmurHash3$;->seqSeed:I

    const v0, 0x12d3c

    .line 205
    iput v0, p0, Lscala/util/hashing/MurmurHash3$;->mapSeed:I

    const v0, 0x14442

    .line 206
    iput v0, p0, Lscala/util/hashing/MurmurHash3$;->setSeed:I

    return-void
.end method


# virtual methods
.method public arrayHash(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    const v0, 0x3c074a61

    .line 208
    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->arrayHash(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public arrayHash$mBc$sp([B)I
    .locals 1

    const v0, 0x3c074a61

    .line 208
    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->arrayHash$mBc$sp([BI)I

    move-result p1

    return p1
.end method

.method public arrayHash$mCc$sp([C)I
    .locals 1

    const v0, 0x3c074a61

    .line 208
    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->arrayHash$mCc$sp([CI)I

    move-result p1

    return p1
.end method

.method public arrayHash$mDc$sp([D)I
    .locals 1

    const v0, 0x3c074a61

    .line 208
    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->arrayHash$mDc$sp([DI)I

    move-result p1

    return p1
.end method

.method public arrayHash$mFc$sp([F)I
    .locals 1

    const v0, 0x3c074a61

    .line 208
    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->arrayHash$mFc$sp([FI)I

    move-result p1

    return p1
.end method

.method public arrayHash$mIc$sp([I)I
    .locals 1

    const v0, 0x3c074a61

    .line 208
    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->arrayHash$mIc$sp([II)I

    move-result p1

    return p1
.end method

.method public arrayHash$mJc$sp([J)I
    .locals 1

    const v0, 0x3c074a61

    .line 208
    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->arrayHash$mJc$sp([JI)I

    move-result p1

    return p1
.end method

.method public arrayHash$mSc$sp([S)I
    .locals 1

    const v0, 0x3c074a61

    .line 208
    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->arrayHash$mSc$sp([SI)I

    move-result p1

    return p1
.end method

.method public arrayHash$mVc$sp([Lscala/runtime/BoxedUnit;)I
    .locals 1

    const v0, 0x3c074a61

    .line 208
    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->arrayHash$mVc$sp([Lscala/runtime/BoxedUnit;I)I

    move-result p1

    return p1
.end method

.method public arrayHash$mZc$sp([Z)I
    .locals 1

    const v0, 0x3c074a61

    .line 208
    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->arrayHash$mZc$sp([ZI)I

    move-result p1

    return p1
.end method

.method public arrayHashing()Lscala/util/hashing/MurmurHash3$ArrayHashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/util/hashing/MurmurHash3$ArrayHashing<",
            "TT;>;"
        }
    .end annotation

    .line 229
    new-instance v0, Lscala/util/hashing/MurmurHash3$ArrayHashing;

    invoke-direct {v0}, Lscala/util/hashing/MurmurHash3$ArrayHashing;-><init>()V

    return-object v0
.end method

.method public arrayHashing$mBc$sp()Lscala/util/hashing/MurmurHash3$ArrayHashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/hashing/MurmurHash3$ArrayHashing<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcB$sp;

    invoke-direct {v0}, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcB$sp;-><init>()V

    return-object v0
.end method

.method public arrayHashing$mCc$sp()Lscala/util/hashing/MurmurHash3$ArrayHashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/hashing/MurmurHash3$ArrayHashing<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcC$sp;

    invoke-direct {v0}, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcC$sp;-><init>()V

    return-object v0
.end method

.method public arrayHashing$mDc$sp()Lscala/util/hashing/MurmurHash3$ArrayHashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/hashing/MurmurHash3$ArrayHashing<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcD$sp;

    invoke-direct {v0}, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcD$sp;-><init>()V

    return-object v0
.end method

.method public arrayHashing$mFc$sp()Lscala/util/hashing/MurmurHash3$ArrayHashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/hashing/MurmurHash3$ArrayHashing<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcF$sp;

    invoke-direct {v0}, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcF$sp;-><init>()V

    return-object v0
.end method

.method public arrayHashing$mIc$sp()Lscala/util/hashing/MurmurHash3$ArrayHashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/hashing/MurmurHash3$ArrayHashing<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcI$sp;

    invoke-direct {v0}, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcI$sp;-><init>()V

    return-object v0
.end method

.method public arrayHashing$mJc$sp()Lscala/util/hashing/MurmurHash3$ArrayHashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/hashing/MurmurHash3$ArrayHashing<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcJ$sp;

    invoke-direct {v0}, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcJ$sp;-><init>()V

    return-object v0
.end method

.method public arrayHashing$mSc$sp()Lscala/util/hashing/MurmurHash3$ArrayHashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/hashing/MurmurHash3$ArrayHashing<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcS$sp;

    invoke-direct {v0}, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcS$sp;-><init>()V

    return-object v0
.end method

.method public arrayHashing$mVc$sp()Lscala/util/hashing/MurmurHash3$ArrayHashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/hashing/MurmurHash3$ArrayHashing<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcV$sp;

    invoke-direct {v0}, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcV$sp;-><init>()V

    return-object v0
.end method

.method public arrayHashing$mZc$sp()Lscala/util/hashing/MurmurHash3$ArrayHashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/hashing/MurmurHash3$ArrayHashing<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcZ$sp;

    invoke-direct {v0}, Lscala/util/hashing/MurmurHash3$ArrayHashing$mcZ$sp;-><init>()V

    return-object v0
.end method

.method public final arraySeed()I
    .locals 1

    const v0, 0x3c074a61

    return v0
.end method

.method public bytesHash([B)I
    .locals 1

    const v0, 0x3c074a61

    .line 209
    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->bytesHash([BI)I

    move-result p1

    return p1
.end method

.method public bytesHashing()Lscala/util/hashing/Hashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 231
    new-instance v0, Lscala/util/hashing/MurmurHash3$$anon$1;

    invoke-direct {v0}, Lscala/util/hashing/MurmurHash3$$anon$1;-><init>()V

    return-object v0
.end method

.method public mapHash(Lscala/collection/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Map<",
            "**>;)I"
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lscala/util/hashing/MurmurHash3$;->mapSeed()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->unorderedHash(Lscala/collection/TraversableOnce;I)I

    move-result p1

    return p1
.end method

.method public final mapSeed()I
    .locals 1

    .line 205
    iget v0, p0, Lscala/util/hashing/MurmurHash3$;->mapSeed:I

    return v0
.end method

.method public orderedHash(Lscala/collection/TraversableOnce;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const v0, -0x4a6d0852

    .line 210
    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->orderedHash(Lscala/collection/TraversableOnce;I)I

    move-result p1

    return p1
.end method

.method public orderedHashing()Lscala/util/hashing/Hashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 235
    new-instance v0, Lscala/util/hashing/MurmurHash3$$anon$2;

    invoke-direct {v0}, Lscala/util/hashing/MurmurHash3$$anon$2;-><init>()V

    return-object v0
.end method

.method public productHash(Lscala/Product;)I
    .locals 1

    const v0, -0x35014542    # -8346975.0f

    .line 211
    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->productHash(Lscala/Product;I)I

    move-result p1

    return p1
.end method

.method public productHashing()Lscala/util/hashing/Hashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 239
    new-instance v0, Lscala/util/hashing/MurmurHash3$$anon$3;

    invoke-direct {v0}, Lscala/util/hashing/MurmurHash3$$anon$3;-><init>()V

    return-object v0
.end method

.method public final productSeed()I
    .locals 1

    const v0, -0x35014542    # -8346975.0f

    return v0
.end method

.method public seqHash(Lscala/collection/Seq;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "*>;)I"
        }
    .end annotation

    .line 217
    instance-of v0, p1, Lscala/collection/immutable/List;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/immutable/List;

    invoke-virtual {p0}, Lscala/util/hashing/MurmurHash3$;->seqSeed()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->listHash(Lscala/collection/immutable/List;I)I

    move-result p1

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lscala/util/hashing/MurmurHash3$;->seqSeed()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->orderedHash(Lscala/collection/TraversableOnce;I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final seqSeed()I
    .locals 1

    .line 204
    iget v0, p0, Lscala/util/hashing/MurmurHash3$;->seqSeed:I

    return v0
.end method

.method public setHash(Lscala/collection/Set;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Set<",
            "*>;)I"
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lscala/util/hashing/MurmurHash3$;->setSeed()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->unorderedHash(Lscala/collection/TraversableOnce;I)I

    move-result p1

    return p1
.end method

.method public final setSeed()I
    .locals 1

    .line 206
    iget v0, p0, Lscala/util/hashing/MurmurHash3$;->setSeed:I

    return v0
.end method

.method public stringHash(Ljava/lang/String;)I
    .locals 1

    const v0, -0x835802e

    .line 212
    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->stringHash(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public stringHashing()Lscala/util/hashing/Hashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 243
    new-instance v0, Lscala/util/hashing/MurmurHash3$$anon$4;

    invoke-direct {v0}, Lscala/util/hashing/MurmurHash3$$anon$4;-><init>()V

    return-object v0
.end method

.method public final stringSeed()I
    .locals 1

    const v0, -0x835802e

    return v0
.end method

.method public final symmetricSeed()I
    .locals 1

    const v0, -0x4a6d0852

    return v0
.end method

.method public final traversableSeed()I
    .locals 1

    const v0, -0x18c574eb

    return v0
.end method

.method public unorderedHash(Lscala/collection/TraversableOnce;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const v0, -0x18c574eb

    .line 213
    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->unorderedHash(Lscala/collection/TraversableOnce;I)I

    move-result p1

    return p1
.end method

.method public unorderedHashing()Lscala/util/hashing/Hashing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 247
    new-instance v0, Lscala/util/hashing/MurmurHash3$$anon$5;

    invoke-direct {v0}, Lscala/util/hashing/MurmurHash3$$anon$5;-><init>()V

    return-object v0
.end method
