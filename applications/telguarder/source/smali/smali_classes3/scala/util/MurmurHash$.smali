.class public final Lscala/util/MurmurHash$;
.super Ljava/lang/Object;
.source "MurmurHash.scala"


# static fields
.field public static final MODULE$:Lscala/util/MurmurHash$;


# instance fields
.field private final finalMixer1:I

.field private final finalMixer2:I

.field private final hiddenMagicA:I

.field private final hiddenMagicB:I

.field private final hiddenMixerA:I

.field private final hiddenMixerB:I

.field private final seedArray:I

.field private final seedString:I

.field private final storedMagicA:[I

.field private final storedMagicB:[I

.field private final visibleMagic:I

.field private final visibleMixer:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/MurmurHash$;

    invoke-direct {v0}, Lscala/util/MurmurHash$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/MurmurHash$;->MODULE$:Lscala/util/MurmurHash$;

    .line 104
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    const v0, -0x6aabc879

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lscala/util/MurmurHash$$anonfun$1;

    invoke-direct {v1}, Lscala/util/MurmurHash$$anonfun$1;-><init>()V

    new-instance v2, Lscala/collection/Iterator$$anon$7;

    invoke-direct {v2, v0, v1}, Lscala/collection/Iterator$$anon$7;-><init>(Ljava/lang/Object;Lscala/Function1;)V

    const/16 v0, 0x17

    invoke-interface {v2, v0}, Lscala/collection/Iterator;->take(I)Lscala/collection/Iterator;

    move-result-object v1

    sget-object v2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v2}, Lscala/reflect/ClassTag$;->Int()Lscala/reflect/ClassTag;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/collection/Iterator;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 103
    iput-object v1, p0, Lscala/util/MurmurHash$;->storedMagicA:[I

    .line 108
    sget-object v1, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    const v1, 0x2ad7eb25

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lscala/util/MurmurHash$$anonfun$2;

    invoke-direct {v2}, Lscala/util/MurmurHash$$anonfun$2;-><init>()V

    new-instance v3, Lscala/collection/Iterator$$anon$7;

    invoke-direct {v3, v1, v2}, Lscala/collection/Iterator$$anon$7;-><init>(Ljava/lang/Object;Lscala/Function1;)V

    invoke-interface {v3, v0}, Lscala/collection/Iterator;->take(I)Lscala/collection/Iterator;

    move-result-object v0

    sget-object v1, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v1}, Lscala/reflect/ClassTag$;->Int()Lscala/reflect/ClassTag;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 107
    iput-object v0, p0, Lscala/util/MurmurHash$;->storedMagicB:[I

    return-void
.end method

.method private final finalMixer1()I
    .locals 1

    const v0, -0x7a143595

    return v0
.end method

.method private final finalMixer2()I
    .locals 1

    const v0, -0x3d4d51cb

    return v0
.end method

.method private final hiddenMagicA()I
    .locals 1

    const v0, -0x6aabc879

    return v0
.end method

.method private final hiddenMagicB()I
    .locals 1

    const v0, 0x2ad7eb25

    return v0
.end method

.method private final hiddenMixerA()I
    .locals 1

    const v0, 0x7b7d159c

    return v0
.end method

.method private final hiddenMixerB()I
    .locals 1

    const v0, 0x6bce6396    # 4.99018E26f

    return v0
.end method

.method private final seedArray()I
    .locals 1

    const v0, 0x3c074a61

    return v0
.end method

.method private final seedString()I
    .locals 1

    const v0, -0x835802e

    return v0
.end method

.method private final visibleMagic()I
    .locals 1

    const v0, -0x68e1ec85

    return v0
.end method

.method private final visibleMixer()I
    .locals 1

    const v0, 0x52dce729

    return v0
.end method


# virtual methods
.method public arrayHash(Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 149
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x3c074a61

    mul-int v0, v0, v1

    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->startHash(I)I

    move-result v0

    const v1, -0x6aabc879

    const v2, 0x2ad7eb25

    const/4 v3, 0x0

    .line 153
    :goto_0
    sget-object v4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v4, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 154
    sget-object v4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v5, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v5, p1, v3}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {p0, v0, v4, v1, v2}, Lscala/util/MurmurHash$;->extendHash(IIII)I

    move-result v0

    .line 155
    invoke-virtual {p0, v1}, Lscala/util/MurmurHash$;->nextMagicA(I)I

    move-result v1

    .line 156
    invoke-virtual {p0, v2}, Lscala/util/MurmurHash$;->nextMagicB(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->finalizeHash(I)I

    move-result p1

    return p1
.end method

.method public arrayHash$mBc$sp([B)I
    .locals 5

    .line 149
    array-length v0, p1

    const v1, 0x3c074a61

    mul-int v0, v0, v1

    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->startHash(I)I

    move-result v0

    const v1, -0x6aabc879

    const v2, 0x2ad7eb25

    const/4 v3, 0x0

    .line 153
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 154
    aget-byte v4, p1, v3

    invoke-virtual {p0, v0, v4, v1, v2}, Lscala/util/MurmurHash$;->extendHash(IIII)I

    move-result v0

    .line 155
    invoke-virtual {p0, v1}, Lscala/util/MurmurHash$;->nextMagicA(I)I

    move-result v1

    .line 156
    invoke-virtual {p0, v2}, Lscala/util/MurmurHash$;->nextMagicB(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->finalizeHash(I)I

    move-result p1

    return p1
.end method

.method public arrayHash$mCc$sp([C)I
    .locals 5

    .line 149
    array-length v0, p1

    const v1, 0x3c074a61

    mul-int v0, v0, v1

    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->startHash(I)I

    move-result v0

    const v1, -0x6aabc879

    const v2, 0x2ad7eb25

    const/4 v3, 0x0

    .line 153
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 154
    aget-char v4, p1, v3

    invoke-virtual {p0, v0, v4, v1, v2}, Lscala/util/MurmurHash$;->extendHash(IIII)I

    move-result v0

    .line 155
    invoke-virtual {p0, v1}, Lscala/util/MurmurHash$;->nextMagicA(I)I

    move-result v1

    .line 156
    invoke-virtual {p0, v2}, Lscala/util/MurmurHash$;->nextMagicB(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->finalizeHash(I)I

    move-result p1

    return p1
.end method

.method public arrayHash$mDc$sp([D)I
    .locals 7

    .line 149
    array-length v0, p1

    const v1, 0x3c074a61

    mul-int v0, v0, v1

    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->startHash(I)I

    move-result v0

    const v1, -0x6aabc879

    const v2, 0x2ad7eb25

    const/4 v3, 0x0

    .line 153
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 154
    sget-object v4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    aget-wide v5, p1, v3

    invoke-virtual {v4, v5, v6}, Lscala/runtime/ScalaRunTime$;->hash(D)I

    move-result v4

    invoke-virtual {p0, v0, v4, v1, v2}, Lscala/util/MurmurHash$;->extendHash(IIII)I

    move-result v0

    .line 155
    invoke-virtual {p0, v1}, Lscala/util/MurmurHash$;->nextMagicA(I)I

    move-result v1

    .line 156
    invoke-virtual {p0, v2}, Lscala/util/MurmurHash$;->nextMagicB(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->finalizeHash(I)I

    move-result p1

    return p1
.end method

.method public arrayHash$mFc$sp([F)I
    .locals 6

    .line 149
    array-length v0, p1

    const v1, 0x3c074a61

    mul-int v0, v0, v1

    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->startHash(I)I

    move-result v0

    const v1, -0x6aabc879

    const v2, 0x2ad7eb25

    const/4 v3, 0x0

    .line 153
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 154
    sget-object v4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    aget v5, p1, v3

    invoke-virtual {v4, v5}, Lscala/runtime/ScalaRunTime$;->hash(F)I

    move-result v4

    invoke-virtual {p0, v0, v4, v1, v2}, Lscala/util/MurmurHash$;->extendHash(IIII)I

    move-result v0

    .line 155
    invoke-virtual {p0, v1}, Lscala/util/MurmurHash$;->nextMagicA(I)I

    move-result v1

    .line 156
    invoke-virtual {p0, v2}, Lscala/util/MurmurHash$;->nextMagicB(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->finalizeHash(I)I

    move-result p1

    return p1
.end method

.method public arrayHash$mIc$sp([I)I
    .locals 5

    .line 149
    array-length v0, p1

    const v1, 0x3c074a61

    mul-int v0, v0, v1

    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->startHash(I)I

    move-result v0

    const v1, -0x6aabc879

    const v2, 0x2ad7eb25

    const/4 v3, 0x0

    .line 153
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 154
    aget v4, p1, v3

    invoke-virtual {p0, v0, v4, v1, v2}, Lscala/util/MurmurHash$;->extendHash(IIII)I

    move-result v0

    .line 155
    invoke-virtual {p0, v1}, Lscala/util/MurmurHash$;->nextMagicA(I)I

    move-result v1

    .line 156
    invoke-virtual {p0, v2}, Lscala/util/MurmurHash$;->nextMagicB(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->finalizeHash(I)I

    move-result p1

    return p1
.end method

.method public arrayHash$mJc$sp([J)I
    .locals 7

    .line 149
    array-length v0, p1

    const v1, 0x3c074a61

    mul-int v0, v0, v1

    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->startHash(I)I

    move-result v0

    const v1, -0x6aabc879

    const v2, 0x2ad7eb25

    const/4 v3, 0x0

    .line 153
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 154
    sget-object v4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    aget-wide v5, p1, v3

    invoke-virtual {v4, v5, v6}, Lscala/runtime/ScalaRunTime$;->hash(J)I

    move-result v4

    invoke-virtual {p0, v0, v4, v1, v2}, Lscala/util/MurmurHash$;->extendHash(IIII)I

    move-result v0

    .line 155
    invoke-virtual {p0, v1}, Lscala/util/MurmurHash$;->nextMagicA(I)I

    move-result v1

    .line 156
    invoke-virtual {p0, v2}, Lscala/util/MurmurHash$;->nextMagicB(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->finalizeHash(I)I

    move-result p1

    return p1
.end method

.method public arrayHash$mSc$sp([S)I
    .locals 5

    .line 149
    array-length v0, p1

    const v1, 0x3c074a61

    mul-int v0, v0, v1

    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->startHash(I)I

    move-result v0

    const v1, -0x6aabc879

    const v2, 0x2ad7eb25

    const/4 v3, 0x0

    .line 153
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 154
    aget-short v4, p1, v3

    invoke-virtual {p0, v0, v4, v1, v2}, Lscala/util/MurmurHash$;->extendHash(IIII)I

    move-result v0

    .line 155
    invoke-virtual {p0, v1}, Lscala/util/MurmurHash$;->nextMagicA(I)I

    move-result v1

    .line 156
    invoke-virtual {p0, v2}, Lscala/util/MurmurHash$;->nextMagicB(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->finalizeHash(I)I

    move-result p1

    return p1
.end method

.method public arrayHash$mVc$sp([Lscala/runtime/BoxedUnit;)I
    .locals 6

    .line 149
    array-length v0, p1

    const v1, 0x3c074a61

    mul-int v0, v0, v1

    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->startHash(I)I

    move-result v0

    const/4 v1, 0x0

    const v2, -0x6aabc879

    const v3, 0x2ad7eb25

    const/4 v4, 0x0

    .line 153
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    .line 154
    invoke-virtual {p0, v0, v1, v2, v3}, Lscala/util/MurmurHash$;->extendHash(IIII)I

    move-result v0

    .line 155
    invoke-virtual {p0, v2}, Lscala/util/MurmurHash$;->nextMagicA(I)I

    move-result v2

    .line 156
    invoke-virtual {p0, v3}, Lscala/util/MurmurHash$;->nextMagicB(I)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->finalizeHash(I)I

    move-result p1

    return p1
.end method

.method public arrayHash$mZc$sp([Z)I
    .locals 5

    .line 149
    array-length v0, p1

    const v1, 0x3c074a61

    mul-int v0, v0, v1

    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->startHash(I)I

    move-result v0

    const v1, -0x6aabc879

    const v2, 0x2ad7eb25

    const/4 v3, 0x0

    .line 153
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 154
    aget-boolean v4, p1, v3

    if-eqz v4, :cond_0

    const/16 v4, 0x4cf

    goto :goto_1

    :cond_0
    const/16 v4, 0x4d5

    :goto_1
    invoke-virtual {p0, v0, v4, v1, v2}, Lscala/util/MurmurHash$;->extendHash(IIII)I

    move-result v0

    .line 155
    invoke-virtual {p0, v1}, Lscala/util/MurmurHash$;->nextMagicA(I)I

    move-result v1

    .line 156
    invoke-virtual {p0, v2}, Lscala/util/MurmurHash$;->nextMagicB(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->finalizeHash(I)I

    move-result p1

    return p1
.end method

.method public extendHash(IIII)I
    .locals 0

    mul-int p2, p2, p3

    const/16 p3, 0xb

    .line 128
    invoke-static {p2, p3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p2

    mul-int p2, p2, p4

    xor-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x3

    const p2, 0x52dce729

    add-int/2addr p1, p2

    return p1
.end method

.method public finalizeHash(I)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x10

    xor-int/2addr p1, v0

    const v0, -0x7a143595

    mul-int p1, p1, v0

    ushr-int/lit8 v0, p1, 0xd

    xor-int/2addr p1, v0

    const v0, -0x3d4d51cb

    mul-int p1, p1, v0

    ushr-int/lit8 v0, p1, 0x10

    xor-int/2addr p1, v0

    return p1
.end method

.method public nextMagicA(I)I
    .locals 1

    mul-int/lit8 p1, p1, 0x5

    const v0, 0x7b7d159c

    add-int/2addr p1, v0

    return p1
.end method

.method public nextMagicB(I)I
    .locals 1

    mul-int/lit8 p1, p1, 0x5

    const v0, 0x6bce6396    # 4.99018E26f

    add-int/2addr p1, v0

    return p1
.end method

.method public startHash(I)I
    .locals 1

    const v0, -0x68e1ec85

    xor-int/2addr p1, v0

    return p1
.end method

.method public startMagicA()I
    .locals 1

    const v0, -0x6aabc879

    return v0
.end method

.method public startMagicB()I
    .locals 1

    const v0, 0x2ad7eb25

    return v0
.end method

.method public storedMagicA()[I
    .locals 1

    .line 103
    iget-object v0, p0, Lscala/util/MurmurHash$;->storedMagicA:[I

    return-object v0
.end method

.method public storedMagicB()[I
    .locals 1

    .line 107
    iget-object v0, p0, Lscala/util/MurmurHash$;->storedMagicB:[I

    return-object v0
.end method

.method public stringHash(Ljava/lang/String;)I
    .locals 6

    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, -0x835802e

    mul-int v0, v0, v1

    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->startHash(I)I

    move-result v0

    const v1, -0x6aabc879

    const v2, 0x2ad7eb25

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v3, 0x1

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 169
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    shl-int/lit8 v5, v5, 0x10

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/2addr v5, v4

    .line 170
    invoke-virtual {p0, v0, v5, v1, v2}, Lscala/util/MurmurHash$;->extendHash(IIII)I

    move-result v0

    .line 171
    invoke-virtual {p0, v1}, Lscala/util/MurmurHash$;->nextMagicA(I)I

    move-result v1

    .line 172
    invoke-virtual {p0, v2}, Lscala/util/MurmurHash$;->nextMagicB(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lscala/util/MurmurHash$;->extendHash(IIII)I

    move-result v0

    .line 176
    :cond_1
    invoke-virtual {p0, v0}, Lscala/util/MurmurHash$;->finalizeHash(I)I

    move-result p1

    return p1
.end method

.method public symmetricHash(Lscala/collection/TraversableOnce;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/TraversableOnce<",
            "TT;>;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 184
    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v1

    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v2

    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v3

    const/4 v4, 0x1

    .line 185
    invoke-static {v4}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v5

    .line 186
    invoke-interface {p1}, Lscala/collection/TraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object p1

    new-instance v6, Lscala/util/MurmurHash$$anonfun$symmetricHash$1;

    invoke-direct {v6, v1, v2, v3, v5}, Lscala/util/MurmurHash$$anonfun$symmetricHash$1;-><init>(Lscala/runtime/IntRef;Lscala/runtime/IntRef;Lscala/runtime/IntRef;Lscala/runtime/IntRef;)V

    invoke-interface {p1, v6}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 193
    iget p1, v3, Lscala/runtime/IntRef;->elem:I

    mul-int p2, p2, p1

    invoke-virtual {p0, p2}, Lscala/util/MurmurHash$;->startHash(I)I

    move-result p1

    .line 194
    iget p2, v1, Lscala/runtime/IntRef;->elem:I

    invoke-virtual {p0}, Lscala/util/MurmurHash$;->storedMagicA()[I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p0}, Lscala/util/MurmurHash$;->storedMagicB()[I

    move-result-object v3

    aget v0, v3, v0

    invoke-virtual {p0, p1, p2, v1, v0}, Lscala/util/MurmurHash$;->extendHash(IIII)I

    move-result p1

    .line 195
    iget p2, v2, Lscala/runtime/IntRef;->elem:I

    invoke-virtual {p0}, Lscala/util/MurmurHash$;->storedMagicA()[I

    move-result-object v0

    aget v0, v0, v4

    invoke-virtual {p0}, Lscala/util/MurmurHash$;->storedMagicB()[I

    move-result-object v1

    aget v1, v1, v4

    invoke-virtual {p0, p1, p2, v0, v1}, Lscala/util/MurmurHash$;->extendHash(IIII)I

    move-result p1

    .line 196
    iget p2, v5, Lscala/runtime/IntRef;->elem:I

    invoke-virtual {p0}, Lscala/util/MurmurHash$;->storedMagicA()[I

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p0}, Lscala/util/MurmurHash$;->storedMagicB()[I

    move-result-object v2

    aget v1, v2, v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lscala/util/MurmurHash$;->extendHash(IIII)I

    move-result p1

    .line 197
    invoke-virtual {p0, p1}, Lscala/util/MurmurHash$;->finalizeHash(I)I

    move-result p1

    return p1
.end method
