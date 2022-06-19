.class final Lcom/explorestack/protobuf/BooleanArrayList;
.super Lcom/explorestack/protobuf/AbstractProtobufList;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/Internal$BooleanList;
.implements Lcom/explorestack/protobuf/PrimitiveNonBoxingCollection;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/AbstractProtobufList<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/explorestack/protobuf/Internal$BooleanList;",
        "Lcom/explorestack/protobuf/PrimitiveNonBoxingCollection;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/explorestack/protobuf/BooleanArrayList;


# instance fields
.field private array:[Z

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/explorestack/protobuf/BooleanArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Z

    invoke-direct {v0, v2, v1}, Lcom/explorestack/protobuf/BooleanArrayList;-><init>([ZI)V

    .line 51
    sput-object v0, Lcom/explorestack/protobuf/BooleanArrayList;->EMPTY_LIST:Lcom/explorestack/protobuf/BooleanArrayList;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/BooleanArrayList;->makeImmutable()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, v0, v1}, Lcom/explorestack/protobuf/BooleanArrayList;-><init>([ZI)V

    return-void
.end method

.method private constructor <init>([ZI)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractProtobufList;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->array:[Z

    .line 78
    iput p2, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    return-void
.end method

.method private addBoolean(IZ)V
    .locals 4

    .line 176
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BooleanArrayList;->ensureIsMutable()V

    if-ltz p1, :cond_1

    .line 177
    iget v0, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    if-gt p1, v0, :cond_1

    .line 181
    iget-object v1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->array:[Z

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
    new-array v0, v0, [Z

    const/4 v2, 0x0

    .line 190
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iget-object v1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->array:[Z

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iput-object v0, p0, Lcom/explorestack/protobuf/BooleanArrayList;->array:[Z

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/BooleanArrayList;->array:[Z

    aput-boolean p2, v0, p1

    .line 198
    iget p1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    .line 199
    iget p1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->modCount:I

    return-void

    .line 178
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/BooleanArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static emptyList()Lcom/explorestack/protobuf/BooleanArrayList;
    .locals 1

    .line 55
    sget-object v0, Lcom/explorestack/protobuf/BooleanArrayList;->EMPTY_LIST:Lcom/explorestack/protobuf/BooleanArrayList;

    return-object v0
.end method

.method private ensureIndexInRange(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 269
    iget v0, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    if-ge p1, v0, :cond_0

    return-void

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/BooleanArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

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

    iget p1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final add(ILjava/lang/Boolean;)V
    .locals 0

    .line 165
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/BooleanArrayList;->addBoolean(IZ)V

    return-void
.end method

.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/BooleanArrayList;->add(ILjava/lang/Boolean;)V

    return-void
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 206
    invoke-static {p1}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    instance-of v0, p1, Lcom/explorestack/protobuf/BooleanArrayList;

    if-nez v0, :cond_0

    .line 210
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 213
    :cond_0
    check-cast p1, Lcom/explorestack/protobuf/BooleanArrayList;

    .line 214
    iget v0, p1, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v2, 0x7fffffff

    .line 218
    iget v3, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3

    add-int/2addr v3, v0

    .line 225
    iget-object v0, p0, Lcom/explorestack/protobuf/BooleanArrayList;->array:[Z

    array-length v2, v0

    if-le v3, v2, :cond_2

    .line 226
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/BooleanArrayList;->array:[Z

    .line 229
    :cond_2
    iget-object v0, p1, Lcom/explorestack/protobuf/BooleanArrayList;->array:[Z

    iget-object v2, p0, Lcom/explorestack/protobuf/BooleanArrayList;->array:[Z

    iget v4, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    iget p1, p1, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    iput v3, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    .line 231
    iget p1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->modCount:I

    return v0

    .line 221
    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final addBoolean(Z)V
    .locals 1

    .line 171
    iget v0, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    invoke-direct {p0, v0, p1}, Lcom/explorestack/protobuf/BooleanArrayList;->addBoolean(IZ)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 98
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/BooleanArrayList;

    if-nez v1, :cond_1

    .line 99
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 101
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/BooleanArrayList;

    .line 102
    iget v1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    iget v2, p1, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 106
    :cond_2
    iget-object p1, p1, Lcom/explorestack/protobuf/BooleanArrayList;->array:[Z

    const/4 v1, 0x0

    .line 107
    :goto_0
    iget v2, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    if-ge v1, v2, :cond_4

    .line 108
    iget-object v2, p0, Lcom/explorestack/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v2, v2, v1

    aget-boolean v4, p1, v1

    if-eq v2, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final get(I)Ljava/lang/Boolean;
    .locals 0

    .line 135
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/BooleanArrayList;->getBoolean(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/BooleanArrayList;->get(I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final getBoolean(I)Z
    .locals 1

    .line 140
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/BooleanArrayList;->ensureIndexInRange(I)V

    .line 141
    iget-object v0, p0, Lcom/explorestack/protobuf/BooleanArrayList;->array:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    :goto_0
    iget v2, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 120
    iget-object v2, p0, Lcom/explorestack/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v2, v2, v1

    invoke-static {v2}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final mutableCopyWithCapacity(I)Lcom/explorestack/protobuf/Internal$BooleanList;
    .locals 2

    .line 127
    iget v0, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    if-lt p1, v0, :cond_0

    .line 130
    new-instance v0, Lcom/explorestack/protobuf/BooleanArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->array:[Z

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iget v1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/BooleanArrayList;-><init>([ZI)V

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
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/BooleanArrayList;->mutableCopyWithCapacity(I)Lcom/explorestack/protobuf/Internal$BooleanList;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Boolean;
    .locals 4

    .line 251
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 252
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/BooleanArrayList;->ensureIndexInRange(I)V

    .line 253
    iget-object v0, p0, Lcom/explorestack/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v1, v0, p1

    .line 254
    iget v2, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 255
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    :cond_0
    iget p1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    .line 258
    iget p1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->modCount:I

    .line 259
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/BooleanArrayList;->remove(I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4

    .line 237
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BooleanArrayList;->ensureIsMutable()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 238
    :goto_0
    iget v2, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    if-ge v1, v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/explorestack/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v2, v2, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    iget-object p1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->array:[Z

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iget p1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    .line 242
    iget p1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->modCount:I

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final removeRange(II)V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BooleanArrayList;->ensureIsMutable()V

    if-lt p2, p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/explorestack/protobuf/BooleanArrayList;->array:[Z

    iget v1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget v0, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    .line 90
    iget p1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/explorestack/protobuf/BooleanArrayList;->modCount:I

    return-void

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final set(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 151
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/BooleanArrayList;->setBoolean(IZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/BooleanArrayList;->set(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final setBoolean(IZ)Z
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/explorestack/protobuf/BooleanArrayList;->ensureIsMutable()V

    .line 157
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/BooleanArrayList;->ensureIndexInRange(I)V

    .line 158
    iget-object v0, p0, Lcom/explorestack/protobuf/BooleanArrayList;->array:[Z

    aget-boolean v1, v0, p1

    .line 159
    aput-boolean p2, v0, p1

    return v1
.end method

.method public final size()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/explorestack/protobuf/BooleanArrayList;->size:I

    return v0
.end method
