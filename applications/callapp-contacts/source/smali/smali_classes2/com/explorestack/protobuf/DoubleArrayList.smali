.class final Lcom/explorestack/protobuf/DoubleArrayList;
.super Lcom/explorestack/protobuf/AbstractProtobufList;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$DoubleList;
.implements Lcom/explorestack/protobuf/PrimitiveNonBoxingCollection;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractProtobufList<",
        "Ljava/lang/Double;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$DoubleList;",
        "Lcom/explorestack/protobuf/PrimitiveNonBoxingCollection;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/explorestack/protobuf/DoubleArrayList;


# instance fields
.field private array:[D

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/explorestack/protobuf/DoubleArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [D

    invoke-direct {v0, v2, v1}, Lcom/explorestack/protobuf/DoubleArrayList;-><init>([DI)V

    .line 51
    sput-object v0, Lcom/explorestack/protobuf/DoubleArrayList;->EMPTY_LIST:Lcom/explorestack/protobuf/DoubleArrayList;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DoubleArrayList;->makeImmutable()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, v0, v1}, Lcom/explorestack/protobuf/DoubleArrayList;-><init>([DI)V

    return-void
.end method

.method private constructor <init>([DI)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractProtobufList;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->array:[D

    .line 77
    iput p2, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    return-void
.end method

.method private addDouble(ID)V
    .locals 4

    .line 176
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DoubleArrayList;->ensureIsMutable()V

    if-ltz p1, :cond_1

    .line 177
    iget v0, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    if-gt p1, v0, :cond_1

    .line 181
    iget-object v1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->array:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 183
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 186
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 187
    new-array v0, v0, [D

    const/4 v2, 0x0

    .line 190
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iget-object v1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->array:[D

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iput-object v0, p0, Lcom/explorestack/protobuf/DoubleArrayList;->array:[D

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DoubleArrayList;->array:[D

    aput-wide p2, v0, p1

    .line 198
    iget p1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    .line 199
    iget p1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->modCount:I

    return-void

    .line 178
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DoubleArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static emptyList()Lcom/explorestack/protobuf/DoubleArrayList;
    .locals 1

    .line 55
    sget-object v0, Lcom/explorestack/protobuf/DoubleArrayList;->EMPTY_LIST:Lcom/explorestack/protobuf/DoubleArrayList;

    return-object v0
.end method

.method private ensureIndexInRange(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 269
    iget v0, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    if-ge p1, v0, :cond_0

    return-void

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DoubleArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .locals 2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final add(ILjava/lang/Double;)V
    .locals 2

    .line 165
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/explorestack/protobuf/DoubleArrayList;->addDouble(ID)V

    return-void
.end method

.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DoubleArrayList;->add(ILjava/lang/Double;)V

    return-void
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 206
    invoke-static {p1}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    instance-of v0, p1, Lcom/explorestack/protobuf/DoubleArrayList;

    if-nez v0, :cond_0

    .line 210
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 213
    :cond_0
    check-cast p1, Lcom/explorestack/protobuf/DoubleArrayList;

    .line 214
    iget v0, p1, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v2, 0x7fffffff

    .line 218
    iget v3, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3

    add-int/2addr v3, v0

    .line 225
    iget-object v0, p0, Lcom/explorestack/protobuf/DoubleArrayList;->array:[D

    array-length v2, v0

    if-le v3, v2, :cond_2

    .line 226
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DoubleArrayList;->array:[D

    .line 229
    :cond_2
    iget-object v0, p1, Lcom/explorestack/protobuf/DoubleArrayList;->array:[D

    iget-object v2, p0, Lcom/explorestack/protobuf/DoubleArrayList;->array:[D

    iget v4, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    iget p1, p1, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    iput v3, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    .line 231
    iget p1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->modCount:I

    return v0

    .line 221
    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final addDouble(D)V
    .locals 1

    .line 171
    iget v0, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    invoke-direct {p0, v0, p1, p2}, Lcom/explorestack/protobuf/DoubleArrayList;->addDouble(ID)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 97
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/DoubleArrayList;

    if-nez v1, :cond_1

    .line 98
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 100
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/DoubleArrayList;

    .line 101
    iget v1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    iget v2, p1, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 105
    :cond_2
    iget-object p1, p1, Lcom/explorestack/protobuf/DoubleArrayList;->array:[D

    const/4 v1, 0x0

    .line 106
    :goto_0
    iget v2, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    if-ge v1, v2, :cond_4

    .line 107
    iget-object v2, p0, Lcom/explorestack/protobuf/DoubleArrayList;->array:[D

    aget-wide v4, v2, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    aget-wide v6, p1, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final get(I)Ljava/lang/Double;
    .locals 2

    .line 135
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DoubleArrayList;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DoubleArrayList;->get(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final getDouble(I)D
    .locals 3

    .line 140
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    .line 141
    iget-object v0, p0, Lcom/explorestack/protobuf/DoubleArrayList;->array:[D

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final hashCode()I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    :goto_0
    iget v2, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    if-ge v1, v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/explorestack/protobuf/DoubleArrayList;->array:[D

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    .line 120
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final mutableCopyWithCapacity(I)Lcom/explorestack/protobuf/Internal$DoubleList;
    .locals 2

    .line 127
    iget v0, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    if-lt p1, v0, :cond_0

    .line 130
    new-instance v0, Lcom/explorestack/protobuf/DoubleArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->array:[D

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    iget v1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/DoubleArrayList;-><init>([DI)V

    return-object v0

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic mutableCopyWithCapacity(I)Lcom/explorestack/protobuf/Internal$ProtobufList;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DoubleArrayList;->mutableCopyWithCapacity(I)Lcom/explorestack/protobuf/Internal$DoubleList;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Double;
    .locals 5

    .line 251
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 252
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    .line 253
    iget-object v0, p0, Lcom/explorestack/protobuf/DoubleArrayList;->array:[D

    aget-wide v1, v0, p1

    .line 254
    iget v3, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_0

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 255
    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    :cond_0
    iget p1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    .line 258
    iget p1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->modCount:I

    .line 259
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DoubleArrayList;->remove(I)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5

    .line 237
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DoubleArrayList;->ensureIsMutable()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 238
    :goto_0
    iget v2, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    if-ge v1, v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/explorestack/protobuf/DoubleArrayList;->array:[D

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    iget-object p1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->array:[D

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iget p1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    .line 242
    iget p1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->modCount:I

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final removeRange(II)V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DoubleArrayList;->ensureIsMutable()V

    if-lt p2, p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/explorestack/protobuf/DoubleArrayList;->array:[D

    iget v1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget v0, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    .line 89
    iget p1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/explorestack/protobuf/DoubleArrayList;->modCount:I

    return-void

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final set(ILjava/lang/Double;)Ljava/lang/Double;
    .locals 2

    .line 151
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/explorestack/protobuf/DoubleArrayList;->setDouble(ID)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DoubleArrayList;->set(ILjava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final setDouble(ID)D
    .locals 3

    .line 156
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DoubleArrayList;->ensureIsMutable()V

    .line 157
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DoubleArrayList;->ensureIndexInRange(I)V

    .line 158
    iget-object v0, p0, Lcom/explorestack/protobuf/DoubleArrayList;->array:[D

    aget-wide v1, v0, p1

    .line 159
    aput-wide p2, v0, p1

    return-wide v1
.end method

.method public final size()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/explorestack/protobuf/DoubleArrayList;->size:I

    return v0
.end method
