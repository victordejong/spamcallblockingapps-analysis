.class public Lscala/collection/mutable/ArrayBuilder$ofInt;
.super Lscala/collection/mutable/ArrayBuilder;
.source "ArrayBuilder.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ofInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/ArrayBuilder<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private capacity:I

.field private elems:[I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 316
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder;-><init>()V

    const/4 v0, 0x0

    .line 319
    iput v0, p0, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity:I

    .line 320
    iput v0, p0, Lscala/collection/mutable/ArrayBuilder$ofInt;->size:I

    return-void
.end method

.method private capacity()I
    .locals 1

    .line 319
    iget v0, p0, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity:I

    return v0
.end method

.method private capacity_$eq(I)V
    .locals 0

    .line 319
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity:I

    return-void
.end method

.method private elems()[I
    .locals 1

    .line 318
    iget-object v0, p0, Lscala/collection/mutable/ArrayBuilder$ofInt;->elems:[I

    return-object v0
.end method

.method private elems_$eq([I)V
    .locals 0

    .line 318
    iput-object p1, p0, Lscala/collection/mutable/ArrayBuilder$ofInt;->elems:[I

    return-void
.end method

.method private ensureSize(I)V
    .locals 1

    .line 338
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity()I

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity()I

    move-result v0

    if-nez v0, :cond_3

    .line 339
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x10

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity()I

    move-result v0

    goto :goto_1

    :goto_0
    if-ge v0, p1, :cond_2

    :goto_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 341
    :cond_2
    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->resize(I)V

    :cond_3
    return-void
.end method

.method private mkArray(I)[I
    .locals 6

    .line 323
    new-array p1, p1, [I

    .line 324
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->elems()[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v5

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p1
.end method

.method private resize(I)V
    .locals 1

    .line 329
    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofInt;->mkArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->elems_$eq([I)V

    .line 330
    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity_$eq(I)V

    return-void
.end method

.method private size()I
    .locals 1

    .line 320
    iget v0, p0, Lscala/collection/mutable/ArrayBuilder$ofInt;->size:I

    return v0
.end method

.method private size_$eq(I)V
    .locals 0

    .line 320
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofInt;->size:I

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 316
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofInt;->$plus$eq(I)Lscala/collection/mutable/ArrayBuilder$ofInt;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(I)Lscala/collection/mutable/ArrayBuilder$ofInt;
    .locals 2

    .line 346
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->ensureSize(I)V

    .line 347
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->elems()[I

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v1

    aput p1, v0, v1

    .line 348
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size_$eq(I)V

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 316
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofInt;->$plus$eq(I)Lscala/collection/mutable/ArrayBuilder$ofInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0

    .line 316
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofInt;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuilder$ofInt;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuilder$ofInt;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/ArrayBuilder$ofInt;"
        }
    .end annotation

    .line 352
    instance-of v0, p1, Lscala/collection/mutable/WrappedArray$ofInt;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/mutable/WrappedArray$ofInt;

    .line 354
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofInt;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->ensureSize(I)V

    .line 355
    sget-object v1, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofInt;->array()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->elems()[I

    move-result-object v4

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v5

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofInt;->length()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofInt;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size_$eq(I)V

    move-object p1, p0

    goto :goto_0

    .line 359
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/ArrayBuilder$ofInt;

    :goto_0
    return-object p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 363
    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size_$eq(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 371
    instance-of v0, p1, Lscala/collection/mutable/ArrayBuilder$ofInt;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/mutable/ArrayBuilder$ofInt;

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v0

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->elems()[I

    move-result-object v0

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofInt;->elems()[I

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 316
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->result()[I

    move-result-object v0

    return-object v0
.end method

.method public result()[I
    .locals 2

    .line 367
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->elems()[I

    move-result-object v0

    goto :goto_0

    .line 368
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->mkArray(I)[I

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public sizeHint(I)V
    .locals 1

    .line 334
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofInt;->resize(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ArrayBuilder.ofInt"

    return-object v0
.end method
